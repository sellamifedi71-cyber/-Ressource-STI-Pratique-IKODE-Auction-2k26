<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Consulter Products</title>
  <link rel="stylesheet" href="./css/myStyles.css">
  <script src="action.js"></script>
</head>
<body onLoad="gen()" onError="gen()">
  <form>
    <fieldset>
      <legend>Consulter Products</legend>
		

      <label for="type">Type :</label>
      <select name="select_option">
        <option>-- Choisir --</option>
		  <?php
		  $cnx=mysqli_connect("localhost","root","","ikode_auction.sql");
		  $req="select distinct*[type] from produit";
		  $res=mysqli_query($cnx,$req);
		  while($t=mysqli_fetch_array($res))
		  {
			  echo("<option value='$t[0]'>'$t[0]'</option>");
		  }
		  ?>
      </select>
      <br>
      <br>
      <label id="qs">X est Premier ?</label>
      <br>
      <input type="radio" id="vrai" name="premier" value="vrai">
      <label for="vrai"> Vrai</label>
      <input type="radio" id="faux" name="premier" value="faux">
      <label for="faux"> Faux</label>
      <br>

      <input type="submit" value="Afficher">
      <input type="reset" value="Annuler">
    </fieldset>
  </form>
</body>
</html>