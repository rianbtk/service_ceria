<?php  
$curl = curl_init();


curl_setopt_array($curl, array(
  CURLOPT_URL => get_api('url')."starter/cost",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "origin=$origin&destination=$destination&weight=$berat&courier=$courier",
  CURLOPT_HTTPHEADER => array(
    "content-type: application/x-www-form-urlencoded",
    "key: ".get_api('key')
  ),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
  $data = json_decode($response, true);
}
?>

<?php echo $data['rajaongkir']['origin_details']['city_name'];?> ke <?php echo $data['rajaongkir']['destination_details']['city_name'];?> @<?php echo $berat;?>gram Kurir : <?php echo strtoupper($courier); ?>

<?php
 for ($k=0; $k < count($data['rajaongkir']['results']); $k++) {
?>
	 <div title="<?php echo strtoupper($data['rajaongkir']['results'][$k]['name']);?>" style="padding:10px">
		 <table class="table table-striped">
			 <tr>
				 <th>No.</th>
				 <th>Pilih</th>
				 <th>Jenis Layanan</th>
				 <th>ETD</th>
				 <th>Tarif</th>
			 </tr>
			 <?php
			 for ($l=0; $l < count($data['rajaongkir']['results'][$k]['costs']); $l++) {			 
			 ?>
			 <tr>
				 <td><?php echo $l+1;?></td>
				 <td><input type="radio" required name="kurir" onclick="total_asli(this.value)" value="<?php echo $data['rajaongkir']['results'][$k]['costs'][$l]['service'];?>:<?php echo $data['rajaongkir']['results'][$k]['costs'][$l]['cost'][0]['etd'];?>:<?php echo ($data['rajaongkir']['results'][$k]['costs'][$l]['cost'][0]['value']);?>"></td>
				 <td>
					 <div style="font:bold 16px Arial"><?php echo $data['rajaongkir']['results'][$k]['costs'][$l]['service'];?></div>
					 <div style="font:normal 11px Arial"><?php echo $data['rajaongkir']['results'][$k]['costs'][$l]['description'];?></div>
				 </td>
				 <td align="center">&nbsp;<?php echo $data['rajaongkir']['results'][$k]['costs'][$l]['cost'][0]['etd'];?> Hari</td>
				 <td align="right">Rp.<?php echo number_format($data['rajaongkir']['results'][$k]['costs'][$l]['cost'][0]['value']);?></td>
			 </tr>
			 <?php
			 }
			 ?>
		 </table>
	 </div>
 <?php
 }
 ?>