<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%

    String categoria = request.getParameter("id");

    CategoriaDAO dao = new CategoriaDAO();
    Categoria obj = dao.buscarPorChavePrimaria(Long.parseLong(categoria));
    
    dao.excluir(obj);

%>


<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Categoria  Excluir</h4>
            <p>Categoria excluid.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

