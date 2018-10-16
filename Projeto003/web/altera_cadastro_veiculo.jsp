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
                String nome = request.getParameter("nome");
                String telefone = request.getParameter("telefone");
                String email = request.getParameter("email");
                String cpf = request.getParameter("cpf");
                v.setDados_v(nome, cpf, email, telefone);
                Db.getDados_v().set(i, v);
                response.sendRedirect("Pagina_cadastro_veiculo.jsp");
        } %>
        <form>
            Indice: <%= i+1 %></br></br>
            <input type="hidden" name="i" value="<%= i %>">
            Placa: <input type="text" name="nome" value="<%= v.getPlaca() %>"> </br></br>
            Marca: <input type="text" name="cpf" value="<%= v.getMarca() %>"> </br></br>
            Modelo: <input type="telephone" name="telefone" value="<%= v.getModelo()%>"> </br></br>
            Cor: <input type="email" name="email" value="<%= v.getCor()%>"> </br></br>
            <input type="submit" value="Alterar informações" name="alterar">
        </form>
        </center>
    </body>
</html>
