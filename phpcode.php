<?php
include('db_connection.php');
$worker_id="";
$worker_name="";
$worker_age="";
$worker_department="";
$worker_position="";
$salaryslipno="";
if(isset($_POST['save'])){
	//echo "mariam"; exit;
	$worker_id = $_POST['worker_id'];
	$worker_name = $_POST['worker_name'];
	$worker_age = $_POST['worker_age'];
	$worker_department=$_POST['worker_department'];
	$worker_position=$_POST['worker_position'];
	$salaryslipno=$_POST['salaryslipno'];
	$query="INSERT INTO workers(worker_id, worker_name, worker_age, worker_department, worker_position, salaryslipno) 
	VALUES('$worker_id','$worker_name' ,'$worker_age' ,'$worker_department','$worker_position','$salaryslipno')";
	//exit;
	//mysqli_query($conn,query:"INSERT INTO student_info(student_id, student_name, student_address) 
	//VALUES('$student_id', '$student_name', '$student_add')");
	$yes=mysqli_query($conn, $query);
	//echo"saved";
	if (!$yes) 
{ 
die("Connection failed: " . mysqli_connect_error()); 
} 
echo "Connected successfully"; 

}