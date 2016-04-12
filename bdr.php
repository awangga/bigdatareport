<?php
$servername = "localhost";
$username = "iqromedi";
$password = "dPf7KBzZF";
$dbname = "iqromedi";
// Create connection
$conn = new mysqli($servername, $username, $password,$dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
$cur_date_start = date('Y-m')."-01"." 00:00:00";
$cur_date_end = date('Y-m')."-31"." 23:59:59";
$bulan_ayeuna = "AND call_start_time BETWEEN '".$cur_date_start."' AND '".$cur_date_end."' ";
$start_date = $_GET["s"]." 00:00:00";
$end_date = $_GET["e"]." 23:59:59";
//$status = "SendingOKNoReport";
$status = $_GET["stat"];
$sql = "SELECT SendingDateTime, DestinationNumber, TextDecoded, Status FROM sentitems WHERE Status = '".$status."' AND SendingDateTime BETWEEN '".$start_date."' AND '".$end_date."' ";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
	$fp = fopen('report.csv', 'w');
    while($row = $result->fetch_assoc()) {
		fputcsv($fp, $row);
        //echo "Tanggal: " . $row["SendingDateTime"]. " - Tujuan dan Pesan: " . $row["DestinationNumber"]. " " . $row["TextDecoded"]. "<br>";
    }
} else {
    echo "0 results";
	echo $sql;
}
fclose($fp);
$conn->close();
?>