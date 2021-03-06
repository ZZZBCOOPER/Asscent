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
   <title>医药商务系统</title> 
   <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
   <link rel="stylesheet" href="reset.css" />
   <link rel="stylesheet" href="index.css" />
  </head> 
  <body>
  <jsp:include page="header.jsp"></jsp:include>
  <div id="main">
  <div id="title">
    <ul class="msg">
    <a href="account.jsp">我的账户&nbsp;&nbsp;&nbsp;</a>
    <a href="money.jsp">我的款度&nbsp;&nbsp;&nbsp;</a>
    <a href="showcart.jsp">我的购物车&nbsp;&nbsp;&nbsp;</a>
    <a href="order.jsp">我的订单&nbsp;&nbsp;&nbsp;</a>
    <a href="response.jsp">我的反馈</a>
    <h1>欢迎您<font color="red"><s:property value="#session.user.username" /></font></h1>
    <div id="turnleft">
    <s:form action="searchdrug.action" method="post">
    <input type="text"   name="drugname"/>&nbsp;&nbsp;
    <input type="submit" value="搜索" />
    </s:form>
    </div>
    <div id="turnright">
    <s:form action="loginout.action">
    <s:submit value="注销" ></s:submit>
    </s:form>
    </div>
   </ul> 
  </div>	
  <div id="left">
  <s:action name="browsecatalog" executeResult="true" namespace="/"/>
  </div>
  <div id="right">
  <div class=right_box>
  <s:set name="items" value="#session.cart.items" />
  <s:if test="#items.size != 0">
  <h3>
  <font color="blue" size="4">您的订单</font>
  </h3>
  <br>
  <div class="info_dg0">
  <s:iterator value="items" id="item">
  <table width="600" border="1" >
  <tr align="center">
  <td width="50" height="35">
   <font size="3">药名：</font>
  </td>
  <td width="100">
  <font size="3"><s:property value="value.drug.drugname" /></font>
  </td>
  <td width="50">
   <font size="3"> 价格：</font>
  </td>
  <td width="50">
  <font size="3"><s:property value="value.drug.price" /></font>
  </td>
  <td width="50">
  <font size="3"> 数量：</font>
  </td>
  <td width="50">
  <font size="3"><s:property  value="value.quantity"/></font>
  <input type="hidden" name="drugid"   value='<s:property  value="value.drug.drugid"/>' />
  </td>
  </tr>
  </table>
  </s:iterator>
  </div>
  <br>
  <font size="4">
   消费金额:
  <s:property value="#session.cart.totalPrice" />
   元</font>&nbsp;&nbsp;&nbsp;
  </s:if>
  <s:else>
  对不起,您还没有够买任何药品!
  <a href="login_success.jsp">
	<input type="hidden"  name="catalogid"   value='<s:property value="#session['catalogid']"/>'>
    <input type="submit"  value="去购买">
  </a>
  </s:else>
  </div>
  </div>
  </div> 
  <jsp:include page="foot.jsp"></jsp:include>
  </body>
  </html>