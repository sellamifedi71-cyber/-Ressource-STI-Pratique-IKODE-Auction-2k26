<?php
$cnx=mysqli_connect("localhost","root","","ikode_auction.sql");
$m=0;
$c=$_POST["c"];
$p=$_POST["p"];
$ip=$_POST["ip"];
$sa=$_POST["so"];
$d=date('Y-m-d');
$req="select * from client where '$c'=cin and '$p'=password";
$res=mysqli_query($cnx,$req);
if(mysqli_num_rows($res)==0)
{
	echo("password or cin incorrect");
}
else{
	$req2="select * from produit where '$ip'=id";
	$res2=mysqli_query($cnx,$req2);
	if(mysqli_num_rows($res)==0)
	{
		echo("aucun produit ne correspond a ce produit");
		
	}
	else
	{$req3="select datedebut,datefin from produit where '$ip'=id";
	 $res3=mysqli_query($cnx,$req3);
	 $t=mysqli_fetch_array($res3);
		if($d>=$t[1]||$d<$t[0])
		{
			echo("lenchere est ferme");
		}
	 else{
		 $req4="select * from enchere where '$ip'=pid and '$c'=cid";
		 $res4=mysqli_query($cnx,$req4);
		 if(mysqli_num_rows($res4)>0)
		 {
			 $req5="select max(montant) from enchere";
			 $res5=mysqli_query($cnx,$req5);
			 $t1=mysqli_fetch_array($res5);
			 $m=$t[0]+$sa;}
		else{
			$req6="select prix_depart from produit where '$ip'=id";
			$res6=mysqli_query($cnx,$req6);
			$t2=mysqli_fetch_array($res6);
			$m=$t[0]+$sa;
			
		}
		 $req7="insert into echere value('','$c','$ip','$m','$d')";
		 $res7=mysqli_query($cnx,$req7);
		 if(mysqli_affected_rows($cnx)>0)
		 {
			 echo("ajout denchere avec succes");
		 }
			 
			 
		 
	 }
	}
	
}
?>