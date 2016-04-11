<%@page import="bean.FormBean"%>
<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <tr style="background-color: #ccffcc">
                <td>FName</td>
                <td>
                    <c:out value="${b.FName}"></c:out>
                </td>
            </tr>
            <tr style="background-color: #ccffcc">
                <td>LName</td>
                <td>
                    <c:out value="${b.LName}"></c:out>
                </td>
            </tr>   
            <tr style="background-color: #ccffcc">
                <td>UserID</td>
                <td>
                <c:out value="${b.userID}"></c:out>
                </td>
            </tr>
            <tr style="background-color: #ccffcc">
                <td>Password</td>
                <td>
                <c:out value="${b.pasword}"></c:out>
                </td>
            </tr>
            <tr style="background-color: #ccffcc">
                <td>RePassword</td>
                <td>
                <c:out value="${b.rePassword}"></c:out>
                </td>
            </tr>
            <tr style="background-color: #ccffcc">
                <td>alias</td>
                <td>
                <c:out value="${b.alias}"></c:out>
                </td>
            </tr>
            <tr style="background-color: #ccffcc">
                <td>CountryOfRes</td>
                <td>
                <c:out value="${b.countryOfRes}"></c:out>
                </td>
            </tr>
            <tr style="background-color: #ccffcc">
                <td>City</td>
                <td>
                <c:out value="${b.city}"></c:out>
                </td>
            </tr>
            <tr style="background-color: #ccffcc">
                <td>Language</td>
                <td>
                    <c:out value="${b.language}"></c:out>
                </td>
            </tr>
            <tr style="background-color: #ccffcc">
                <td>SecurityQues</td>
                <td>
                <c:out value="${b.sercurityQues}"></c:out>
                </td>
            </tr>
            <tr style="background-color: #ccffcc">
                <td>SecurityAns</td>
                <td>
                <c:out value="${b.securityAns}"></c:out>
                </td>
            </tr>
            <tr style="background-color: #ccffcc">
                <td>ContactEmail</td>
                <td>
                <c:out value="${b.contactEmail}"></c:out>
                </td>
            </tr>
            <tr style="background-color: #ccffcc">
                <td>ContactOther</td>
                <td>
                <c:out value="${b.contactOther}"></c:out>
                </td>
            </tr>
        </table>
    </body>
</html>
