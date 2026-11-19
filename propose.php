<?php
declare(strict_types=1);require __DIR__.'/config.php';
if(empty($_SESSION['client_id'])){header('Location: login.php');exit;}
$error='';$success=false;$productId=filter_var($_GET['id']??$_POST['product_id']??null,FILTER_VALIDATE_INT);
if($_SERVER['REQUEST_METHOD']==='POST'){
 verify_csrf();$productId=filter_var($_POST['product_id']??null,FILTER_VALIDATE_INT);$increment=filter_var($_POST['increment']??null,FILTER_VALIDATE_INT);
 if(!$productId||$increment===false||$increment<1||$increment>10000000)$error='Le produit ou le montant de l’offre est invalide.';
 else{
  $db->begin_transaction();
  try{
   $pstmt=$db->prepare('SELECT id,prix_depart,date_debut,date_fin FROM produit WHERE id=? FOR UPDATE');$pstmt->bind_param('i',$productId);$pstmt->execute();$product=$pstmt->get_result()->fetch_assoc();
   if(!$product||date('Y-m-d')<$product['date_debut']||date('Y-m-d')>$product['date_fin']){$error='Cette enchère n’existe pas ou n’est pas ouverte.';$db->rollback();}
   else{
    $max=$db->prepare('SELECT MAX(montant) AS highest FROM enchere WHERE pid=?');$max->bind_param('i',$productId);$max->execute();$highest=$max->get_result()->fetch_assoc()['highest'];
    $current=$highest===null?(float)$product['prix_depart']:(float)$highest;$offer=$current+$increment;
    $ins=$db->prepare('INSERT INTO enchere (cid,pid,montant,date_offre) VALUES (?,?,?,NOW())');$clientId=(int)$_SESSION['client_id'];$ins->bind_param('iid',$clientId,$productId,$offer);$ins->execute();$db->commit();$success=true;
   }
  }catch(Throwable $e){$db->rollback();throw $e;}
 }
}
$product=null;if($productId){$s=$db->prepare('SELECT p.*,COALESCE(MAX(e.montant),p.prix_depart) AS current_bid FROM produit p LEFT JOIN enchere e ON e.pid=p.id WHERE p.id=? GROUP BY p.id');$s->bind_param('i',$productId);$s->execute();$product=$s->get_result()->fetch_assoc();}
?><!doctype html><html lang="fr"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>Faire une offre — Fedi Auctions</title><link rel="stylesheet" href="fedi.css"></head><body><header><a class="brand" href="index.php"><span>F</span> Fedi Auctions</a><nav><a href="catalogue.php">Catalogue</a><a href="index.php">Accueil</a></nav></header><main class="content"><?php if(!$product):?><p class="alert">Choisissez un produit dans le catalogue.</p><a class="button" href="catalogue.php">Retour au catalogue</a><?php else:?><p class="eyebrow">Votre enchère</p><h1><?=h($product['nom'])?></h1><p class="lead">Offre actuelle : <strong><?=number_format((float)$product['current_bid'],0,',',' ')?> TND</strong></p><?php if($error):?><p class="alert"><?=h($error)?></p><?php endif;?><?php if($success):?><p class="success">Votre offre a été enregistrée. Consultez le catalogue pour voir le nouveau montant.</p><?php endif;?><form method="post"><input type="hidden" name="csrf" value="<?=h(csrf())?>"><input type="hidden" name="product_id" value="<?=(int)$product['id']?>"><label for="increment">Montant à ajouter (TND)</label><input id="increment" name="increment" type="number" min="1" max="10000000" step="1" required><button class="button">Confirmer mon offre</button></form><?php endif;?></main><footer>Fedi Auctions</footer></body></html>