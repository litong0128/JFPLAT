<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>add</title>
</head>
<body style="width:100%;overflow:hidden;" >
<div style="border:#86B6DB solid 1px;width:100%;">
<jsp:include page="search_cond.jsp"></jsp:include>
</div>
<div>
<iframe src="" id="reportFrame" name="reportFrame" width="100%" height="350px" scrolling="yes" frameborder="0" style="background: #C1D8FA"></iframe>
</div>
</body>
<script type="text/javascript">
	document.all("reportFrame").height=$(document).height()-$($("div")[0]).height()-10;
	//document.all("reportFrame").width=document.body.scrollWidth; 
</script>
</html>