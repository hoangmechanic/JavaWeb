<%@page pageEncoding="utf-8" %>
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
	<style>
		div{
			margin: 10px
		}
		div>label:first-child{
			display:block;
			color:red;
			font-weight: bold;
			font-variant: small-caps;
		}
		input[type=text],textarea,select{
		color:blue;
		width:300px
		}
	</style>
</head>
<body>
	<h2>ĐĂNG KÍ THÀNH VIÊN</h2>
	<form action="register.php" method ="post">
	<h1>${message}</h1>
	<div>
			<label>Họ và tên</label>
			<input type ="text" name = "fullname">
	</div>
	<div>
			<label>Giới tính</label>
			<input checked type ="radio" name = "gender" value="M" id="male"> <label for="male">Nam</label>
			<label><input type ="radio" name = "gender" value="F"> Nữ</label>
	</div>
	<div>
			<label>Quốc tịch</label>
			<select name="country">
				<option value="VN">Việt Nam</option>
				<option selected value="US">Mỹ</option>
				<option value="SG">Singapore</option>
			</select>
	</div>
	<div>
			<label>Sở thích</label>
			<input type ="checkbox" name = "music" value ="M"> Âm nhạc
			<input checked type ="checkbox" name = "travel" value ="T"> Du lịch
			<input type ="checkbox" name = "other" value ="O"> Khác
	</div>
	<div>
			<label>Ghi chú</label>
			<textarea name="notes" rows="3" cols="40"></textarea>
	</div>
	<div>
			<button type="submit">Đồng ý</button>
			<button type="reset">Nhập lại</button>
	</div>
	</form>
</body>
</html>