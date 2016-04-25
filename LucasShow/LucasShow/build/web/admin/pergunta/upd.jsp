<%@page import="java.util.List"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="modelo.Categoria"%>
<%@page import="modelo.Pergunta"%>
<%@page import="dao.PerguntaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
     CategoriaDAO categoria = new CategoriaDAO();
    List<Categoria> Lista = categoria.listar();
    
   

    String pergunta = request.getParameter("IdPergunta");

    PerguntaDAO dao = new PerguntaDAO();
   

    Pergunta p = dao.buscarPorChavePrimaria(Integer.parseInt(pergunta));
  
      
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Atualizar Pergunta</h4>
            <form action="upd-ok.jsp" method="post">
                
             

               <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtIdPergunta" value="<%=p.getId()%>" required  id="txtIdPergunta" readonly />
                        <label class="mdl-textfield__label" for="txtIdPergunta">Id Pergunta</label>
                    </div>
                </div>


                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtEnunciado" value="<%=p.getEnunciado()%>" required  id="txtEnunciado" />
                        <label class="mdl-textfield__label" for="txtEnunciado">Enunciado</label>
                    </div>

                </div>                     


                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtNivel" value="<%=p.getNivel()%>" required  id="txtNivel" />
                        <label class="mdl-textfield__label" for="txtNivel">Nível</label>
                    </div>

                </div>


                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtCerta" value="<%=p.getCerta()%>" required  id="txtCerta" />
                        <label class="mdl-textfield__label" for="txtCerta">Certa</label>


                    </div>

                </div>




                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        
                           <select name="selCategoria">  
                        
                 <option value=""> Selecione uma opção </option>

                <%

                    String selected = "";
                    for (Categoria c : Lista) {
                        
                         if (c.getId() == p.getCategoria().getId()) {

                        selected = "selected";
                    }
                                    
                  
                        
                 %>
                 
                <option value="<%=c.getId()%>"<%=selected%>> <%=c%> </option>        

                 
                 <%
                         
                         
                      selected = "";
                }   
                         
                         
                 %>
                 
                 </select>
                 
                        
                        <label class="mdl-textfield__label" for="selCategoria">Categoria</label>

                    </div>
                </div>


                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtA" value="<%=p.getA()%>" required  id="txtA" />
                        <label class="mdl-textfield__label" for="txtA">a</label>

                    </div>

                </div>



                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtB" value="<%=p.getB()%>" required  id="txtB" />
                        <label class="mdl-textfield__label" for="txtB">b</label>
                    </div>

                </div>


                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtC" value="<%=p.getC()%>" required  id="txtC" />
                        <label class="mdl-textfield__label" for="txtC">c</label>
                    </div>

                </div>

                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtD" value="<%=p.getD()%>" required  id="txtD" />
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

