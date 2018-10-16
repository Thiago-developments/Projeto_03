<%-- 
    Document   : altera_cadastro_veiculo
    Created on : 14/10/2018, 19:50:25
    Author     : thiag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.cadastro_veiculo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar - cadastro</title>
    </head>
    <%  int i = Integer.parseInt(request.getParameter("i")); 
        cadastro_veiculo v = Db.getDados_v().get(i); 
    %>
    <body>
        <center>
            <h1>Alterar cadastro</h1>
        </center>
    <a href="Pagina_cadastro_veiculo.jsp"><button>Voltar</button></a>
        <center>
            
            <% if(request.getParameter("alterar") != null){
                String placa = request.getParameter("placa");
                String marca = request.getParameter("marca");
                String modelo = request.getParameter("modelo");
                String cor = request.getParameter("cor");
                v.setDados_v(placa, marca, modelo, cor);
                Db.getDados_v().set(i, v);
                response.sendRedirect("Pagina_cadastro_veiculo.jsp");
            } %>
        <form>
            Indice: <%= i+1 %></br></br>
            <input type="hidden" name="i" value="<%= i %>">
            Placa: <input type="text" name="placa" value="<%= v.getPlaca() %>"> </br></br>
            Marca: <input type="text" name="marca" value="<%= v.getMarca() %>"> </br></br>
            Modelo: <input type="text" name="modelo" value="<%= v.getModelo()%>"> </br></br>
            Cor: <input type="text" name="cor" value="<%= v.getCor()%>"> </br></br>
            <input type="submit" value="Alterar informações" name="alterar">
        </form>
        </center>
    </body>
</html>
