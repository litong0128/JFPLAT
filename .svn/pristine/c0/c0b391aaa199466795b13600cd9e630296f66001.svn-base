<%@ page contentType="text/html;charset=utf-8" %>
<%	String appmap = request.getContextPath();
	String printImage = "<img src='" + appmap + "/images/print.gif' border=no >";
	String excelImage = "<img src='" + appmap + "/images/excel.gif' border=no >";
	String pdfImage = "<img src='" + appmap + "/images/pdf.gif' border=no >";
    String wordImage = "<img src='" + appmap + "/images/doc.gif' border=no >";
%>

<div class="btnBar">
  <ul class="left">
     <li class="toggleBg borderRight">
      <ul class="fileOper">
        <li><a class="ICOhover" href="#" onClick="report1_print();return false;"><span title="打印" class="print"><%=printImage%></span></a></li>
        <li><a class="ICOhover" href="#" onClick="report1_saveAsExcel();return false;"><span title="导出excel" class="excel"><%=excelImage%></span></a></li>
        <li><a class="ICOhover" href="#" onClick="report1_saveAsPdf();return false;"><span title="导出pdf" class="pdf"><%=pdfImage%></span></a></li>
        <li><a class="ICOhover" href="#" onClick="report1_saveAsWord();return false;"><span title="导出word" class="word"><%=wordImage%></span></a></li>
       </ul>
    </li>
  </ul>

</div>
