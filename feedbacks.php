<?php include('header.php'); ?>
<body style="background-color:#203647;">
<?php include('navbar.php'); ?>
<div class="container">
	<h1 class="page-header text-center" style="background-color:#007CC7;color:#2f3640;">FEEDBACKS</h1>
	<table class="table table-striped table-bordered">
		<thead style="background-color:#4DA8DA;color:white">
			<th>PurchaseID</th>
			<th>Customer</th>
			<th>Email</th>
			<th>Dish</th>
			<th>Phone</th>
			<th>Message</th>
			<th>Datetime</th>
		</thead>
		<tbody  style="background-color:white;color:black">
			<?php 
				$sql="select * from feedback order by datetime";
				$query=$conn->query($sql);
				while($row=$query->fetch_array()){
					?>
					<tr>
						<td><?php echo $row['purchaseid']; ?></td>
						<td><?php echo $row['customer']; ?></td>
						<td><?php echo $row['email']; ?></td>
						<td><?php echo $row['dish']; ?></td>
						<td><?php echo $row['phone']; ?></td>
						<td><?php echo $row['message']; ?></td>
						<td><?php echo date('M d, Y h:i A', strtotime($row['datetime'])) ?></td>
					</tr>
					<?php
				}
			?>
		</tbody>
	</table>
</div>
</body>
</html>