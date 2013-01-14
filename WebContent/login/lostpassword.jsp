<%@ page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@include file="/login/HautPage.jsp" %>
<section id="lost-password">
  <div>
    <div id="errors"/></div>
    <div class="container box">
      <form action="/lost-password.htm" method="post">
        <fieldset>
          <legend>Mot de passe oublie</legend>
          <p class="text">
            Mot de passe oublie ? Vous pouvez en obtenir un nouveau et retrouver l'usage de votre compte en <strong>moins de 5 minutes</strong>.
          </p>
          <p class="text">
            Pour ce faire, il vous suffit de remplir votre pseudo et votre courriel dans le formulaire ci-dessous. Vous recevrez alors un email dans les minutes qui suivent vous indiquant votre nouveau mot de passe et pourrez vous connecter immÃ©diatement.
          <p>
            <label>Pseudo <span class="required">*</span> :</label>
            <input type="text" required="required" name="login" value="" />
          </p>
          <p>
            <label>Courriel <span class="required">*</span> :</label>
            <input type="email" required="required" name="email" value="" />
          </p>
          <div class="submit-button">
            <div class="top"></div>
            <div class="content">Envoyer un nouveau mot de passe</div>
          </div>
        </fieldset>
      </form>
    </div>
  </div>
</section>
<%@include file="/login/BasDePage.jsp" %>