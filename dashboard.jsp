<%@ page import="main.Credit" %>
<%@ page import="main.Depense" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
<link rel="stylesheet" href="style.css">
    <title>Liste des credit</title>
</head>
<body>
<h1 style="">Dashboard</h1>

    <%
        List<Credit> credit = (List<Credit>) request.getAttribute("credit");
    %>

    <table border="1">
        <thead>
            <tr>
                <th>libele</th>
                <th>Montant</th>
                <th> Depense</th>
                <th>Reste</th>
            </tr>
        </thead>
        <tbody>
            <%
                for (Credit cred : credit) {
            %>
                <tr>
                    <td><%= cred.getLibelle() %></td>
                    <td><%= cred.getMontant() %></td>
                    <td><%= cred.getTotalDepense() %></td>
                    <td><%= cred.getReste() %></td>
                </tr>
            <%
                }
            %>
        </tbody>
    </table>
    <a href="formCredit">depenser</a>
    <a href="pageCredit.jsp">retour</a>
</body>
</html>
