<?php include('../config.php'); 
include('inc.session.php'); 
$PageTitle="FAQS";
$FileName = 'faqs.php';
$validate=new Validation();
if($_SESSION['success']!="")
{
$stat['success']=$_SESSION['success'];
unset($_SESSION['success']);
}
if(isset($_POST['submit']))
{ 
$validate->addRule($_POST['languages'],'','languages',true);

if($validate->validate() && count($stat)==0)
{


$aryData=array(	
			   
			   'language_id'     	 	         			    =>	$_POST['languages'],
			   'question'     	 	         			        =>	$_POST['question'],
			   'answer'     	 	         			        =>	$_POST['answer'],
	           'status'     	 	         		            =>	$_POST['status'],												
				 );  
																																												$flgIn1 = $db->insertAry("faqs",$aryData);
				//echo $db->getLastQuery();   
				//exit;																											
																																												$_SESSION['success']="Submited Successfully";
redirect($iClassName.$FileName);
unset($_POST);
}
else {
$stat['error'] = $validate->errors();
}
} 
elseif(isset($_POST['update']))
{ 
if($validate->validate() && count($stat)==0)
{

			$aryData=array(	
				'language_id'     	 	         			    =>	$_POST['languages'],
			   'question'     	 	         			        =>	$_POST['question'],
			   'answer'     	 	         			        =>	$_POST['answer'],
	           'status'     	 	         		            =>	$_POST['status'],	
							);  
																																							
				$flgIn = $db->updateAry("faqs", $aryData , "where id='".$_GET['id']."'");
				//echo $db->getLastQuery();   
				//exit;
				$_SESSION['success']="Update Successfully";
				unset($_POST);
				redirect($iClassName.$FileName);
				}
			else 
			{
				$stat['error'] = $validate->errors();
						}
						 }
					elseif(($_REQUEST['action']=='delete'))
						{
					 $flgIn1 = $db->delete("faqs","where id='".$_GET['id']."'");			
					$_SESSION['success'] = 'Deleted Successfully';
					redirect($iClassName.$FileName);
					} 
					?>
																																							
																																							<!DOCTYPE html>
