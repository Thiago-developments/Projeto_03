<%-- 
    Document   : remove_cadastro_pessoa
    Created on : 15/10/2018, 00:24:32
    Author     : thiag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.cadastro_pessoa"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove - cadastro</title>
    </head>
    <%  int i = Integer.parseInt(request.getParameter("i")); 
        cadastro_pessoa p = Db.getDados().get(i); 
    %>
    <body>
        <h1>Remoção de cadastros</h1>
        <% if(request.getParameter("removerContato") != null){
                Db.getDados().remove(i);
                response.sendRedirect("Pagina_cadastro_pessoa.jsp");
        } %>
        <form>
            Indice: <%= i+1 %></br></br>
            <input type="hidden" name="i" value="<%= i %>">
            Nome: <%= p.getNome() %> </br></br>
            Cpf: <%= p.getCpf() %> </br></br>
            Telefone: <%= p.getTelefone() %> </br></br>
            E-mail: <%= p.getEmail() %> </br></br>
            <input type="submit" value="remover" name="removerContato"></br><br>
        </form>
        
    </body>
</html>
