<%-- 
    Document   : remove_cadastro_empresa
    Created on : 15/10/2018, 23:23:23
    Author     : Nicole
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.cadastro_empresa"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover</title>
    </head>
    <%  int i = Integer.parseInt(request.getParameter("i")); 
        cadastro_empresa e = Db.getDadosEm().get(i); 
    %>
    <body>
        <h1>Remoção de Empresas</h1>
        <a href="Pagina_cadastro_empresa.jsp"><button>Voltar</button></a>
        <% if(request.getParameter("remover_cadastro") != null){
                Db.getDadosEm().remove(i);
                response.sendRedirect("Pagina_cadastro_empresa.jsp");
        }
        %>
        <form>
            Indice: <%= i+1 %></br></br>
            <input type="hidden" name="i" value="<%= i %>">
            Nome: <%= e.getNome() %> </br></br>
            Razão social:<%= e.getRazao() %> </br></br>
            Cnpj: <%= e.getCnpj() %> </br></br>
            Telefone: <%= e.getTelefone() %> </br></br>
            Website: <%= e.getWebsite() %> </br></br>
            <input type="submit" value="Remover" name="remover_cadastro"></br></br>
        </form>
        
    </body>
</html>