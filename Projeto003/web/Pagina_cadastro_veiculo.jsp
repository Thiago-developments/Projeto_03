<%-- 
    Document   : Pagina_cadastro_veiculo
    Created on : 14/10/2018, 21:31:49
    Author     : thiag
--%>

<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.cadastro_veiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <h1>Cadastro de veículos</h1></br><br>
            
            <a href="home.jsp"><button>Página inicial</button></a>
            <a href="efetua_cadastro_veiculo.jsp"><button>Cadastrar novo veículo</button></a>
            <table border="1">
                <tr>
                    <th>Placa</th>
                    <th>Marca</th>
                    <th>Modelo</th>
                    <th>Cor</th>
                    <th>Comandos</th>
                </tr>
                <%for (cadastro_veiculo v:Db.getDados_v()) {%>
                <tr>
                    <td><%=v.getPlaca()%></td>
                    <td><%=v.getMarca()%></td>
                    <td><%=v.getModelo()%></td>
                    <td><%=v.getCor()%></td>
                    <% int i = Db.getDados_v().indexOf(v); %>
                    <td>
                        <a href="remove_cadastro_veiculo.jsp?i=<%= i %>"><button>Remover</button></a>
                        <a href="altera_cadastro_veiculo.jsp?i=<%= i %>"><button>Alterar</button></a>
                    </td>
                </tr>
                <%}%>
            </table>
            
        </center>
    </body>
</html>
