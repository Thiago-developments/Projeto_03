<%-- 
    Document   : Pagina_cadastro_pessoa
    Created on : 14/10/2018, 21:31:49
    Author     : thiag
--%>

<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.cadastro_pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <h1>Cadastro de pessoas</h1></br><br>
            
            <a href="home.jsp"><button>Página inicial</button></a>
            <a href="efetua_cadastro_pessoa.jsp"><button>Cadastrar nova pessoa</button></a>
            <table border="1">
                <tr>
                    <th>Nome</th>
                    <th>Cpf</th>
                    <th>E-mail</th>
                    <th>Telefone</th>
                    <th>Comandos</th>
                </tr>
                <%for (cadastro_pessoa p:Db.getDados()) {%>
                <tr>
                    <td><%=p.getNome()%></td>
                    <td><%=p.getCpf()%></td>
                    <td><%=p.getEmail()%></td>
                    <td><%=p.getTelefone()%></td>
                    <% int i = Db.getDados().indexOf(p); %>
                    <td>
                        <a href="remove_cadastro_pessoa.jsp?i=<%= i %>"><button>Remover</button></a>
                        <a href="altera_cadastro_pessoa.jsp?i=<%= i %>"><button>Alterar</button></a>
                    </td>
                </tr>
                <%}%>
            </table>
            
        </center>
    </body>
</html>
