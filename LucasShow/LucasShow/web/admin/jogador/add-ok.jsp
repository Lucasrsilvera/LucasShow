<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="../cabecalho.jsp"%>

<%

    String login = request.getParameter("txtLogin"); 
    String senha = request.getParameter("txtSenha");
    String email = request.getParameter("txtEmail");
    String foto = request.getParameter("txtFoto");
    
      
      JogadorDAO dao = new JogadorDAO();
      Jogador obj = new Jogador();
      
      obj.setLogin(login);
      obj.setFoto(foto);
      obj.setEmail(email);
      obj.setSenha(senha);
      
      dao.incluir(obj);
%>





<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            
            
            
            <h4>Jogador  Cadastrar</h4>
            <p>Jogador cadastrado.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

