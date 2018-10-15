<%-- 
    Document   : efetua_cadastro_pessoa
    Created on : 14/10/2018, 19:49:46
    Author     : thiag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.cadastro_pessoa"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <h1>Cadastros de novo contato</h1>
            <%
            if(request.getParameter("novo") != null){
                String nome = request.getParameter("nome");
                String cpf = request.getParameter("cpf");
                String telefone = request.getParameter("telefone");
                String email = request.getParameter("email");
                
                cadastro_pessoa p = new cadastro_pessoa();
                p.setDados(nome,cpf, email, telefone);
                Db.getDados().add(p);
                response.sendRedirect("Pagina_cadastro_pessoa.jsp");
            }
        %>
        <form>
            Nome: <input type="text" name="nome"> </br></br>
            Cpf: <input type="text" name="cpf"> </br></br>
            Telefone: <input type="telephone" name="telefone"> </br></br>
            E-mail: <input type="email" name="email"> </br></br>
            <input type="submit" value="cadastrar" name="novo">
        </form>
        </center>    
    </body>
</html>
