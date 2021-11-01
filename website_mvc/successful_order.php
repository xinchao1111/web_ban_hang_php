<?php 
	include 'inc/header.php';
	// include 'inc/slider.php';
	
?>
<?php

	if(isset($_GET['orderid']) && $_GET['orderid']=='order'){
       $customer_id = Session::get('customer_id');
       $insertOrder = $ct->insertOrder($customer_id);
       $delCart = $ct->del_all_data_cart();
    }
    

 
?>
<style type="text/css">
	.box_left {
    width: 50%;
    border: 1px solid #666;
    float: left;
    padding: 4px;	

	}
 	.box_right {
    width: 47%;
    border: 1px solid #666;
    float: right;
    padding: 4px;
	}
	a.a_order {
    background: red;
    padding: 7px 20px;
    color: #fff;
    font-size: 21px;
}
</style>
<form action="" method="POST">
 <div class="main">
    <div class="content">
    	<div class="section group">
			<div class="heading">
	    		<h3>Offline Payment</h3>
	    	</div>
	    	<div class="clear"></div>
    		<div class="box_left">
    			<div class="cartpage">
			    	<?php
			    	 if(isset($update_quantity_cart)){
			    	 	echo $update_quantity_cart;
			    	 }
			    	?>
			    	<?php
			    	 if(isset($delcart)){
			    	 	echo $delcart;
			    	 }
			    	?>
						<table class="tblone">
							<tr>
								<th width="5%">ID</th>
								<th width="15%">Product Name</th>
								<th width="15%">Price</th>
								<th width="25%">Quantity</th>
								<th width="20%">Total Price</th>
							</tr>
							<?php
							$get_product_cart = $ct->get_product_cart();
							if($get_product_cart){
								$subtotal = 0;
								$qty = 0;
								$i = 0;
								while($result = $get_product_cart->fetch_assoc()){
									$i++;
							?>
							<tr>
								<td><?php echo $i; ?></td>
								<td><?php echo $result['productName'] ?></td>
								
								<td><?php echo $fm->format_currency($result['price'])." "."VNĐ" ?></td>
								<td>
									<?php echo $result['quantity'] ?>
								</td>
								<td><?php
								$total = $result['price'] * $result['quantity'];
								echo $fm->format_currency($total).' '.'VNĐ' ;
								 ?></td>
							</tr>
						<?php
							$subtotal += $total;
							$qty = $qty + $result['quantity'];
							}
						}
						?>
						</table>
						<?php
							$check_cart = $ct->check_cart();
								if($check_cart){
								?>
						<table style="float:right;text-align:left;margin:5px" width="40%">
							<tr>
								<th>Sub Total : </th>
								<td><?php 

									echo $fm->format_currency($subtotal).' '.'VNĐ' ;
									Session::set('sum',$subtotal);
									Session::set('qty',$qty);
								?></td>
							</tr>
							<tr>
								<th>VAT : </th>
								<td>10% (<?php echo $fm->format_currency($vat = $subtotal * 0.1).' '.'VNĐ'; ?>)</td>
							</tr>
							<tr>
								<th>Grand Total :</th>
								<td><?php 

								$vat = $subtotal * 0.1;
								$gtotal = $subtotal + $vat;
								echo $fm->format_currency($gtotal).' '.'VNĐ' ;
								?></td>
							</tr>

					   </table>
					  <?php
					}else{
						echo 'Bạn đã đặthàng thành công!';
					}
					  ?>
					</div>
    		</div>
 		</div>
 	</div>
	<center style="margin-top: 36px;"><a href="?orderid=order" class="a_order" >Order Now</a></center><br>
 </div>
</form>
<?php 
	include 'inc/footer.php';
	
 ?>
