<?php
declare(strict_types=1);require __DIR__.'/config.php';
$error='';
if($_SERVER['REQUEST_METHOD']==='POST'){
 verify_csrf();$cin=trim((string)($_POST['cin']??''));$password=(string)($_POST['password']??'');
 if(!preg_match('/^[0-9]{8}$/',$cin)||$password==='')$error='Vérifiez votre CIN et votre mot de passe.';
 else{
  $stmt=$db->prepare('SELECT id,password FROM client WHERE cin=?');$stmt->bind_param('s',$cin);$stmt->execute();$client=$stmt->get_result()->fetch_assoc();
  if(!$client)$error='Identifiants incorrects.';
  else{
   $stored=(string)$client['password'];$valid=password_verify($password,$stored)||hash_equals($stored,$password);
   if(!$valid)$error='Identifiants incorrects.';
   else{
    if(!password_verify($password,$stored)){
     $hash=password_hash($password,PASSWORD_DEFAULT);$up=$db->prepare('UPDATE client SET password=? WHERE id=?');$up->bind_param('si',$hash,$client['id']);$up->execute();
    }
    session_regenerate_id(true);$_SESSION['client_id']=(int)$client['id'];$_SESSION['client_cin']=$cin;header('Location: catalogue.php');exit;
   }
  }
 }
}
?><!doctype html><html lang="fr"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>Connexion — Fedi Auctions</title><link rel="stylesheet" href="fedi.css"></head><body><header><a class="brand" href="index.php"><span>F</span> Fedi Auctions</a><nav><a href="index.php">Accueil</a><a href="catalogue.php">Catalogue</a></nav></header><main class="content"><p class="eyebrow">Espace client</p><h1>Connexion</h1><?php if($error):?><p class="alert"><?=h($error)?></p><?php endif;?><form method="post"><input type="hidden" name="csrf" value="<?=h(csrf())?>"><label for="cin">CIN (8 chiffres)</label><input id="cin" name="cin" inputmode="numeric" pattern="[0-9]{8}" maxlength="8" required><label for="password">Mot de passe</label><input id="password" name="password" type="password" required><button class="button">Se connecter</button></form><p class="hint">Comptes de démonstration fournis dans le fichier SQL. Changez les mots de passe avant tout déploiement.</p></main><footer>Fedi Auctions</footer></body></html>