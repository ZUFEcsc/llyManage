<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
</head>
<body>
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#exampleModal">Launch demo modal</button>

	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#exampleModal" data-whatever="@mdo">Open modal
		for @mdo</button>
	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#exampleModal" data-whatever="@fat">Open modal
		for @fat</button>
	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#exampleModal" data-whatever="@getbootstrap">Open
		modal for @getbootstrap</button>

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">请选择项目成员</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<!--
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">Recipient:</label>
							<input type="text" class="form-control" id="recipient-name">
						</div>
						<div class="form-group">
							<label for="message-text" class="col-form-label">Message:</label>
							<textarea class="form-control" id="message-text"></textarea>
						</div>
					</form>
				</div>
				   -->

您喜欢的水果？<br /><br /> 
<label><input name="Fruit" type="checkbox" value="1" />苹果 </label> 
<label><input name="Fruit" type="checkbox" value="2" />桃子 </label> 
<label><input name="Fruit" type="checkbox" value="3" />香蕉 </label> 
<label><input name="Fruit" type="checkbox" value="4" />梨 </label> 
<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal" onclick="clicktest()">Close</button>
					<button type="button" class="btn btn-primary">Send message</button>
				</div>

					

				
			</div>
		</div>
	</div>
	<script>
	function clicktest(){
		console.log("111");
	}
	
		$('#exampleModal').on('show.bs.modal', function(event) {
			console.log("1");
			var button = $(event.relatedTarget) // Button that triggered the modal
			var recipient = button.data('whatever') // Extract info from data-* attributes
			// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
			// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
			var modal = $(this)
			/* 			console.log(modal);
			 console.log(recipient); */
			//modal.find('.modal-title').text('New message to ' + recipient)
			//modal.find('.modal-body input').val(recipient)
			
		})
	</script>
</body>
</html>