<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%

    if (request.getParameter("id") == null) {

        response.sendRedirect("list.jsp");

        return;

    }

    String categoria = request.getParameter("id");

    CategoriaDAO dao = new CategoriaDAO();
    Categoria obj = dao.buscarPorChavePrimaria(Long.parseLong(categoria));

    if (obj == null) {

        response.sendRedirect("list.jsp");
        return;

    }


%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Categoria - Atualizar</h4>
            <form action="upd-ok.jsp" method="post">
                
                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtCategoria" value="<%=obj.getId()%>" required  id="txtCategoria" readonly ="readonly" />
                        <label class="mdl-textfield__label" for="txtCategoria">Id</label>
                    </div>

                </div>


                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtNome" value="<%=obj.getNome()%>" required  id="txtNome" />
                        <label class="mdl-textfield__label" for="txtNome">Nome</label>
                    </div>
                </div>




                <div class="mdl-cell--12-col">
                    
                    <button type="submit" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                    <i class="material-icons">save</i></button>
                    <button type="reset" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                    <i class="material-icons">clear</i></button>
                    
                    
                </div>
            </form>
        </div>

    </div>



<%@include file="../rodape.jsp"%>


