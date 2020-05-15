<?php

$curl = curl_init();

curl_setopt_array($curl, array(
    CURLOPT_URL => get_api('url')."starter/province",
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => "",
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 30,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => "GET",
    CURLOPT_HTTPHEADER => array(
    "key: ".get_api('key')
  ),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) 
{
  
}
else 
{
  $data = json_decode($response, true);
  //echo json_encode($k['rajaongkir']['results']);

  
  for ($i=0; $i < count($data['rajaongkir']['results']); $i++){
  

    echo "<option value='".$data['rajaongkir']['results'][$i]['province_id']."'>".$data['rajaongkir']['results'][$i]['province']."</option>";
  
  }

}

?>