<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>online apartment sale system</title>
  <link rel="stylesheet" href="../style/home.css">
</head>

<body>
<fieldset>

  <form method="post" action="insert.php" >

    <label for="aid">agent_id: </label><input type="text" name="aid"><br>
    <label for="uid">user_id:</label><input type="text" name="uid"><br>
    <label for="anic">agent_NIC:</label><input type="text" name="anic"><br>
    <label for="anum">agent_phone_number:</label><input type="text" name="anum"><br>
    <label for="aagency">agent_agency:</label><input type="text" name="aagency"><br>
    <label for="ayear">agent_experience_year:</label><input type="text" name="ayear"><br>
    <label for="acount">success_project_count:</label><input type="text" name="acount"><br>
    <label for="ccount">customer_count:</label><input type="text" name="ccount"><br>
    <label for="aimg">agent_cover_img:</label><input type="text" name="aimg"><br>
    <label for="sdescription">agent_short_description:</label><input type="text" name="sdescription"><br>
    <label for="adescription">agent_description</label>input type="text" name="adescription"><br>
    <label for="astatus">agent_status:</label><input type="text" name="astatus"><br>

    Request Date:<input type="text" name="rdate"><br>

    <button type="submit">Approve</button>
    <button type="submit">Delete</button><br><br>


  </form>
</fieldset>

</body>
</html>
