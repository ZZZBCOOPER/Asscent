<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <base href="<%=basePath%>">
   <title>ҽҩ����ϵͳ</title> 
   <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
   <link rel="stylesheet" href="reset.css" />
   <link rel="stylesheet" href="index.css" />
  </head> 
  <body>
  <jsp:include page="header.jsp"></jsp:include>
  <div id="main">
  <div id="title">
    <ul class="msg">
    <a href="account.jsp">�ҵ��˻�&nbsp;&nbsp;&nbsp;</a>
    <a href="money.jsp">�ҵĿ��&nbsp;&nbsp;&nbsp;</a>
    <a href="showcart.jsp">�ҵĹ��ﳵ&nbsp;&nbsp;&nbsp;</a>
    <a href="order.jsp">�ҵĶ���&nbsp;&nbsp;&nbsp;</a>
     <a href="response.jsp">�ҵķ���</a>
    <h1>��ӭ��<font color="red"><s:property value="#session.user.username" /></font></h1>
    <div id="turnleft">
    <s:form action="searchdrug.action" method="post">
    <input type="text"   name="drugname"/>&nbsp;&nbsp;
    <input type="submit" value="����" />
    </s:form>
    </div>
    <div id="turnright">
    <s:form action="loginout.action">
    <s:submit value="ע��" ></s:submit>
    </s:form>
    </div>
   </ul> 
  </div>	
  <div id="left">
  <s:action name="browsecatalog" executeResult="true" namespace="/"/>
  </div>
  <div id="right">
  <div class=right_box>
	<div align="center">
	<h3>
	�������ӳɹ�
	</h3>
	<s:property value="#session.user.username" />
	,���Ķ����Ѿ��´�, ���Ķ�����
	<s:property value="#request.orderdrug.orderid" />
	, �������ϼĳ�ҩƷ,���ռ��ɵ���!
	<br>
	<br>
	</div>
	</div>
    </div>
   </div> 
  <jsp:include page="foot.jsp"></jsp:include>
  </body>
  </html>