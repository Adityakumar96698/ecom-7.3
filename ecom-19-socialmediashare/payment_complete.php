<?php
require('connection.inc.php');
require('functions.inc.php');

echo '<b>Transaction In Process, Please do not reload</b>';
if(isset($_GET['payment_id']) && isset($_GET['payment_status']) && isset($_GET['payment_request_id'])) 
{
	$payment_id = $_GET['payment_id'];
	$payment_status = $_GET['payment_status'];
	$payment_request_id = $_GET['payment_request_id'];

	$res=mysqli_query($con,"select `order`.*, users.name from `order`, users where `order`.txnid='$payment_request_id' and `order`.user_id='users_id");

	if(mysqli_num_rows($res)>0)
	{	
		$row = mysqli_fetch_assoc($res);
		$oid = $row['id'];
		$user_id=$row['user_id'];

		$_SESSION['USER_LOGIN']='yes';
		$_SESSION['USER_ID']=$user_id;
		$_SESSION['USER_NAME']=$row['name'];


		if($payment_status == 'Credit')
		{
			mysqli_query($con,"update `order` set payment_status='Complete', mihpayid='$payment_id' where txnid='$payment_request_id'");
			sentInvoice($con,$oid);
			?>
			<script>
				window.location.href='thank_you.php';
			</script>
			<?php
				
		}
		else
		{
			mysqli_query($con,"update `order` set payment_status='fail', mihpayid='$payment_id' where txnid='$payment_request_id'");
			sentInvoice($con,$order_detail['id']);

			?>
			<script>
				window.location.href='payment_fail.php';
			</script>
			<?php

		}

	}
	else
	{
		?>
			<script>
				window.location.href='index.php';
			</script>
		<?php
		
	}



}
 


?>