<?php include('header.php'); ?>
<body style="background-color:#203647;">
<?php include('navbar.php'); ?>
<div class="container">
	<h1 class="page-header text-center" style="background-color:#4DA8DA;color:white;">FEEDBACK</h1>
	<table class="table table-striped table-bordered">
		<thead style="background-color:#007CC7;color:white">
			<th>Purchase Id</th>
			<th>Customer</th>
			<th>Dish</th>
			<th>Feedback</th>
		</thead>
		<tbody  style="background-color:white;color:black">
			<?php 
				$sql="select purchaseid,customer,productname,feedback from purchase join product join feedback order by purchaseid desc";
				$query=$conn->query($sql);
				while($row=$query->fetch_array()){
					?>
					<tr>
						<td><?php echo date('M d, Y h:i A', strtotime($row['date_purchase'])) ?></td>
						<td><?php echo $row['customer']; ?></td>
						<td class="text-right">&#8369; <?php echo number_format($row['total'], 2); ?></td>
						<td><a href="#details<?php echo $row['purchaseid']; ?>" data-toggle="modal" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-search"></span> View </a>
							<?php include('sales_modal.php'); ?>
						</td>
					</tr>
					<?php
				}
			?>
		</tbody>
	</table>
</div>
</body>
</html>