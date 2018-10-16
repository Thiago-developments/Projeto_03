<%-- 
    Document   : Pagina_cadastro_empresa
    Created on : 15/10/2018, 21:59:17
    Author     : Nicole
--%>

<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.cadastro_empresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto</title>
    </head>
    <body>
        <center>
            <h1>Cadastro de Empresas</h1><br><br>
            <a href="home.jsp"><button>Página inicial</button></a>
            <a href="efetua_cadastro_empresa.jsp"><button>Cadastrar nova Empresa</button></a>
            <table border="1">
                <tr>
                    <th>Nome</th>
                    <th>Razao social</th>
                    <th>CNPJ</th>
                    <th>Telefone</th>
                    <th>Website</th>
                    <th>Comandos</th>
                </tr>
                <%for (cadastro_empresa e:Db.getDadosem()) {%>
                <tr>
                    <td><%=e.getNome()%></td>
                    <td><%=e.getRazao()%></td>
                    <td><%=e.getCnpj()%></td>
                    <td><%=e.getTelefone()%></td>
                    <td><%=e.getWebsite()%></td>
                    <% int i = Db.getDadosem().indexOf(e); %>
                    <td>
                        <a href="remove_cadastro_empresa.jsp?i=<%= i %>"><button>Remover</button></a>
                        <a href="altera_cadastro_empresa.jsp?i=<%= i %>"><button>Alterar</button></a>
                    </td>
                </tr>
                <%}%>
            </table>
            
        </center>
    </body>
</html>

