	<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
	<html lang="ko">
	<head>
	<title>���� ���</title>
		<meta charset="EUC-KR">
		
		<!-- ���� : http://getbootstrap.com/css/   ���� -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	
	<!-- Datepicker CDN -->
		<style>
	       body > div.container{
	        	border: 3px solid #D6CDB7;
	            margin-top: 10px;
	        }
	        
	        body {
            padding-top : 50px;
       		 }
	    </style>
	
	<script type="text/javascript">
	
			function fncAddProduct(){
				//Form ��ȿ�� ����
			 	var name = $("input[name='prodName']").val();
				var detail = $("input[name='prodDetail']").val(); 
				var manuDate = $("input[name='manuDate']").val(); 
				var price = $("input[name='price']").val(); 
			
				if(name == null || name.length<1){
					alert("��ǰ���� �ݵ�� �Է��Ͽ��� �մϴ�.");
					return;
				}
				if(detail == null || detail.length<1){
					alert("��ǰ�������� �ݵ�� �Է��Ͽ��� �մϴ�.");
					return;
				}
				if(manuDate == null || manuDate.length<1){
					alert("�������ڴ� �ݵ�� �Է��ϼž� �մϴ�.");
					return;
				}
				if(price == null || price.length<1){
					alert("������ �ݵ�� �Է��ϼž� �մϴ�.");
					return;
				}
			
				//document.detailForm.action='/product/addProduct';
				//document.detailForm.submit(); 
				$("form").attr("method" ,"POST").attr("action" , "/product/addProduct").attr("enctype", "multipart/form-data").submit();
			
			}
			
			function resetData(){
				//document.detailForm.reset();
				$("form").reset();
			}
			
			$(function() {
				$('#add').on("click" , function() {
					//Debug..
					alert(  $('#add').html() );
					fncAddProduct();
				});
				
				$( "td.ct_btn01:contains('���')" ).on("click" , function() {
					//Debug..
					alert(  $( "td.ct_btn01:contains('����')" ).html() );
					resetData();
				});
				
				$('input[name="price"]').on("click" , function() {
					//Debug..
					console.log('input[name="manuDate"]');
				});
				
				
			});
			


			
	</script>
	</head>
	
<body>
	
	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
		<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	
		<h1 class="bg-primary text-center" style="background-color:#FDCEE2;">���� ���</h1>
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal">
	
		  
		  <div class="form-group">
		    <label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">�����</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodName" name="prodName" placeholder="�����">
		    </div>
		  </div>
		  
		  
		  <div class="form-group">
		    <label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">���� ������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodDetail" name="prodDetail" placeholder="�������� �Է����ּ���.">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">��������</label>
		    <div class="col-sm-4">
		      <input type="date" autocomplete="off" class="form-control" value="2023-03-12" name="manuDate" placeholder="��������">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="price" class="col-sm-offset-1 col-sm-3 control-label">����</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="price" name="price" placeholder="����">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="file" class="col-sm-offset-1 col-sm-3 control-label">��ǰ �̹���</label>
		    <div class="col-sm-4">
		      <input type="file" class="form-control" id="file" name="file" placeholder="�̹���">
		    </div>
		  </div>
		  
		 
		  
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" id="add" class="btn btn-primary" >��&nbsp;��</button>
			  <a class="btn btn-primary btn" href="#" role="button">��&nbsp;��</a>
		    </div>
		  </div>
		</form>
		<!-- form Start /////////////////////////////////////-->
		
 	</div>
	<!--  ȭ�鱸�� div end /////////////////////////////////////-->
	
	
	
	
</body>
	</html>