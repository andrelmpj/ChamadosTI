<%-- 
    Document   : index
    Created on : 19/02/2019, 07:27:24
    Author     : NIFVC
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="br.com.sys.connection.Conexao"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Chamados - Setor de Informática</title>
        <link rel="stylesheet" href="login.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <%
            Conexao c = new Conexao();
            Connection conexao = c.conect("chamados");

        %>
        <form id="Main" action="index.jsp">
            <div id ="Campos">
                <fieldset id="Acesso">
                    <center>
                        <b><h3>Controle de Chamados</br> NIFVC</h3></b>
                        <h3>Login:<input type="text" name="txtLogin" value="" id ="txtLogin" size="20" /> </h3>
                        <h3>Senha:<input type="password" name="txtSenha" value="" id ="txtSenha" size="20" /> </h3>
                            <%
                                if (conexao != null) {
                                    if (request.getParameter("txtLogin") != null
                                            && (request.getParameter("txtSenha") != null)) {
                                        String login, pass;
                                        login = request.getParameter("txtLogin");
                                        pass = request.getParameter("txtSenha");
                                        Statement st;
                                        ResultSet rs;
                                        st = conexao.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.TYPE_FORWARD_ONLY);
                                        rs = st.executeQuery("Select * FROM TABELA_USUARIO where username='" + login + "' and senha='" + pass + "'");
                                        if (rs.next()) {
                                            response.sendRedirect("PaginaPrincipal.jsp");
                                        } else {
                                            JOptionPane.showMessageDialog(null, "Usuário e/ou senha inválidos");
                                        }
                                    }
                                } else {

                                }
                            %>
                    </center>
                </fieldset>
                    <input type="submit" value="Entrar" name="btnEntrar" id ="btnEntrar" style="height:35px; width: 180px"/>
            </div>
        </form>
    </body>
</html>
