<%@include file="../cabecalho.jsp"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="modelo.Categoria"%>
<%@page import="java.util.List"%>


<%
    CategoriaDAO dao = new CategoriaDAO();
    List<Categoria> lista = dao.listar();

      
%>


<!-- gambiarra pra alinhar o bot�o a esquerda-->
<style>
    .direita
    {
        text-align: right;
        padding-right: 10%;

    }
</style>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Categoria</h4>
            
            <div class="direita">
                <a href="add.jsp">
                    <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                        <i class="material-icons">add</i>
                    </button>  
                </a>
            </div>

            <table class="mdl-data-table mdl-js-data-table">
                <thead>
                    <tr>

                        <th>ID</th>
                        <th>Nome</th>
                        <th>A��es</th>
                    </tr>



                </thead>


                <tbody>

                    <%
                        for (Categoria obj : lista) {


                    %>


                    <tr>
                        <td><%=obj.getId()%> </td>
                        <td><%=obj.getNome()%> </td>


                        <td>
                            <!-- 
                                Atualizar 
                            -->
                            <div id="ttupd" class="icon material-icons">
                                <i class="material-icons"><a href="upd.jsp?id=<%=obj.getId()%>">update</a></i>
                            </div>


                            <div class="mdl-tooltip" for="ttupd">
                                Atualizar
                            </div>


                            <!-- 
                                Excluir 
                            -->


                            <div id="ttdel" class="icon material-icons">
                                <i class="material-icons"><a href="del-ok.jsp?id=<%=obj.getId()%>">delete</a></i>
                            </div>


                            <div class="mdl-tooltip" for="ttdel">
                                Excluir
                            </div>

                        </td>

                    </tr>
               
                    <%

                        }
                        
                        
                    %>


                </tbody>


            </table>   
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

