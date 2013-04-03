<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*, db.bean.model.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新建程序文件</title>
<style type="text/css">
<!--
body {
	margin-left: 3px;
	margin-top: 0px;
	margin-right: 3px;
	margin-bottom: 0px;
}
.STYLE1 {
	color: #e1e2e3;
	font-size: 12px;
}
.STYLE6 {color: #000000; font-size: 12; }
.STYLE10 {color: #000000; font-size: 32px; }
.STYLE11 {color: #000000; font-size: 18px; }
.STYLE19 {
	color: #344b50;
	font-size: 12px;
}
.STYLE21 {
	font-size: 12px;
	color: #3b6375;
}
.STYLE22 {
	font-size: 12px;
	color: #295568;
}
-->
</style>
</head>

<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="2%" height="19" valign="bottom"><div align="center"><img src="images/tb.gif" width="14" height="14" /></div></td>
                <td width="98%" valign="bottom"><span class="STYLE1"> 新建程序文件</span></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><form method="post" name="myform" action="newServletUrl">
    <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce">
      
      <tr>      
        <td width="100%" height="200" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">在此你可以新建一个java程序文件，以便编写java代码，并编译和运行。</span></div></td>
      </tr>
      
      <tr>
        <td width="100%" height="250" bgcolor="d3eaef" class="STYLE6">           
        	<div align="center"><span class="STYLE11">请输入java程序文件名：<input name="filename" type="text" id="title" size="30" /></div>
      	</td>      
      </tr>
             <tr>
	           <td colspan=2 align=center>
	           
	           <input type=submit name=b1 value="新建">
	           </td>
            </tr>
            <tr>
              <td height="30" colspan="3">&nbsp;</td>
            </tr>

     
    </table></td>
  </tr>
</table>
</body>
</html>