<html>
<head>
<?php include('inc.meta.php'); ?>
</head>
<body class="fixed-left">
<div id="wrapper">
<?php include('inc.header.php'); ?> 
<?php include('inc.sideleft.php'); ?>
<div class="content-page">
<!-- Start content -->
<div class="content">
<div class="container">
<!-- Page-Title -->
<div class="row">
<div class="col-sm-12">
<h4 class="page-title"><?php echo $PageTitle; ?></h4>
<ol class="breadcrumb">
<li>
<a href="<?php echo $iClassName; ?>">Home</a>
</li>
<li class="active">
<?php echo $PageTitle; ?>
</li>
</ol>
</div>
</div>
<!-- Basic Form Wizard -->
<div class="row">
<div class="col-md-12">
<div class="card-box aplhanewclass">
<div class="row">
<div class="col-md-9">
<?php echo msg($stat); ?>
</div>
<div class="col-md-3">
<a href="<?php echo $iClassName.$FileName; ?>?action=add"  class="btn btn-default" style="float:right">Add New Record</a> 
</div>
</div>
</div>
<?php if($_GET['action']=='add') { ?>
<div class="card-box">
<form role="form" action="" method="post" enctype="multipart/form-data">
<div>
<section>
<div class="form-group clearfix">
<label class="col-lg-2 control-label " for="userName">languages </label>
<div class="col-lg-10">
<select  class="form-control required" name="languages" id="userName">
<option value="">Select Language</option>
									 <?php
			$aryList=$db->getRows("select * from languages where  status='1'  order by id desc");
								foreach($aryList as $iList)
									{  ?>
				<option value="<?php echo $iList['id']; ?>" <?php  if($_POST['languages']==$iList['id']) { echo "selected"; }  ?>><?php echo $iList['language']; ?></option>
								<?php } ?>																										
								</select>																																								</div>
</div>																																						
<div class="form-group clearfix">
<label class="col-lg-2 control-label " for="userName">Question </label>
<div class="col-lg-10">
<textarea type="text" class="form-control required" id="userName" name="question"><?php echo $_POST['question']; ?></textarea>
</div>
</div>     
<div class="form-group clearfix">
<label class="col-lg-2 control-label " for="userName">Answer </label>
<div class="col-lg-10">
<input type="text" class="form-control required" id="userName" name="answer" value="<?php echo $_POST['answer']; ?>">
</div>
</div>
<div class="form-group clearfix">
<label class="col-lg-2 control-label " for="confirm">Status </label>
<div class="col-lg-10">
<select  class="required form-control" name="status">
<option value="1" <?php if($_POST['status']=='1') { echo "selected"; } ?>>Active</option>
<option value="0" <?php if($_POST['status']=='0') { echo "selected"; } ?>>Inactive</option>
</select>
</div>
</div>
<button type="submit" name="submit" class="btn btn-default">Submit</button>
<a  href="<?php echo $iClassName.$FileName; ?>"  class="btn btn-default" >Back</a>  
</section>
</div>
</form> 
</div>
<?php } elseif($_GET['action']=='edit') { 
			$aryDetail=$db->getRow("select * from  faqs where id='".$_GET['id']."'");
					?>
																																													   
<div class="card-box">
<form role="form" action="" method="post" enctype="multipart/form-data">
<div>
<section>
<div class="form-group clearfix">
<label class="col-lg-2 control-label " for="userName">languages </label>
<div class="col-lg-10">
<select  class="form-control required" name="languages" id="userName">
		 <?php
		$aryList=$db->getRows("select * from languages where  status='1'  order by id desc");
							foreach($aryList as $iList)
									{
									?>
	<option value="<?php echo $iList['id']; ?>" <?php  if($aryDetail['language_id']==$iList['id']) { echo "selected"; }  ?>><?php echo $iList['language']; ?></option>
								<?php } ?>																								
								</select>
								</div>
								</div>																												


<div class="form-group clearfix">
<label class="col-lg-2 control-label " for="userName">Question </label>
<div class="col-lg-10">
<textarea type="text" class="form-control required " id="userName" name="question"><?php echo $aryDetail['question']; ?></textarea>
</div>
</div>     
									
<div class="form-group clearfix">
<label class="col-lg-2 control-label " for="userName">Answer </label>
<div class="col-lg-10">
<input type="text" class="form-control required" id="userName" name="answer" value="<?php echo $aryDetail['answer']; ?>">
</div>
</div>
		

<div class="form-group clearfix">
<label class="col-lg-2 control-label " for="confirm">Status </label>
<div class="col-lg-10">
<select  class="required form-control" name="status">
<option value="1" <?php if($aryDetail['status']=='1') { echo "selected"; } ?>>Active</option>
<option value="0" <?php if($aryDetail['status']=='0') { echo "selected"; } ?>>Inactive</option>
</select>
</div>
</div>
<button type="submit" name="update" class="btn btn-default">Submit</button>
<a  href="<?php echo $iClassName.$FileName; ?>"  class="btn btn-default" >Back</a>      
</section>
</div>
</form> 
</div>
 <?php  } 
	elseif($_GET['action']=='view') { 
	$GetEmailId=$db->getRow("select * from  faqs where id='".$_GET['id']."'");
	?>
	<div class="card-box">
	<section>
	<div class="form-group clearfix">
	<label class="col-lg-2 control-label " for="userName">Language :</label>
	<?php if($GetEmailId['language_id']=='1'){echo "English";}if($GetEmailId['language_id']=='2'){echo " Russian";} ?>      
	</div> 																																						
<div class="form-group clearfix">
<label class="col-lg-2 control-label " for="userName">Question :</label>
<?php echo $GetEmailId['question']; ?>      
</div>
<div class="form-group clearfix">
<label class="col-lg-2 control-label " for="userName">Answer :</label>
<?php echo $GetEmailId['answer']; ?>     
</div>
																																													<div class="form-group clearfix">
<label class="col-lg-2 control-label " for="userName">Status :</label>
<?php if($GetEmailId['status']=='1'){echo "Active";}if($GetEmailId['status']=='0'){echo "Inactive";} ?>      
</div>  
<a  href="<?php echo $iClassName.$FileName; ?>"  class="btn btn-default" >Back</a>	
</section>
</div>
</div>  
<?php } else { ?> 
<div class="card-box">
<table id="datatable" class="table table-striped table-bordered">
<thead>
<tr>
<th>#</th>
<th>Question</th>
<th>Language </th>
<th>Status</th>
<th>Action</th>
</tr>
</thead>
<tbody>
		<?php
		$aryList=$db->getRows("select * from faqs order by id asc");
	foreach($aryList as $iList)
			{	$i=$i+1;
		$aryPgAct["id"]=$iList['id'];
			 ?> 
<tr>
<td><?php echo $i ?></td>
<td><?php echo $iList['question']; ?></td>
<td>

<?php if($iList['language_id']=='1'){echo "English";}
if($iList['language_id']=='2'){echo "Russian";} ?>
</td>
<td>
<?php if($iList['status']=='1'){echo "Active";}
if($iList['status']=='0'){echo "Inactive";} ?>
</td>
<td>
<a href="<?php echo $iClassName.$FileName; ?>?action=view&id=<?php echo $iList['id']; ?>" class="table-action-btn"> <i class="fa fa-search"></i></a>
<a href="<?php echo $iClassName.$FileName; ?>?action=edit&id=<?php echo $iList['id']; ?>"  class="table-action-btn" > <i class="fa fa-pencil"></i> </a>
<a href="javascript:del('<?php echo $iClassName.$FileName; ?>?action=delete&id=<?php echo $iList['id']; ?>')"    class="table-action-btn" > <i class="fa fa-times"></i> </a>
</td>
</tr>
<?php } ?>
</tbody>
</table>
</div>
<?php } ?> 
</div>
</div>
</div>  
</div>  
<?php include('inc.footer.php'); ?>
</div>
</div>
<?php include('inc.js.php'); ?>
</body>
</html>