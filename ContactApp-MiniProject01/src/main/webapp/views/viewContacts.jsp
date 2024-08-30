<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <script>
        function confirmDelete(){
            return confirm("Are you sure, you want to delete? ");
        }
    </script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

    <h3>Search Design Pattern<h3>
    <form action="search" method="get">  <!-- Ensure the action matches the controller mapping -->
        <label for="field1">Attribute Type  :</label>
        <input type="text" id="field1" name="field1" ><br>

        <label for="field2">Design pattern  :</label>
        <input type="text" id="field2" name="field2" ><br>

        <label for="field3">Component Type :</label>
        <input type="text" id="field3" name="field3" ><br>

        <input type="submit" value="Search">
    </form>

    <table border="1">
                <thead>
                    <tr>
                        <th>Sr. No</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phno</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${contactsV2}" var="c" varStatus="count">
                       <tr>
                        	<td>${count.index+1}</td>
                        	<td>${c.contactNAME}</td>
                        	<td>${c.contactEMAIL}</td>
                        	<td>${c.contactNUMBER}</td>
                       </tr>
                    </c:forEach>
                </tbody>
    </table>
</body>
</html>