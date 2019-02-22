<%-- 
    Document   : PaginaPrincipal
    Created on : 19/02/2019, 09:20:55
    Author     : NIFVC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina Principal - Chamados</title>
        <link rel="stylesheet" href="PaginaPrincipal.css">
    </head>
    <body>
        <form id="Chamados" action="./GravarEstado">
            <div id="titulo"><center><h2>Controle de Chamados - Núcleo de Informática FVC</h2></center></div>
            <div id="Cadastro">
                <fieldset id ="Info">
                    <center>
                        <div id="Texto">
                        <h4>Setor: <input type="text" name="txtSetor" value="" id="txtSetor" size="53"/>     
                            Solicitante: <input type="text" name="txtSolicitante" value="" id="txtSolicitante" size="53" /></h4>
                        <h4>Descrição do Chamado: <input type="text" name="txtDesc" id="txtDescricao" value="" size="105"/></h4>
                        <h4>Responsável Técnico: <input type="text" name="txtResp" id="txtResponsavel" value="" /> 
                            Status: <select name="boxStatus" id="txtStatus">
                                <option>Em Aberto</option>
                                <option>Em Andamento</option>
                                <option>Finalizado</option>
                            </select> 
                            OBS: <input type="text" name="txtOBS" value="" id="txtOBS" size="46"/> </h4>
                        </div>
                    </center>
                </fieldset>
                <input type="submit" value="Gravar" name="btnGravar" id="btnGravar" />
                <input type="submit" value="Atualizar" name="btnAtualizar" id="btnAtualizar" />
                <input type="submit" value="Deletar" name="btnDeletar" id="btnDeletar"/>
                <div></br></br></br>
                    <center>  <table class="blueTable"  style="height:50px; width: 1250px"> </center>
                        <thead>
                            <tr>
                                <th>Setor</th>
                                <th>Solicitante</th>
                                <th>Descri&ccedil;&atilde;o do Chamado</th>
                                <th>Respons&aacute;vel T&eacute;cnico</th>
                                <th>Status</th>
                                <th>Obs.</th>
                            </tr>
                        </thead>
                        <tfoot></tfoot>
                        <tbody>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </tbody>
                </div>
            </div>
        </form>
    </body>
</html>
