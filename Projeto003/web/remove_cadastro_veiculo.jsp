<%-- 
    Document   : remove_cadastro_pessoa
    Created on : 15/10/2018, 00:24:32
    Author     : thiag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.cadastro_veiculo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove - cadastro</title>
    </head>
    <%  int i = Integer.parseInt(request.getParameter("i")); 
        cadastro_veiculo v = Db.getDados_v().get(i); 
    %>
    <body>
        <h1>Remoção de cadastros</h1>
        <a href="Pagina_cadastro_veiculo.jsp"><button>Voltar</button></a>
        <% if(request.getParameter("remover_cadastro") != null){
                Db.getDados_v().remove(i);
                response.sendRedirect("Pagina_cadastro_veiculo.jsp");
        } %>
        <form>
            Indice: <%= i+1 %></br></br>
            <input type="hidden" name="i" value="<%= i %>">
            Placa: <%= v.getPlaca() %> </br></br>
            Marca: <%= v.getMarca() %> </br></br>
            Modelo: <%= v.getModelo()%> </br></br>
            Cor: <%= v.getCor()%> </br></br>
            <input type="submit" value="Remover" name="remover_cadastro"></br><br>
        </form>
        
    </body>
</html>
