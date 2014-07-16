<?php
$connect = mysql_pconnect('localhost','root',null) or
              die(mysql_error());
  $db = mysql_select_db('moh_sptkp',$connect) or
          die(mysql_error());
          
  $state_id = $_GET['select_id'];
  
  $query = mysql_query("SELECT * FROM districts WHERE state_id = '$state_id' ORDER BY description ASC");
  $i = 0;
  $districts = array();
  while ($result = mysql_fetch_array($query))
  {
    $districts[$i] = array('id' => $result['id'], 'description' => $result['description']);
    $i++;
  }
  // echo "SELECT * FROM districts WHERE state_id = '$state_id' ORDER BY description ASC";
  // print_r($districts);
  echo json_encode($districts);
?>