<%@page import="com.chaitali.inventorydb.IssueProcesed"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<%
			List<IssueProcesed> issueProcessed= (List<IssueProcesed>)request.getAttribute("issueProcessed");
		%>
		<table>
			<tr>
				<th> Issue ID </th>
				<th> Material ID </th>
				<th> Material Name </th>
				<th> Issuer Name </th>
				<th> Quantity </th>
				<th> Date </th>
				<th> Time </th>
			</tr>
			<%
				for(IssueProcesed ip:issueProcessed)
				{%>
					<tr>
						<td><%= ip.getId() %></td>
						<td><%= ip.getPid() %></td>
						<td><%= ip.getPname() %></td>
						<td><%= ip.getIpname() %></td>
						<td><%= ip.getIpquantity() %></td>
						<td><%= ip.getPissueDate() %></td>
						<td><%= ip.getPissueTime() %></td>
					</tr>
				<%}
			%>
		</table>
</body>
</html>