<%-- 
    Document   : efetua_cadastro_veiculo
    Created on : 14/10/2018, 19:49:46
    Author     : thiag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.cadastro_veiculo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro - veículo</title>
    </head>
    <body>
        <center>
            <h1>Cadastros de novo veículo</h1>
            <%
            if(request.getParameter("novo") != null){
                String placa = request.getParameter("placa");
                String marca = request.getParameter("marca");
                String modelo = request.getParameter("modelo");
                String cor = request.getParameter("cor");
                
                cadastro_veiculo v = new cadastro_veiculo();
                v.setDados_v(placa,marca, modelo, cor);
                Db.getDados_v().add(v);
                response.sendRedirect("Pagina_cadastro_veiculo.jsp");
            }
        %>
        <form>
            Placa: <input type="text" name="placa"> </br></br>
            Marca: <input type="text" name="marca"> </br></br>
            Modelo: <input type="telephone" name="modelo"> </br></br>
            Cor: <input type="email" name="cor"> </br></br>
            <input type="submit" value="cadastrar" name="novo">
        </form>
        </center>    
    </body>
</html>
