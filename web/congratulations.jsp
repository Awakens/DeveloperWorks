<%@page import="bean.FormBean"%>
<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="myLib" uri= "/WEB-INF/tlds/myLib" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Congratulations</title>
    </head>
    <body>
            <jsp:useBean id="b" class="bean.FormBean" scope="application" />

        <h1>Congratulations!</h1>
        <table style="border-style: solid;">
            <tr style="border-style: solid; border-color: black;">
                <td>Name</td>
                <td>Value</td>
            </tr>
            <c:catch var="catchException">
            <c:set var="scopes" value="${[applicationScope,sessionScope,requestScope, param, header]}"></c:set>
            <c:forEach var="scope" items="${scopes}">
                <c:forEach var="p" items="${scope}">
                    <tr style="background-color: #ccffcc">
                        <td>
                            <c:out value="${p.key}"></c:out>
                        </td>
                        <td>
                            <c:out value="${p.value}"></c:out>
                        </td>
                    </tr>
                </c:forEach>
            </c:forEach>
            </c:catch>
                    <tr>
                        <td>
                            Bean information via custom Tag:
                        </td>
                    </tr>
                    <myLib:beaner bean="${b}">       
                    <tr style="background-color: #ccffcc">
                        <td>${name}</td>
                        <td>${value}</td>
                    </tr>
                    </myLib:beaner>         
        </table>
    </body>
</html>
