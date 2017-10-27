<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <c:out value="&lt要显示的数据对象（未使用转义字符）&gt" escapeXml="true" default="默认值"></c:out><br/>
     <c:out value="&lt要显示的数据对象（使用转义字符）&gt" escapeXml="false" default="默认值"></c:out><br/>
     <c:out value="${null}" escapeXml="false" default="使用的表达式结果为null，则输出该默认值"></c:out><hr/>
     
     <c:set var="salary" scope="session" value="${2000*2}"/>
	 <c:out value="${salary}"/><hr/>
	 
	 <c:set var="salary" scope="session" value="${2000*2}"/>
	 <p>salary 变量值: <c:out value="${salary}"/></p>
	 <c:remove var="salary"/>
	 <p>删除 salary 变量后的值: <c:out value="${salary}"/></p></hr>
		
	<c:catch var ="catchException">
   <% int x = 5/0;%>
	</c:catch>
	<c:if test = "${catchException != null}">
    <p>异常为 : ${catchException} <br />
	   发生了异常: ${catchException.message}</p>
	</c:if><hr/>
	
	 <a href="<c:url value="http://www.runoob.com"/>">
     		这个链接通过 &lt;c:url&gt; 标签生成。
   	 </a><hr/>
   	 
   	<!--   <c:import var="data" url="http://www.runoob.com"/>
	 <c:out value="${data}"/>
	 -->
 	
 	<c:import var="data" url="http://www.runoob.com"/>
	<c:out value="${data}"/><hr/>
	
	 
     
</body>
</body>
</html>