<%-- 
    Document   : altera_cadastro_pessoa
    Created on : 14/10/2018, 19:50:25
    Author     : thiag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.cadastro_pessoa"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar - cadastro</title>
    </head>
    <%  int i = Integer.parseInt(request.getParameter("i")); 
        cadastro_pessoa p = Db.getDados().get(i); 
    %>
    <body>
        <center>
            <h1>Alterar cadastro</h1>
        </center>
    <a href="Pagina_cadastro_pessoa.jsp"><button>Voltar</button></a>
        <center>
            
            <% if(request.getParameter("alterar") != null){
                String nome = request.getParameter("nome");
                String telefone = request.getParameter("telefone");
                String email = request.getParameter("email");
                String cpf = request.getParameter("cpf");
                p.setDados(nome, cpf, email, telefone);
                Db.getDados().set(i, p);
                response.sendRedirect("Pagina_cadastro_pessoa.jsp");
        } %>
        <form>
            Indice: <%= i+1 %></br></br>
            <input type="hidden" name="i" value="<%= i %>">
            Nome: <input type="text" name="nome" value="<%= p.getNome() %>"> </br></br>
            Cpf: <input type="text" name="cpf" value="<%= p.getCpf() %>"> </br></br>
            Telefone: <input type="telephone" name="telefone" value="<%= p.getTelefone() %>"> </br></br>
            E-mail: <input type="email" name="email" value="<%= p.getEmail() %>"> </br></br>
            <input type="submit" value="Alterar informações" name="alterar">
        </form>
        </center>
    </body>
</html>
