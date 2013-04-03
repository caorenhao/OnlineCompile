<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*, db.bean.model.*" %>
<%
	//获取session的值
	String name = (String)session.getAttribute("filename");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>CodeMirror: C-like mode</title>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery.form.js"></script>
    <link rel="stylesheet" href="codemirror/lib/codemirror.css">
    <link rel="stylesheet" href="codemirror/theme/ambiance.css">
    <script src="codemirror/lib/codemirror.js"></script>
    <script src="codemirror/mode/clike/clike.js"></script>
    <link rel="stylesheet" href="codemirror/doc/docs.css">
	<script type="text/javascript"> 
	
	function ajaxSubmit(frm, fn) {
		var dataPara = getFormJson(frm);
		$.ajax({
			url: frm.action,
			type: frm.method,
			data: dataPara,
			success: fn
		});
	}

	//将form中的值转换为键值对。
	function getFormJson(frm) {
		var o = {};
		var a = $(frm).serializeArray();
		$.each(a, function () {
			if (o[this.name] !== undefined) {
				if (!o[this.name].push) {
					o[this.name] = [o[this.name]];
				}
				o[this.name].push(this.value || '');
			} else {
				o[this.name] = this.value || '';
			}
		});

		return o;
	}
	function saveData(){                             			 //提交数据函数 
		$.ajax({                                                 //调用jquery的ajax方法 
    		type: "POST",                                    	 //设置ajax方法提交数据的形式 
    		url: "saveServletUrl",                               //把数据提交到saveServlet中
    		//data: "editor1="+$("#editor1").val(),    			 //输入框writer中的值作为提交的数据 
    		data: "editor1="+editor.getValue(),
    		success: function(msg){                 			 //提交成功后的回调，msg变量是saveServlet输出的内容。 
      			//editor.toTextArea();  
				//var input = editor.getTextArea().value; 
      			alert("数据保存成功");                     		 //如果有必要，可以把msg变量的值显示到某个DIV元素中 
    		} 
		}); 
	}
	function compilerData(){                             		 //提交数据函数 
		$.ajax({                                                 //调用jquery的ajax方法 
    		type: "POST",                                    	 //设置ajax方法提交数据的形式 
    		url: "compilerServletUrl",                           //把数据提交到saveServlet中
    		data: "editor1="+editor.getValue(),    			 	 //输入框writer中的值作为提交的数据 
    		success: function(msg){                 			 //提交成功后的回调，msg变量是compilerServlet输出的内容。 
      			alert("编译成功");                     		 	 //如果有必要，可以把msg变量的值显示到某个DIV元素中 
      			$("#output1").html(msg);
    		} 
		}); 
	}
	function runData(){                             		 	 //提交数据函数 
		$.ajax({                                                 //调用jquery的ajax方法 
    		type: "POST",                                    	 //设置ajax方法提交数据的形式 
    		url: "runServletUrl",                           	 //把数据提交到saveServlet中
    		data: "editor1="+editor.getValue(),		   			 //输入框writer中的值作为提交的数据 
    		success: function(msg){                 			 //提交成功后的回调，msg变量是runServlet输出的内容。
    			alert("运行成功");
    			$("#output1").html(msg);  						 //如果有必要，可以把msg变量的值显示到某个DIV元素中 
    		} 
		}); 
	}
	//调用
    $(document).ready(function(){
    	$("#save").click(function(){          				 	 //当按钮save被点击时的处理函数 
    		saveData();                                      	 //save被点击时执行saveData函数 
			}); 
		$("#compiler").click(function(){          				 //当按钮compiler被点击时的处理函数 
    		compilerData();                                      //compiler被点击时执行compilerData函数 
			}); 
		$("#run").click(function(){          				 	 //当按钮run被点击时的处理函数 
    		runData();                                      	 //run被点击时执行runData函数 
			}); 
		$("#myForm").bind('submit', function(){
		alert("OK");
			ajaxSubmit(this, function(data){
				alert("保存成功");
			});
			return false;
		});
    });
    
</script>
	
    <style>
      body
      {
        margin: 0;
        padding: 0;
        width:100%;
        height: 100%;
      }
    </style>
<style type="text/css">
<!--
.STYLE1 {
	color: #e1e2e3;
	font-size: 12px;
}
.STYLE6 {color: #000000; font-size: 12px; }
.STYLE10 {color: #000000; font-size: 12px; }
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
.STYLE23 {
	font-size: 12px;
	color: #FFFFFF;
	background: #202020;
}
-->
</style>
</head>
<body>
<form name="form1" runat="server" action="" method="post">
<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0" >
  
  <tr>
    <td height="3.75%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="3%" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="6%" height="19" valign="bottom"><div align="center"><img src="images/tb.gif" width="14" height="14" /></div></td>
                <td width="94%" valign="bottom"><span class="STYLE1"> <%=name %></span></td>
              </tr>
            </table></td>
            <td><div align="right"><span class="STYLE1">
            	<input name="save" id="save" type="button" value="保存"  />&nbsp;&nbsp;
            	<input name="compiler" id="compiler" type="button" value="编译"  />&nbsp;&nbsp;
            	<input name="run" id="run" type="button" value="运行"  />
            </span></div></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  
  <tr>
    <td><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="71.25%">
        	<textarea id="editor1" name="editor1" rows="10" style="overflow:auto">
        	<script>
    	filePath = "C:\\Program Files\\Apache Software Foundation\\Tomcat 7.0\\webapps\\compiler\\javaTest\\error.txt";
      	File fresult = new File(filePath);
		FileReader fr = new FileReader(fresult);
		var char[] buffer = new char[100];
		int length; //读出的字符数(一个中文为一个字符)
		//读文件内容
		while((length=fr.read(buffer))!=-1) {
			//输出
			out.write(buffer,0,length);
		}
		fr.close();
    </script>
        	
        	</textarea>
      	</td>       
      </tr>
    </table></td>
  </tr>
      
  <tr>
    <td height="3.75%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="3%" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="2%" height="19" valign="bottom"><div align="center"><img src="images/tb.gif" width="14" height="14" /></div></td>
                <td width="98%" valign="bottom"><span class="STYLE1"> Console</span></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
      
  <tr>      
    <td height="21.25%"><table width="100%" border="0" cellspacing="0" cellpadding="0">         
      <tr>
        <td>
        	<span class="STYLE10"><textarea cols="185.5%" id="output1" name="output1" rows="10" readonly="readonly" class="STYLE23">
      		</textarea></span>
      	</td>       
      </tr>     
    </table></td>
  </tr>
</table>
</form>

    <script>
      var editor = CodeMirror.fromTextArea(document.getElementById("editor1"), {
        lineNumbers: true,
        matchBrackets: true,
        theme: "ambiance",
        mode: "text/x-scala"
      });
    </script>
  </body>
</html>
