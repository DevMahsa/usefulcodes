<?php
#function func(){
$url = '';
$header = array("");
$user = '';
$password = '';
function Curl($url,$header,$info){
    $ch = curl_init();
    curl_setopt($ch,CURLOPT_URL, $url);
    curl_setopt($ch,CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch,CURLOPT_HTTPHEADER,$header);
    curl_setopt($ch,CURLOPT_POST, 1);
    curl_setopt($ch,CURLOPT_POSTFIELDS, $info);
    $response = curl_exec($ch);
    curl_close($ch);
    return json_decode($response);
}
$logininfo = '{"jsonrpc": "2.0","method":"user.login","params":{"user":"","password":""},"auth": null,"id":0}';
$result = Curl($url,$header,$logininfo);
echo $result;
?>
