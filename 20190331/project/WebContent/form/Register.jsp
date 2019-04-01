<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Đăng kí thành viên</title>
	<style type="text/css">
		div{
			margin: 10px
		}
		div.label{
			color:green;
		}
		input[type=text],input[type=radio],textarea,select{
			color:blue;
			width:300px;
		}
		
	</style>
</head>
<body>
	<form action="register.php" method="post">
		<div>
			<h1>Đăng kí thành viên</h1>
		</div>
		<div>
			<label>Họ và tên</label>
		</div>
		<div>
			<input type="text" name="fullname">
		</div>
		<div>
			<label>Giới tính</label>
		</div>
		<div>
			<input type="radio" name="gender" value="Nam" checked>Nam
			<input type="radio" name="gender" value="Nữ">Nữ
		</div>
		<div>
			<label>Quốc tịch</label>
		</div>
		<div>
			<select name="Nationality">
			<option value="US">Mỹ</option>
			<option value ="VN">Việt Nam</option>
			<option value="SG">Singapore</option>
		</select>
		</div>
		<div>
			<input type="checkbox" name="music" value="M"> Âm nhạc
			<input type="checkbox" name="travel" value="T">Du lịch
			<input type="checkbox" name="other" value="O">Khác
		</div>
		<div>
			<label>Ghi chú</label>
			<textarea name="notes" rows="3" cols="30"></textarea>
		</div>
		<div>
			<button type="submit">Đăng kí</button>
			<button type="reset">Nhập lại</button>
		</div>
	</form>
</body>
</html>