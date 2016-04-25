<%@page import="java.util.List"%>
<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">

    <%

        CategoriaDAO categoria = new CategoriaDAO();
        List<Categoria> Lista = categoria.listar();


    %>

    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Pergunta - Cadastrar</h4>
            <form action="add-ok.jsp" method="post">
              




                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtEnunciado" required  id="txtEnunciado" />
                        <label class="mdl-textfield__label" for="txtEnunciado">Enunciado</label>
                    </div>

                </div>                     


                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtNivel" required  id="txtNivel" />
                        <label class="mdl-textfield__label" for="txtNivel">Nível</label>
                    </div>

                </div>


                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtCerta" required  id="txtCerta" />
                        <label class="mdl-textfield__label" for="txtCerta">Certa</label>
                    </div>

                </div>




                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <select name="selCategoria"> 
                            <option value=""> Selecione uma opção </option>

                            <%                        for (Categoria obj : Lista) {

                            %>




                            <option value="<%=obj.getId()%>"> <%=obj%> </option>    


                            <%

                                }

                            %>





                        </select>
                        <label class="mdl-textfield__label" for="selCategoria">Categoria</label>





                    </div>


                </div>






                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtA" required  id="txtA" />
                        <label class="mdl-textfield__label" for="txtA">a</label>

                    </div>

                </div>



                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtB" required  id="txtB" />
                        <label class="mdl-textfield__label" for="txtB">b</label>
                    </div>

                </div>


                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtC" required  id="txtC" />
                        <label class="mdl-textfield__label" for="txtC">c</label>
                    </div>

                </div>

                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtD" required  id="txtD" />
                        <label class="mdl-textfield__label" for="txtD">d</label>
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

