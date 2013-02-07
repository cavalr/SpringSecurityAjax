<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>

	<style>
		body { margin: 0; font-family: verdana;}
		h1 {text-align: center; margin: 0; padding: 15px;}
		.header { top: 0px; height: 80px; border-bottom: 1px #ccc solid;background-color: #eaeaea; }
		.footer { position:absolute; bottom:0; width: 100%; border-top: 1px #ccc solid; padding: 10px 0px; background-color: #eaeaea;}
		.footer .text {float: right; margin-right: 20px;}
		input { display: block; width: 340px; margin: 3px 0px 20px 0px;}
		label {font-weight: normal; font-size: 15px;}
		button {background-color: #ccc; color: #000; border: 1px #f4f4f4 solid; margin: 12px 0px; box-shadow: 0 3px 2px #AAA; margin-right: 5px;}
		#dialog {display: none;}
		.ui-dialog{ box-shadow: 0 20px 10px #AAA;}
		.error {border: 1px solid #FBB3B9; color: #f0051e; background: #FFECED; padding: 5px; margin-bottom: 10px; font-size: 12px;font-weight: bold;}
		.link {padding: 20px; background-color: #f4f4f4; border: 1px solid #ccc; font-family: verdana; width: 50%; margin: 0 auto; text-align: center; margin-top: 100px;}
	</style>
</head>
<body>
<div class="header"><h1>Spring Security Ajax</h1></div>