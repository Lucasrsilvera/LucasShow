<%@page import="modelo.Categoria"%>
<%@page import="modelo.Pergunta"%>
<%@page import="dao.PerguntaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
    String categoria = request.getParameter("selCategoria");
    
    PerguntaDAO dao = new PerguntaDAO();
    Pergunta pergunta = new Pergunta();
    Categoria obj = new Categoria();
    obj.setId(Long.parseLong(categoria));
    
    
    Integer nivel = Integer.parseInt(request.getParameter("txtNivel")); 
    String enunciado = request.getParameter("txtEnunciado");     
    String certa = request.getParameter("txtCerta");
    String a = request.getParameter("txtA");
    String b = request.getParameter("txtB"); 
    String c = request.getParameter("txtC");
    String d = request.getParameter("txtD");
            
      

    
    pergunta.setCategoria(obj);


    pergunta.setNivel(nivel);
    pergunta.setEnunciado(enunciado);
    pergunta.setCerta(certa);
 
    pergunta.setA(a);
    pergunta.setB(b);
    pergunta.setC(c);
    pergunta.setD(d);
    
    dao.incluir(pergunta);
    
    
    
    
    
    
    


%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Cadastrar Pergunta</h4>
            <p>Pergunta cadastrada.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

