<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="cabecalho-index.jsp"%>
<%
String mensagem = ""; 
    if(request.getParameter("txtEntrarLogin")!=null && 
        request.getParameter("txtEntrarSenha")!=null) 
    { 
        JogadorDAO dao = new JogadorDAO(); 
        Jogador jogador; 
        String login = request.getParameter("txtEntrar Login"); 
        String senha = request.getParameter("txtEntrarSenha"); 
        
        jogador = dao.realizarLogin(login, senha); 
        if(jogador !=null) 
        { 
            session.setAttribute("jogador", jogador);
            response.sendRedirect("jogo.jsp");
        }
        else 
        {
            mensagem = "Login errado"; 
        }
    
    
    } 
  %>
    
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Gerenciamento do Sistema</h4>
          
        </div>

    </div>

</section>


<%@include file="rodape-index.jsp"%>
