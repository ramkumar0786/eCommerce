	<?php 
	include('../config.php');
	include('menu.php'); ?>
    
    <style>
	div.dataTables_length label {
    float: left;
    text-align: left;
    font-weight: normal;
}

div.dataTables_length select {
    width: 75px;
}

div.dataTables_filter label {
    float: right;
    font-weight: normal;
}

div.dataTables_filter input {
    width: 16em;
}

div.dataTables_info {
    padding-top: 8px;
}

div.dataTables_paginate {
    float: right;
    margin: 0;
}

div.dataTables_paginate ul.pagination {
    margin: 2px 0;
    white-space: nowrap;
}

table.dataTable,
table.dataTable td,
table.dataTable th {
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box;
}

table.dataTable {
    clear: both;
    margin-top: 6px !important;
    margin-bottom: 6px !important;
    max-width: none !important;
}

table.dataTable thead .sorting,
table.dataTable thead .sorting_asc,
table.dataTable thead .sorting_desc,
table.dataTable thead .sorting_asc_disabled,
table.dataTable thead .sorting_desc_disabled {
    cursor: pointer;
}

table.dataTable thead .sorting {
    background: url('../images/sort_both.png') no-repeat center right;
}

table.dataTable thead .sorting_asc {
    background: url('../images/sort_asc.png') no-repeat center right;
}

table.dataTable thead .sorting_desc {
    background: url('../images/sort_desc.png') no-repeat center right;
}

table.dataTable thead .sorting_asc_disabled {
    background: url('../images/sort_asc_disabled.png') no-repeat center right;
}

table.dataTable thead .sorting_desc_disabled {
    background: url('../images/sort_desc_disabled.png') no-repeat center right;
}

table.dataTable th:active {
    outline: none;
}

/* Scrolling */

div.dataTables_scrollHead table {
    margin-bottom: 0 !important;
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
}

div.dataTables_scrollHead table thead tr:last-child th:first-child,
div.dataTables_scrollHead table thead tr:last-child td:first-child {
    border-bottom-left-radius: 0 !important;
    border-bottom-right-radius: 0 !important;
}

div.dataTables_scrollBody table {
    margin-top: 0 !important;
    margin-bottom: 0 !important;
    border-top: none;
}

div.dataTables_scrollBody tbody tr:first-child th,
div.dataTables_scrollBody tbody tr:first-child td {
    border-top: none;
}

div.dataTables_scrollFoot table {
    margin-top: 0 !important;
    border-top: none;
}

/*
 * TableTools styles
 */

.table tbody tr.active td,
.table tbody tr.active th {
    color: white;
    background-color: #08C;
}

.table tbody tr.active:hover td,
.table tbody tr.active:hover th {
    background-color: #0075b0 !important;
}

.table tbody tr.active a {
    color: white;
}

.table-striped tbody tr.active:nth-child(odd) td,
.table-striped tbody tr.active:nth-child(odd) th {
    background-color: #017ebc;
}

table.DTTT_selectable tbody tr {
    cursor: pointer;
}

div.DTTT .btn {
    font-size: 12px;
    color: #333 !important;
}

div.DTTT .btn:hover {
    text-decoration: none !important;
}

ul.DTTT_dropdown.dropdown-menu {
    z-index: 2003;
}

ul.DTTT_dropdown.dropdown-menu a {
    color: #333 !important; /* needed only when demo_page.css is included */
}

ul.DTTT_dropdown.dropdown-menu li {
    position: relative;
}

ul.DTTT_dropdown.dropdown-menu li:hover a {
    color: white !important;
    background-color: #0088cc;
}

div.DTTT_collection_background {
    z-index: 2002;
}

/* TableTools information display */

div.DTTT_print_info.modal {
    height: 150px;
    margin-top: -75px;
    text-align: center;
}

div.DTTT_print_info h6 {
    margin: 1em;
    font-size: 28px;
    font-weight: normal;
    line-height: 28px;
}

div.DTTT_print_info p {
    font-size: 14px;
    line-height: 20px;
}

/*
 * FixedColumns styles
 */

div.DTFC_LeftHeadWrapper table,
div.DTFC_LeftFootWrapper table,
div.DTFC_RightHeadWrapper table,
div.DTFC_RightFootWrapper table,
table.DTFC_Cloned tr.even {
    background-color: white;
}

div.DTFC_RightHeadWrapper table,
div.DTFC_LeftHeadWrapper table {
    margin-bottom: 0 !important;
    border-top-right-radius: 0 !important;
    border-bottom-left-radius: 0 !important;
    border-bottom-right-radius: 0 !important;
}

div.DTFC_RightHeadWrapper table thead tr:last-child th:first-child,
div.DTFC_RightHeadWrapper table thead tr:last-child td:first-child,
div.DTFC_LeftHeadWrapper table thead tr:last-child th:first-child,
div.DTFC_LeftHeadWrapper table thead tr:last-child td:first-child {
    border-bottom-left-radius: 0 !important;
    border-bottom-right-radius: 0 !important;
}

div.DTFC_RightBodyWrapper table,
div.DTFC_LeftBodyWrapper table {
    margin-bottom: 0 !important;
    border-top: none;
}

div.DTFC_RightBodyWrapper tbody tr:first-child th,
div.DTFC_RightBodyWrapper tbody tr:first-child td,
div.DTFC_LeftBodyWrapper tbody tr:first-child th,
div.DTFC_LeftBodyWrapper tbody tr:first-child td {
    border-top: none;
}

div.DTFC_RightFootWrapper table,
div.DTFC_LeftFootWrapper table {
    border-top: none;
}
</style>
 	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		 
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">User Behaviour</h1>
				
			</div>
		</div><!--/.row-->
		
		 <!--/.row-->
		
		 <!--/.row-->		
		
		 <!--/.row-->
		
		 	<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Advanced Table</div>
					<div class="panel-body">
						    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Ip address</th>
                                            <th>Page Name</th>
                                          
                                          <th>Date & Time</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                      <?php 		$i=0;
			$iAryProductLista=$db->getRows("select * from user_move");
			foreach($iAryProductLista as $product_rows)
                                       {  $i=$i+1;
										  ?>
                                        <tr class="odd gradeX">
                                            <td><?php echo $product_rows['ip_address']; ?></td>
                                            <td><?php if($product_rows['product_id']!='0') { echo $db->getVal("select title from product where id ='".$product_rows['product_id']."'"); } else { echo $product_rows['page_name']; } ?></td>
                                           
                                           <td><?php echo $product_rows['datetime']; ?></td>
                                        </tr>
                                        
                                        
                                           <?php }   ?>  
                                    </tbody>
                                </table>
					</div>
				</div>
			</div>
		</div><!--/.row-->	
		 <!--/.row-->	<!--/.row-->
											
	</div>	<!--/.main-->
	  

	 <script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
 
	<script src="js/bootstrap-table.js"></script>
	 	
               <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
    </script>
</body>

</html>
