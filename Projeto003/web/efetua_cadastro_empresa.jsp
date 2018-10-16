<%-- 
    Document   : efetua_cadastro_empresa
    Created on : 15/10/2018, 22:47:23
    Author     : Nicole
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.cadastro_empresa"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de empresas</title>
    </head>
    <body>
        <center>
            <h1>Cadastro de Empresa</h1></br></br>
             <a href="Pagina_cadastro_empresa.jsp"><button>Voltar</button></a></br></br>
            <%
            if(request.getParameter("novaempresa") != null){
                String nome = request.getParameter("nome");
                String razao = request.getParameter("razao");
                String cnpj = request.getParameter("cnpj");
                String telefone = request.getParameter("telefone");
                String website = request.getParameter("website");
                
                cadastro_empresa e = new cadastro_empresa();
                e.setDadosEm(nome,razao, cnpj, telefone, website);
                Db.getDadosEm().add(e);
                response.sendRedirect("Pagina_cadastro_empresa.jsp");
            }
        %>
        <form>
            Nome: <input type="text" name="nome"> </br></br>
            Razão Social: <input type="text" name="razao"> </br></br>
            Cnpj: <input type="text" name="cnpj"> </br></br>
            Telefone: <input type="text" name="telefone"> </br></br>
            Website: <input type="text" name="website"> <br><br>
            <input type="submit" value="cadastrar" name="novaempresa">
             
            
           </form>
        </center>    
    </body>
</html>
