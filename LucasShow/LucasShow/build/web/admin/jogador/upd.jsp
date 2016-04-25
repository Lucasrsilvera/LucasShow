<%@page import="dao.JogadorDAO"%>
<%@page import="modelo.Jogador"%>
<%@include file="../cabecalho.jsp"%>

<%

    if (request.getParameter("LoginJog") == null) {

        response.sendRedirect("list.jsp");

        return;

    }

    String id = request.getParameter("LoginJog");
      

    JogadorDAO dao = new JogadorDAO();

    Jogador obj = dao.buscarPorChavePrimaria(id);

    if (obj == null) {

        response.sendRedirect("list.jsp");
        return;

    }


%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Jogador  Atualizar</h4>
            <form action="upd-ok.jsp" method="post">
                
                
                           
              
                    <div class="mdl-cell--12-col"> 
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtLogin" value="<%=obj.getLogin()%>" required  id="txtLogin" readonly ="readonly" />
                        <label class="mdl-textfield__label" for="txtLogin">Login</label>
                        </div>
                    </div>
                
                    <div class="mdl-cell--12-col"> 
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="password" name="txtSenha" value="<%=obj.getSenha()%>"  required  id="txtSenha" />
                        <label class="mdl-textfield__label" for="txtSenha">Senha</label>
                        </div>
                    </div>
                
                    <div class="mdl-cell--12-col"> 
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="email" name="txtEmail" value="<%=obj.getEmail()%>" required  id="txtEmail" />
                        <label class="mdl-textfield__label" for="txtEmail">Email</label>
                        </div>
                    </div>
                
                    <div class="mdl-cell--12-col"> 
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtFoto" value="<%=obj.getFoto()%>" required  id="txtFoto" />
                        <label class="mdl-textfield__label" for="txtFoto">Foto</label>
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


