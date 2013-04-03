<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*, db.servlet.*" %>
<html>
<head>
<title>项目列表</title>
	<link rel="StyleSheet" href="dtree.css" type="text/css" />
	<script type="text/javascript" src="dtree.js"></script>
	<script>
      window.open("TreeOut","leftFrame");
    </script>
</head>
<body>
<h1>项目</h1>
<div class="dtree">
<p><a href="TreeOut">open all</a> | <a href="javascript: d.closeAll();">close all</a></p>
<script language=”javascript” event=”oncontextmenu” for=”document”>
	<!–
	return document_oncontextmenu()
	//–>
	</script>
	<script language=”javascript” id=”clientEventHandlersJS”>
	<!–
	function document_oncontextmenu() {
	return false;
	}
	//–>
</script>
<script language="javascript">
function openAll(){
	alert("OK");
	Node root=new Node(0,"G:\\", null);
	Tree tree=new Tree(root);
	tree.buildtree(root);
}
</script>
</div>
<p>
</p>
</body>
</html>