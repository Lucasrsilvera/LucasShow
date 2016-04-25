<%@page import="modelo.Pergunta"%>
<%@page import="dao.PerguntaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
    String pergunta = request.getParameter("IdPergunta");


    PerguntaDAO per = new PerguntaDAO();

    Pergunta p = per.buscarPorChavePrimaria(Integer.parseInt(pergunta));
    
    per.excluir(p);


%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            
            
            <h4>Excluir Pergunta</h4>
            <p>Pergunta excluiida .</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

