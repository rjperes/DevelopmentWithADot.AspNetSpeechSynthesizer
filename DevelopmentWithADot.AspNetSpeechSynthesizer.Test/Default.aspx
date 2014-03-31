<%@ Page Language="C#" CodeBehind="Default.aspx.cs" Inherits="DevelopmentWithADot.AspNetSpeechSynthesizer.Test.Default" %>
<%@ Register Assembly="DevelopmentWithADot.AspNetSpeechSynthesizer" Namespace="DevelopmentWithADot.AspNetSpeechSynthesizer" tagPrefix="web" %>
<%@ Register Assembly="System.Speech, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Speech" TagPrefix="web" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<script>
		
		function onSpeek(text)
		{
			document.getElementById('synthesizer').speek(text);
		}

	</script>
</head>
<body>
	<form runat="server">
	<div>
		<web:SpeechSyntesizer runat="server" ID="synthesizer" Age="Adult" Gender="Male" Culture="en-US" Rate="0" Volume="100"/>
		<input type="text" id="text" name="text"/>
		<input type="button" value="Speek" onclick="onSpeek(this.form.text.value)"/>
	</div>
	</form>
</body>
</html>
