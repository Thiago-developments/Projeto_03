<%-- 
    Document   : altera_cadastro_empresa
    Created on : 15/10/2018, 22:24:35
    Author     : Nicole
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.cadastro_empresa"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar - cadastro</title>
    </head>
    <%  int i = Integer.parseInt(request.getParameter("i")); 
        cadastro_empresa e = Db.getDadosEm().get(i); 
    %>
    <body>
        <center>
            <h1>Alterar cadastro</h1>
        </center>
    <a href="Pagina_cadastro_empresa.jsp"><button>Voltar</button></a>
        <center>
            
            <% if(request.getParameter("alterar") != null){
                String nome = request.getParameter("nome");
                String razao = request.getParameter("razao");
                String cnpj = request.getParameter("cnpj");
                String telefone = request.getParameter("telefone");
                String website = request.getParameter("website");
                
                e.setDadosEm(nome, razao, cnpj, telefone, website );
                Db.getDadosEm().set(i, e);
                response.sendRedirect("Pagina_cadastro_empresa.jsp");
        } %>
        <form>
            Indice: <%= i+1 %></br></br>
            <input type="hidden" name="i" value="<%= i %>">
            Nome: <input type="text" name="nome" value="<%= e.getNome() %>"> </br></br>
            Razão Social: <input type="text" name="razao" value="<%= e.getRazao() %>"> </br></br>
            Cnpj: <input type="text" name="cnpj" value= "<%= e.getCnpj() %>"> </br></br>
            Telefone: <input type= "text" name= "telefone" value= "<%= e.getTelefone() %>"> </br></br>
            Website: <input type="text" name="website" value= "<%= e.getWebsite() %>"> </br></br>
            <input type="submit" value="Alterar informações" name="alterar">
        </form>
        </center>
    </body>
</html>
