<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
    String Id = request.getParameter("txtLogin");
    String senha = request.getParameter("txtSenha");
    String foto = request.getParameter("txtFoto");
    String email = request.getParameter("txtEmail");
    
    
    JogadorDAO dao = new JogadorDAO();
    Jogador obj = dao.buscarPorChavePrimaria(Id);
    
    obj.setSenha(senha);
    obj.setFoto(foto);
    obj.setEmail(email);
    
    dao.incluir(obj);
%>


<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            
            
            
            
            <h4>Atualiza</h4>
            <p>Jogador atualizado.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

