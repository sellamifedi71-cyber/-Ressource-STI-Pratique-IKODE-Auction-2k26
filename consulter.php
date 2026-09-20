<?php
$cnx=mysqli_connect("localhost","root","","ikode_auction.sql");
$t=$_POST["t"];
$req="select * from produit '$t'=type and id in (select e.id from produit p,enchere e where date_offre<date_debut or date_offre>=dat_fin) ";
$res=mysqli_query($cnx,$req);
if(mysqli_num_rows($res)=0)
{
	echo("aucun ecnchere disponible ");
}
else{
	echo("<table></th>
	<th>produit</th>
	<th>type</th>
	<th>description</th>
	<th>dernier propose</th>
	<tr>date fin<th>
	</tr></table>");
	$req2="select id,type,description,max(prixdepart),date_fin from produit";
	$res2=mysqli_query($cnx,$req2);
	if($t=mysqli_fetch_array($res2))
	{
		echo("	<table><td>'$t[0]'</td>
	<td>'$t[1]'</td>
	<td>'$t[2]'</td>
	<td>'$t[3]'</td>
	<td>'$t[4]'</td>
	<td>'$t[5]'</td>
	</table>");
	
	}
	$req2=$req2."enchere e where e.id=p.id order by max(montant),prix_depart desc";
	$res3=mysqli_query($cnx,$req2);
	if($t1=mysqli_fetch_array($res3))
	{
		echo("	<td>'$t[0]'</td>
	<td>'$t[1]'</td>
	<td>'$t[2]'</td>
	<td>'$t[3]'</td>
	<td>'$t[4]'</td>
	<td>'$t[5]'</td>
	</table>");
	
	}
	
	
	
	}
?>

