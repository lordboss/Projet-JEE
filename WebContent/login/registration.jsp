<!doctype html>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!--%@include file="HautDePage.jsp" %> pas pour mnt -->
<html>
    <head>

        <style type="text/css">
 
            body {font-family:Arial, Sans-Serif;}
      	
   			
            #container {width:350px; margin:0 auto;}
 
            /* Nicely lines up the labels. */
            form label {display:inline-block; width:350px;}
 		    form [textarea] {background-color:#afafaf;}
            /* You could add a class to all the input boxes instead, if you like. That would be safer, and more backwards-compatible */
          input[type=text], input[type=password],    form input[type="email"], form input[type="date"]{
        	 width:392px;
       		 padding:2px 4px;
  			 color:#2a2a2a;
     	     border:1px solid #fff;
      	     border-radius:2px;
  			 background-color:#afafaf;
  			 margin:3px 0;
 			 display:block;
		}
            
 
            form .line {clear:both;}
            form .line.submit {text-align:right;}
			body {
			color:RoyalBlue;
			background-color:white;
			background-image:url(http://www.ogametut.free.fr/galeries/02/aa5.jpg);
			}
			
			input[type=submit]
{
	display: block;
	position: relative;
	margin-left: auto;
	margin-right: auto;
}
legend {
        color:RoyalBlue;
        font-weight:bold;
        padding:2px 4px;
}
fieldset {
        width:400px;
        margin:auto;
  margin-top:50px;
        padding:6px;
        background-color:#302f2c;
        border-radius:3px;
        border:1px solid #afafaf;
}
submit-button {
  display:inline-block;
  float:right;
  height:20px;
  background-color:#E3E3E3;
  border:1px solid #CCC;
  border-radius:2px;
  cursor:pointer;
  padding:0;
  margin:-1px -2px 0 3px;
  color:#3c3c3c;
}
.submit-button > .top {
  height:8px;
  background-color:#F4F4F4;
  border-bottom:1px solid #EEE;
}
.submit-button > .content {
  margin-top:-9px;
  padding:0 10px;
  line-height:20px;
  text-align:center;
}
.submit-button:hover {
  background-color:#F4F4F4;
  border-color:#888;
  box-shadow:0 0 8px #ebc57c;
}
.submit-button:hover > .top { background-color:#E3E3E3; }

          
        </style>
    </head>
    <body>
        <div id="container">
            <form method=post action=AccountCreation>
             <fieldset>
   				<input type="hidden" name="accountAction" value="signUp">
                <legend><b>Registration</b></legend>
                <div class="line"><label for="username">Username *: </label><input type="text" name="username" required="required" /></div>
                <div class="line"><label for="password">Password *: </label><input type="password" name="password" required="required"size=6/></div>
                <div class="line"><label for="passwordc">Confirm your password *:</label><input type="password" name="pwdc" data-equals="pwd" required="required"/></div>
                <div class="line"><label for="firstname">firstname *: </label><input type="text" name="firstname" required="required" /></div>
                  <div class="line"><label for="surname">lastname *: </label><input type="text" name="surname" required="required" /></div>
                <!-- You may want to consider adding a "confirm" password box also -->
                <div class="line"><label for="dateBirth">Date of Birth *: </label><input type="date" name="birthDate" value="1980-01-01s" required="required"/></div>
                <div class="line"><label for="email">Email *: </label><input type="email" name="email" required="required"/></div>
                 <div class="line"><label for="country">Country *: </label><input type="text" name="country" /></div>
              
                 
          <p>
            <label>Conditions Générales d'Utilisation</label>
          </p>
          <p>
            <textarea name="cgu" cols="47" rows="10" readonly="readonly">
  Conditions générales d’utilisation

1	Objet des conditions d’utilisation – Domaine d’application
1.1.	Les conditions suivantes règlent l’utilisation des jeux en ligne et des autres services proposés par Gameforge sur les sites Gameforge. Lors d’un enregistrement ou d’une connexion de l’utilisateur sur le portail Gameforge pour un jeu orienté client, c`est-à-dire un jeu qui nécessite le téléchargement d’un logiciel client, le contrat d’utilisation est établi avec la société Gameforge 4D GmbH. Gameforge Productions GmbH n`est dans ce cas là qu`un auxiliaire d`exécution de Gameforge 4D GmbH en ce qui concerne l`enregistrement et le la connexion.
1.2.	Les présentes conditions d’utilisation remplacent intégralement les anciennes versions des conditions d’utilisation de « Gameforge ».
1.3.	« Gameforge » s’oblige à mettre à disposition les jeux en ligne et les autres offres de prestations de service, dans le cadre de ses possibilités techniques et d’exploitation, avec un taux de disponibilité de 98% en moyenne annuelle. Ne sont pas compris dans ce taux, les temps durant lesquels l’utilisation des jeux en ligne et des autres offres de prestations de service, en raison de contraintes techniques ou bien de travaux de maintenance nécessaires, est interrompue ou bien perturbée, sans que cela puisse être imputable à « Gameforge » en vertu des dispositions du présent contrat.
1.4.	Les jeux en ligne et autres offres de prestations de service seront régulièrement développés, actualisés et adaptés par « Gameforge ». L’utilisateur n’aura en conséquence que la possibilité de participer aux jeux en ligne et aux offres dans leur version respectivement actualisée.
1.5.	Les jeux en ligne et autres prestations de service proposés par « Gameforge » sont exclusivement destinés au divertissement. Il est interdit d’en faire une utilisation à des fins professionnelles ou commerciales.
1.6.	L’utilisateur supportera seul la responsabilité de l’actualité et du caractère approprié du logiciel et du matériel informatique utilisé.
1.7.	En complément des conditions d’utilisation, s’appliqueront les règles de jeu en vigueur pour le jeu en ligne respectif, si elles existent. En cas de contradictions entre les présentes règles d’utilisation et les règles de jeu, ce sont les dispositions des conditions d’utilisation qui auront rang supérieur. Pour certains jeux en ligne ainsi que pour certaines offres de prestations de service sur les pages du site Internet de « Gameforge », des variantes spécifiques et/ou des éléments spécifiques des jeux en ligne, s’appliquer des conditions d’utilisation particulières. L’attention de l’utilisateur sera attirée selon un mode approprié sur tous ces points, avant l’acceptation de l’offre respective.
1.8.	Pour certains jeux en ligne et certaines prestations de service, l’utilisateur aura la possibilité de se prévaloir des prestations des partenaires contractuels de « Gameforge ». Dans ce cas de figure, il se forme un contrat spécifique entre l’utilisateur et le partenaire contractuel respectif de « Gameforge ». Avant la passation du contrat, l’attention de l’utilisateur sera attirée selon un mode approprié sur ce point.
1.9.	Les règlements dérogatoires aux présentes conditions ou bien les Conditions Commerciales Générales de l’utilisateur ne trouveront lieu de s’appliquer que si « Gameforge » les approuve préalablement par écrit.
2	Passation du contrat
2.1.	L’enregistrement de l’utilisateur constitue un préalable à l’utilisation par celui-ci des jeux en ligne proposés par « Gameforge » et à l’accès aux autres prestations de service.
2.2.	Un enregistrement n’est possible que pour les personnes physiques. L’autorisation d’utilisation ne vaut qu’à titre individuel (pas pour les groupes, les familles, le concubin, etc.). Si l’utilisateur est mineur, celui-ci doit garantir lors de l’envoi de sa demande d’enregistrement, être en possession d’une autorisation valable de son représentant légal.
2.3.	Lors de l’enregistrement, l’utilisateur devra indiquer un nom de joueur et les références de sa messagerie électronique. L’utilisateur n’a pas de droit à l’attribution d’un nom de joueur déterminé. Le nom du joueur ne doit pas porter atteinte aux droits de tiers, il ne doit pas non plus porter atteinte aux bonnes mœurs. Par ailleurs, l’utilisateur ne pourra pas choisir comme nom de joueur les références d’une messagerie électronique ou bien d’un site Internet. L’utilisateur se porte garant que les indications communiquées par lui à « Gameforge » lors de l’enregistrement, sont véridiques et intégrales.
2.4.	L’enregistrement est effectué à titre personnel. Une demande d’inscription à l’initiative de tiers, notamment à l’initiative de tiers (services de demandes d’inscription ou d’enregistrement) procédant à titre professionnel à des inscriptions d’individus auprès de divers offrants de télé-services, ne sera pas valable.
2.5.	L’acceptation de la demande d’enregistrement intervient sur le portail de « Gameforge » et sur les pages des jeux en ligne, au moyen d’une confirmation d’autorisation en la forme d’un courriel. Par ce courriel, l’utilisateur obtient un lien d’activation. En pareil cas, « Gameforge » déverrouille l’utilisateur et le compte du joueur par le biais du lien d’activation. A l’occasion de l’admission ou du déverrouillage par « Gameforge », se forme un contrat d’utilisation pour une durée indéterminée entre « Gameforge » et l’utilisateur, régi par les présentes conditions. Dans certains cas, la procédure d’enregistrement pourra dévier de ce schéma, sous réserve de le signaler selon un mode approprié à l’utilisateur.
2.6.	Une fois l’enregistrement effectué, l’utilisateur crée un compte utilisateur (« user account ») qu’il peut administrer de manière autonome. L’utilisateur peut créer un compte utilisateur aussi bien sur la page du portail de « Gameforge » que sur la page respective du jeu en ligne. Le compte utilisateur établi sur le portail de « Gameforge » peut être utilisé également pour les autres jeux en ligne connectés par « Gameforge » avec son portail. A l’inverse, le compte utilisateur créé sur la page du jeu en ligne ne peut être utilisé pour d’autres jeux en ligne.
2.7.	Le compte utilisateur n’est pas transmissible sans l’approbation expresse de « Gameforge ».
2.8.	Il n’existe pas de droit à l’enregistrement et au déverrouillage. L’utilisateur ne peut s’enregistrer qu’une seule fois par partie (par ex. monde, univers) dans le navigateur de jeux. Si l’enregistrement d’un utilisateur a déjà été effectué une fois pour une telle partie, l’utilisateur ne doit plus effectuer pour cette même partie d’autres enregistrements pour toute la durée de l’enregistrement existant, par exemple en indiquant d’autres données personnelles ou des données personnelles modifiées.
3.	Informations sur le droit de rétractation
Droit de rétractation
Vous pouvez rétracter votre déclaration de contracter dans un délai de 14 jours, au moyen d’un document en la forme écrite (par ex. courrier, fax, courriel), sans avoir à indiquer de motifs. Le délai commence de courir à compter de la réception des informations correspondantes en la forme d’un document écrit, mais en tout état de cause non avant la passation du contrat, et non plus avant l’exécution de notre obligation d’information telle que régie par l`article 246 § 2 en liaison avec le § 1 alinéas 1 et 2 de la loi d’introduction au code civil allemand (EGBGB), et nos obligations conformément au § 312e alinéa 1 point 1 du code civil allemand (BGB) en liaison avec l`article 246 § 3 de la loi d’introduction au code civil allemand (EGBGB). Pour exercer valablement son droit à rétractation, il suffit de l’adresser avant l’expiration du délai de rétractation. La demande de rétractation devra être adressée à : Gameforge Productions GmbH, Albert-Nestler-Strasse 8, 76131 Karlsruhe
Conséquences de la rétractation
En cas de rétractation intervenue dans les délais, les prestations réciproques obtenues doivent être restituées et les utilisations éventuelles, compensées (par ex. intérêts). Au cas où vous ne pourriez pas nous restituer intégralement ou même en partie la prestation obtenue, ou bien également au cas où elle ne pourrait nous être restituée qu’en mauvais état, vous devrez alors le cas échéant nous indemniser de la valeur de remplacement. Les obligations de remboursement de paiement devront être exécutées dans un délai de 30 jours. Ledit délai commencera de courir à votre encontre à partir de l’envoi de la déclaration de rétractation, et à notre égard à partir de la réception de celle-ci.
Informations spécifiques
Votre droit de rétractation s’éteint prématurément si le contrat entre les deux parties est pleinement rempli avec votre accord exprès avant d`avoir exercé votre droit de rétractation.
Fin des informations sur le droit de rétractation
4	Obligations générales de l’utilisateur
4.1.	Données personnelles de l’utilisateur
L’utilisateur s’oblige à communiquer immédiatement à « Gameforge » tous changements futurs intervenus concernant les données indiquées par lui lors de l’enregistrement, notamment un changement de la messagerie électronique. L’utilisateur s’oblige à la demande de « Gameforge » à certifier l’exactitude des données transmises.
4.2	« Données Log-in » / Code d’accès / Mots de passe
4.2.1.	L’utilisateur s’oblige à conserver la stricte confidentialité de ses « Données Log-in » et de tous ses codes d’accès et mots de passe. L’utilisateur s’oblige à n’entrer exclusivement ses « Données Log-in » que sur les pages du site Internet exploité par « Gameforge ».
4.2.2.	Par les concepts « Données Log-in » ou bien « Codes d’accès et Mots de passe », il faut comprendre toutes les suites de lettres et/ou de signes et/ou de chiffres, utilisés afin d’authentifier l’utilisateur et d’exclure une utilisation par des tiers non autorisés. Le mot de passe ne devrait pas être identique au nom du joueur et devrait être composé d’une association de chiffres et de lettres.
4.2.3.	L’utilisateur s’oblige à protéger ses « Données Log-in », ses codes d’accès et mots de passe, contre l’accès non autorisé de tiers.
4.2.4.	Dans l’hypothèse où l’utilisateur aurait des raisons de croire que des tiers ont eu ou auraient pu avoir un accès non autorisé à ces données, il devra aussitôt en informer « Gameforge » et modifier lui-même ses données ou bien les faire modifier par « Gameforge ». « Gameforge » aura dans un tel cas de figure, ou bien dans l’hypothèse où « Gameforge » aurait des indices lui permettant de supposer l’existence d’une utilisation abusive des données, la possibilité de verrouiller provisoirement l’accès de l’utilisateur. L’utilisateur sera à nouveau autorisé à faire usage de son droit d’utilisation, dès que le soupçon d’utilisation abusive des données pourra être écarté.
4.2.5.	L’utilisateur ne sera en aucun cas autorisé à utiliser les « Données Log-in » d’un autre utilisateur, sauf si les règles de jeux prévoient des exceptions.
4.3	Utilisation des pages du site Internet de « Gameforge » et du contenu des pages du site
4.3.1.	Les pages du site Internet de « Gameforge » contiennent des contenus de toute sorte qui bénéficient de la protection du droit des marques et de la protection des droits d’auteur, et sont protégés également d’une autre manière en faveur de « Gameforge » ou de tiers. Si les conditions d’utilisation ne l’autorisent pas expressément, l’utilisateur ne sera pas autorisé à remanier les pages du site Internet de « Gameforge » ou bien les contenus mis à disposition sur celles-ci, ou encore à remanier partie de ces pages et contenus, non plus à les reproduire, à les diffuser, à en faire un exposé public, à en faire une utilisation à des fins publicitaires ou bien une utilisation contraire aux objectifs contractuellement convenus. Ne seront autorisées que les seules reproductions nécessitées d’un point de vue technique en vue de la navigation, ou bien la reproduction effectuée à des fins exclusives et durables d’utilisation privée. Les indications concernant les droits d’auteur et la désignation des marques ne doivent pas être modifiées, supprimées ou bien écartées.
4.3.2.	Par la notion « Contenus », il faut comprendre toutes les données, les photos, les textes, les graphiques, les morceaux de musique, les sons, les arrangements musicaux, les vidéos, les programmes, les codes de logiciels et toutes les autres informations qui sont mises à disposition par « Gameforge » sur les pages de son site Internet. Par la notion « Contenus », il faut comprendre également notamment, toutes les offres de prestation de service mises à disposition à des fins de téléchargement.
4.3.3.	L’utilisateur s’oblige à s’abstenir de toutes mesures de nature à perturber ou à porter atteinte au fonctionnement des pages du site Internet de « Gameforge » ou à certains services et prestations de service proposés sur celles-ci, il s’oblige de même à ne pas accéder aux données auxquelles l’utilisateur n’a pas d’autorisation d’accès. L’appel des contenus disponibles doit être effectué sans porter préjudice au droit d’utilisation des pages du site Internet de « Gameforge » et à l’accès aux contenus de celles-ci par les autres utilisateurs. L’envoi de données ou de logiciels pouvant interagir sur le matériel informatique ou le logiciel du destinataire est prohibé.
4.3.4.	Chaque utilisation des pages du site Internet de « Gameforge » à des fins commerciales, notamment publicitaires, nécessitera l’autorisation expresse écrite préalable de « Gameforge ».
4.3.5.	L’utilisateur n’a pas le droit de publier les contenus figurant sur les pages du site Internet de « Gameforge ».
4.3.6.	L’utilisation des pages du site Internet de « Gameforge » au moyen de services assurant l’anonymat, dans le but de supprimer l’adresse IP véritable de l’utilisateur, est prohibée.
4.4.	Liens
La mise en place d’un lien sur les pages du site Internet de « Gameforge » sera autorisée si celui-ci a pour seule fonction de permettre la référence transversale. « Gameforge » se réserve le droit de révoquer cette autorisation. Il sera toutefois prohibé de procéder à un hyperlien afin de pouvoir intégrer ou présenter les pages du site Internet de « Gameforge » ou bien les contenus de celles-ci dans une fenêtre partielle (Frame).
4.5.	Utilisation d’un logiciel client
« Gameforge » accorde à l’utilisateur – pour les offres (y compris les jeux), nécessitant pour leur utilisation l’installation préalable d’un logiciel client – un droit non exclusif (simple), limité à la durée de l’enregistrement auprès de « Gameforge » à l’installation et à l’utilisation d’un logiciel client. La reproduction du logiciel client par l’utilisateur ne sera autorisée que dans la mesure de la nécessité de l’utilisation du logiciel dans le cadre contractuel. Toute forme d’utilisation commerciale du logiciel sera interdite. Seront interdites également, toute modification du logiciel client, une retraduction des codes programmes cédés dans d’autres formes de code (décompilation), ainsi que toute forme de reconstitution des différentes étapes de fabrication du logiciel (Reverse-Engineering), sauf si de telles pratiques sont admises par la loi.
5	Conditions particulières pour l’utilisation des jeux en ligne
5.1.	L’utilisateur ne pourra participer à une partie (par ex. monde, univers, etc.) d’un jeu en ligne qu’avec un seul compte utilisateur, sauf si les règles du jeu prévoient des exceptions. L’emploi de plusieurs comptes utilisateur n’est pas autorisé. De tels comptes multi-utilisateurs pourront être supprimés ou verrouillés à tout moment et discrétionnairement par « Gameforge ».
5.2.	Toute forme d’intervention à des fins de manipulation du jeu en ligne est prohibée. L’utilisateur ne pourra notamment prendre des mesures, utiliser des mécanismes ou des logiciels susceptibles de perturber le fonctionnement et le déroulement du jeu. L’utilisateur doit s’abstenir de prendre des mesures qui conduiraient à une charge déraisonnable et excessive des capacités techniques. Il est interdit à l’utilisateur de bloquer les contenus créés par les instances du jeu, de les écraser ou de les modifier, ou bien d’intervenir d’une manière quelconque dans le jeu en perturbant son déroulement.
5.3.	Il est par ailleurs interdit à l’utilisateur d’appeler le jeu en ligne (y compris chacune des pages du site Internet) en utilisant des programmes autres que le navigateur Internet ou bien le programme client mis à disposition. Cette disposition se réfère notamment aux « Bots » et aux autres « Tools », devant remplacer ou compléter l’interface Web. De même sont interdits les scripts et les programmes automatisés entièrement ou en partie, susceptibles de conférer un avantage à l’utilisateur au détriment des autres joueurs. Sont également interdits les fonctions « Auto-Refresh » et les autres mécanismes intégrés du navigateur Internet, s’il s’agit de procédés automatisés.
5.4.	L’utilisateur ne doit en aucun cas
a) établir ou utiliser des « Cheats », « Mods » et/ou « Hacks », non plus utiliser tout autre logiciel fabriqué par des tiers pouvant modifier les conditions des jeux en ligne,
b) utiliser un logiciel rendant possible le « Datamining », ou d’une autre manière l’interception et la collecte d’informations en rapport avec les jeux en ligne,
\tc) faire usage des objets virtuels devant être utilisés dans les jeux en ligne, en dehors des jeux en ligne, en les achetant moyennant de l’argent « véritable », en les vendant ou bien en les échangeant.
\tCette interdiction englobe également les fraudes à la loi ou agissements similaires, ou bien les agissements pouvant s’apparenter par leurs effets aux interdictions précitées.
5.5.	Le recours à des mesures entravant la publicité est prohibé. A cet égard, le point de savoir si l’entrave est ciblée ou bien si la publicité d’une manière générale ne peut pas s’afficher, par ex. en raison de bloqueurs « pop-up », de logiciels de navigation se basant sur des textes, ou de procédés similaires, est sans incidence aucune sur l’infraction et le dépôt de la plainte correspondante.
5.6.	Le « Log-in » est seulement autorisé par le biais de la page d’accueil du jeu en ligne respectif et par le biais de la page du portail de « Gameforge ». Une ouverture automatisée du compte utilisateur indépendamment de l’affichage à cette occasion de la page d’accueil, n’est pas une manière de procéder autorisée.
5.7.	La totalité des droits sur les objets virtuels mis en place dans les jeux en ligne et cédés moyennant rétribution, reviennent exclusivement à « Gameforge » ou bien au partenaire contractuel autorisé de « Gameforge ». La même règle trouve lieu de s’appliquer pour les objets virtuels créés par l’utilisateur lui-même. L’utilisateur accorde à « Gameforge » sur de tels objets virtuels un droit d’utilisation exclusive et illimitée, spatialement, temporellement et aussi en ce qui concerne le contenu . Ce droit inclut notamment le droit de reproduction, de diffusion et de remaniement. L’utilisateur obtient uniquement sur ces objets virtuels un droit d’utilisation non exclusive, limité dans le temps à la durée du contrat.
6	Conditions particulières pour l’utilisation des possibilités de communication (notamment forum de discussion, chat, fonction commentaires) sur les pages du site Internet de « Gameforge »
6.1.	« Gameforge » peut mettre à la disposition de l’utilisateur différentes possibilités de communication (notamment les forums de discussion, chats, blogs, livres d’or ou autres moyens analogues, de même que dans le cadre de la fonction « commentaires ») pour des contenus propres et des contributions aux pages du site Internet de « Gameforge », que l’utilisateur pourra utiliser dans le cadre des disponibilités effectives. « Gameforge » mettra seule à disposition sur ce point précis les possibilités techniques aux fins d’échanges d’informations. Il n’existe cependant pas de droit à la mise à disponibilité de telles possibilités de communication.
6.2.	L’utilisateur supportera seul la responsabilité des contenus et contributions ajoutés par lui et s’oblige à faire en tout état de cause son affaire personnelle des revendications de tiers à l’encontre de « Gameforge ». « Gameforge » ne fait pas siens expressément les contenus insérés par les utilisateurs. L’utilisateur accorde cependant à « Gameforge » le droit durable, irrévocable et non exclusif à l’utilisation des contenus et des contributions insérés par lui. « Gameforge » précise qu’elle n’effectuera pas de surveillance active des contenus insérés. Il sera cependant procédé à des contrôles effectués au hasard. Par ailleurs, chaque utilisateur a la faculté de dénoncer à « Gameforge » les contenus présumés illégaux. « Gameforge » réagira alors dans les meilleurs délais et les contenus dénoncés seront édités si nécessaires ou bien supprimés.
6.3.	Il est interdit à l’utilisateur de publier ou de diffuser sur les pages du site Internet de « Gameforge » et particulièrement dans le cadre des possibilités de communication mises à disposition, des contenus qui
\ta) portent atteinte au droit en vigueur, sont contraires aux règlements ou bien aux bonnes moeurs;
b) portent atteinte au droit des marques, aux brevets, aux modèles d’utilité, aux dessins décoratifs, aux droits d’auteur, au secret commercial, ou bien à d’autres droits de tiers;
c) présentent un caractère obscène, raciste, font l’apologie de la violence, sont de nature pornographique, peuvent préjudicier ou bien mettre en péril le développement des enfants et des jeunes ;
d) présentent un caractère insultant, outrageant ou bien diffamatoire;
e) contiennent des lettres chaînes ou des systèmes boule de neige;
f) de manière dolosive donnent l’impression d’avoir été mis à disposition par « Gameforge » ou bien d’avoir le soutien de celle-ci;
g) ont pour objet des données personnelles de tiers sans avoir obtenu l’approbation expresse de ceux-ci;
h) présentent un caractère commercial et notamment publicitaire.
6.4.	La mention de pages Internet, d’entreprises ou de noms de produits n’est autorisée que sous réserve que cette mention ne poursuive pas un objectif prioritairement publicitaire.
6.5.	Tous les utilisateurs des possibilités de communication mises à disposition sur les pages du site Internet de « Gameforge » s’obligent à retenir un mode verbal acceptable. Le dénigrement et les attaques avilissantes contre les personnes ne sont pas autorisés.
6.6.	Indépendamment des autres droits résultant des présentes conditions d’utilisation, « Gameforge » se réserve le droit de modifier, de même que de supprimer en tout ou partie, les contenus et les contributions qui porteraient atteinte aux règles précitées. « Gameforge » a par ailleurs le droit d’interdire totalement ou à titre temporaire, une utilisation ultérieure des jeux en ligne, des pages du site Internet de « Gameforge » ou bien d’autres offres de prestations de service, à des utilisateurs qui viendraient à enfreindre lesdites règles.
7	Conséquences d’une violation des obligations contractuelles
7.1.	« Gameforge » ne sera pas responsable des dommages résultant d’une violation des obligations incombant à l’utilisateur.
7.2.	Indépendamment de tous ses autres droits légaux et contractuels, « Gameforge » pourra se prévaloir d’un pouvoir discrétionnaire propre lui permettant de prendre les mesures suivantes, si un utilisateur enfreint de manière fautive les prescriptions légales, les droits de tiers, les présentes conditions d’utilisation ou les conditions complémentaires applicables et les règles de jeu
a) modification ou suppression de contenus,
b) avertissement de l’utilisateur,
c) publication du comportement fautif dans le jeu en ligne concerné en mentionnant le nom de l’utilisateur,
d) verrouillage temporaire ou durable d’un utilisateur à l’accès à certains jeux ou bien à tous les jeux en ligne et aux pages du site Internet de « Gameforge »,
\te) exclusion de l’utilisateur,
\tf) prononciation d’une interdiction d’accès virtuel provisoire ou durable dans les cas d’une violation des dispositions du paragraphe 6, ou
g) résiliation sans délai de préavis du contrat d’utilisation.
7.3.	Si un utilisateur a été verrouillé ou exclu, il ne peut se reconnecter sans avoir obtenu l’autorisation préalable de « Gameforge ». Il n’existe pas de droit à la levée d’un verrouillage, d’une exclusion, d’une interdiction d’accès virtuel, ou de toute autre mesure.
8	Rétributions d’utilisation
8.1.	Dans la mesure où il n’a pas été expressément disposé autrement, l’utilisation des jeux en ligne et des autres offres de prestations de service est gratuite.
8.2.	L’utilisateur pourra cependant acquérir moyennant rétribution, certaines offres de prestations de service et certains accessoires « Features » dans le cadre des jeux en ligne. L’utilisateur sera informé dans un document séparé, sur la nature des accessoires ouvrant droit à rétribution, en particulier sur la fonction respective de l’accessoire, le cas échéant sur la durée de mise à disposition de l’accessoire ouvrant droit à rétribution, sur le montant des sommes à payer ainsi que sur le mode de paiement possible en liaison avec le jeu en ligne respectif.
8.3.	Si un utilisateur mineur souhaite acquérir un accessoire ouvrant droit à rétribution, il devra garantir que les moyens financiers lui ont été remis en vue du paiement de l’accessoire ouvrant droit à rétribution par son représentant légal à cette fin, ou bien pour en faire un libre usage.
8.4.	Les rétributions respectivement convenues sont exigibles au jour de la passation du contrat. La mise en recouvrement est effectuée en règle générale par le prestataire de service respectif mandaté aux fins d’engager le processus de recouvrement, le recouvrement pouvant être effectué quelques jours à l’avance afin de pouvoir garantir une utilisation complète. Eventuellement, les Conditions Commerciales Générales intégrées au cas par cas par le prestataire de service mandaté, pourront trouver à s’appliquer parallèlement aux présentes conditions d’utilisation.
8.5.	L’utilisateur garantit que toutes les indications données par lui dans le cadre d’un processus de recouvrement, sont complètes et véritables (notamment les références bancaires, le numéro de carte de crédit, etc.).
8.6.	Les possibilités de paiement varient en fonction respectivement de chaque jeu en ligne, du pays du participant et des possibilités de paiement techniquement réalisables. « Gameforge » se réserve la possibilité de modifier à tout moment les conditions de paiement.
8.7.	« Gameforge » se réserve la possibilité de modifier les rétributions pour les accessoires internes au jeu (y compris les monnaies virtuelles). Cela comprend le droit de « Gameforge » dans les hypothèses d’acquisitions futures d’accessoires internes au jeu, d’augmenter ou de diminuer les rétributions de certains accessoires internes au jeu.
8.8.	En cas de retard, les intérêts au taux légal seront dus. « Gameforge » sera par ailleurs fondée à fermer le compte utilisateur, à exiger un dédommagement en cas de poursuite du préjudice, et à interrompre les prestations.
8.9.	Au cas où des redevances d’annulation ou des contre-passations d’opérations de crédit résulteraient d’un comportement fautif de l’utilisateur (comme par ex. dans le cas d’une insuffisance de provision bancaire), alors l’utilisateur sera tenu de supporter les frais correspondants. « Gameforge » pourra exiger le prélèvement desdits frais et de la rétribution due. Si le paiement est effectué par retrait avec carte bancaire, une note de débit pouvant aller jusqu’à 50 euros par retrait avec carte bancaire sera due, avec en sus les frais bancaires supportés par « Gameforge ». « Gameforge » sera fondée à exiger un dédommagement en cas de poursuite du préjudice.
9	Clause de limitation de responsabilité
9.1.	L’utilisateur sera directement et personnellement responsable en cas de violation de droits de tiers lui étant imputable, envers ceux-ci. L’utilisateur s’oblige à indemniser « Gameforge » de tous les préjudices subis, résultant du non-respect des obligations lui incombant en vertu des présentes conditions d’utilisation. L’utilisateur s’oblige à faire son affaire personnelle de toutes les revendications dont pourraient se prévaloir les autres utilisateurs ou bien des tiers à l’encontre de « Gameforge », en raison de la violation de leurs droits par suite des contenus insérés par l’utilisateur ou par suite de la violation d’autres obligations. L’utilisateur prendra à sa charge les frais nécessaires engagés par « Gameforge » pour assurer la défense de ses droits, y compris les dépens de justice et les honoraires d’avocat. Cette disposition ne s’appliquera pas si l’atteinte au droit n’est pas imputable à l’utilisateur.
9.2.	La responsabilité de « Gameforge », quelle que puisse en être par ailleurs le fondement juridique, qu’il s’agisse de la responsabilité pour la violation d’une obligation contractuelle ou en raison d’un agissement illicite, sera déterminée limitativement par les dispositions suivantes :
9.2.1.	Dans la mesure où « Gameforge » fournit gratuitement la prestation à l’origine de l’engagement de sa responsabilité, « Gameforge » ne sera alors responsable que de ses manœuvres dolosives et de ses fautes lourdes.
9.2.2.	En cas de prestations ouvrant droit à rétribution, « Gameforge » sera responsable de ses manœuvres dolosives et de ses fautes lourdes, et s’agissant de dommages occasionnés aux personnes, il engagera sa responsabilité de manière illimitée pour ses fautes légères, mais uniquement en cas de violation de ses obligations contractuelles essentielles, aussi en cas de retard et d’impossibilité imputable à « Gameforge ». Sa responsabilité en cas de violation d’une telle obligation contractuelle essentielle, sera limitée aux dommages spécifiquement contractuels, en d’autres termes des dommages auxquels « Gameforge » pouvait s’attendre lors de la passation du contrat compte tenu des circonstances connues d’elle à cet instant précis.Par le concept juridique « Obligations contractuelles essentielles » au sens précité, il faut comprendre les obligations permettant la bonne mise en oeuvre du contrat et la réalisation des objectifs recherchés, et dont l’utilisateur était en droit d’attendre leur respect.
9.2.3.	Pour les perturbations dans le réseau de distribution non imputables à « Gameforge », celle-ci n’assumera aucune responsabilité.
9.2.4.	En cas de perte de données, « Gameforge » engagera sa responsabilité conformément aux dispositions des paragraphes ci-dessus, et dans la stricte mesure où une telle perte n’aurait pas pu être évitée si l’utilisateur avait pris des mesures de sécurisation de données appropriées.
9.2.5.	Les clauses limitatives de responsabilité précitées ne trouveront pas lieu de s’appliquer lorsque « Gameforge » aura expressément accepté la prise de garantie, non plus en cas de dol, ni dans les cas d’atteinte à la vie, à l’intégrité corporelle et à la santé des personnes, d’existence de dispositions législatives à effet contraignant.
10	Durée du contrat / Suppression des comptes utilisateurs
10.1.	Sauf si les règles respectives du jeu en ligne ou bien l’offre respective de prestations de service spécifient expressément le contraire, le contrat passé en vue de l’utilisation du portail de « Gameforge », des jeux en ligne et des autres offres de prestations de service aura une durée indéterminée. Il prend effet avec l’autorisation et le déverrouillage de « Gameforge ».
10.2.	Le contrat pourra être résilié dans les conditions ordinaires à tout moment par les deux parties contractuelles, et avec effet immédiat, si une durée limitée n’a pas été convenue. Si une durée limitée a été convenue, la résiliation ordinaire ne pourra intervenir qu’en fin de durée contractuelle. Si aucune résiliation n’intervient alors, le contrat respectif à durée limitée se renouvellera automatiquement par tacite reconduction, de la durée initialement convenue.
10.3.	Chaque cocontractant aura le droit de résilier le contrat pour un motif grave, sans avoir à observer de délai de préavis. Il y aura motif grave lorsque
a) l’utilisateur sera en retard dans le paiement des rétributions et qu’il continue de ne pas payer après délivrance d’une mise en demeure,
b) une attitude perturbant les conditions du jeu des autres joueurs de manière non négligeable, est constatée,
c) l’utilisation de « Cheats », « Mods » et/ou « Hacks », ou de toute autre forme de logiciel, de « Tools » ou bien de « Scripts » vient modifier les conditions ou le mécanisme des jeux en ligne,
d) des tiers jouent en utilisant le compte de l’utilisateur sauf si les règles de jeu prévoient des exceptions,
e) l’utilisateur joue en utilisant le compte utilisateur d’un tiers ou en faisant usage de plusieurs comptes d’utilisateurs pour un jeu en ligne, sauf si les règles de jeu prévoient des exceptions,
f) l’utilisateur utilises des objets virtuels utilisés dans les jeux en ligne, en-dehors des jeux en ligne, dans le but d’essayer de les acheter, de les vendre ou de les échanger contre de l’argent « véritable », ou bien
g) l’utilisateur se rend coupable d’une infraction aux lois, d’une violation des conditions d’utilisation, y compris une violation des conditions complémentaires en vigueur et des règles de jeu.
10.4.	Chaque résiliation devra revêtir la forme écrite. Les résiliations par courriel répondent à cette exigence de forme écrite.
10.5.	Lorsque des raisons objectives le justifient (par ex. inactivité prolongée), « Gameforge » sera habilitée à supprimer le compte utilisateur. Par ailleurs, « Gameforge » sera habilitée à faire usage de son droit discrétionnaire de suppression des comptes utilisateurs en fin de contrat.
11	Protection des données
11.1.	Les données personnelles de l’utilisateur ne sont prélevées, travaillées, ou utilisées que si l’utilisateur a donné son approbation correspondante ou si la loi fédérale de protection des données (en allemand : BDSG), la loi sur les médias télématiques (en allemand : TMG), ou bien une autre prescription juridique le stipule ou l’autorise.
11.2.	Pour des détails supplémentaires, cf. Déclaration de confidentialité « Gameforge ».
12	Droit applicable / Compétence juridictionnelle
12.1.	S’appliquera le droit en vigueur dans la République fédérale d’Allemagne, à l’exclusion du droit onusien en matière de ventes.
12.2.	Si l’utilisateur ne ressort pas de la compétence d’une juridiction ordinaire en Allemagne ou si l’utilisateur a le statut de commerçant au sens du Code de commerce, c’est le Tribunal situé dans le ressort du siège de « Gameforge » qui aura compétence juridictionnelle pour connaître de tous les litiges. « Gameforge » aura par ailleurs la possibilité de saisir la juridiction ordinaire située dans le ressort du domicile de l’utilisateur.
13	Modifications des présentes conditions d’utilisation / Divers/ Communication / Clause de sauvegarde
13.1.	« Gameforge » se réserve le droit de pouvoir modifier les présentes conditions d’utilisation. Les utilisateurs seront informés dans le cadre du « Log-in » des conditions modifiées, au plus tard dans un délai de deux semaines à compter de leur entrée en vigueur, sur le portail de « Gameforge » ou bien sur le jeu en ligne respectif. A titre alternatif, « Gameforge » peut faire parvenir par courriel à l’utilisateur les conditions modifiées ou bien attirer son attention sur le fait que les conditions modifiées peuvent être consultées sur les pages du site Internet de « Gameforge ». En faisant un nouveau « Log-in » sur le portail de « Gameforge » ou bien pour accéder à un jeu en ligne, après l’entrée en vigueur des conditions d’utilisation modifiées, l’utilisateur déclare admettre la validité des conditions modifiées.« Gameforge » attirera l’attention de l’utilisateur dans un document séparé revêtant selon un mode approprié, sur l’importance pour lui du délai de deux semaines pour exercer son droit de rétractation, et sur les conséquences juridiques qui seront attachées à son silence.
13.2.	L’utilisateur ne sera autorisé à transmettre ses droits et obligations tels que découlant du présent contrat, qu’avec l’autorisation expresse préalable de « Gameforge ».
13.3.	L’utlisateur ne sera habilité à procéder par voie de compensation que si sa créance en contrepartie a été établie avec force exécutoire, ou bien a été reconnue par « Gameforge », ou bien n’est pas contestée par celle-ci. L’utilisateur ne pourra exercer un droit de rétention que si ce droit porte sur des droits de l’utilisateur résultant du présent contrat.
13.4.	« Gameforge » communiquera en règle générale avec l’utilisateur par voie de courriel – sauf si les conditions d’utilisation disposent autrement -. L’utilisateur déclare qu’il ouvrira régulièrement sa messagerie électronique indiquée à l’occasion de son enregistrement, afin de vérifier s’il a reçu des messages de « Gameforge ». Si l’utilisateur s’adresse à « Gameforge », il devra indiquer à quel jeu en ligne et à quel compte utilisateur il se réfère.
13.5.	Chaque modification et/ou suppression des présentes conditions d’utilisation devra revêtir la forme écrite. Cette disposition vaut également en ce qui concerne une modification ou une suppression de l’exigence de la forme écrite.
13.6.	Au cas où certaines dispositions des présentes conditions d’utilisation viendraient à être caduques, ou/et contrediraient des dispositions légales, alors la validité des dispositions restantes resterait inchangée. La disposition caduque sera remplacée d’un commun accord entre les parties contractantes par une disposition légale de même sens poursuivant au plus près la même finalité économique que la disposition caduque. Lesdites dispositions s’appliqueront également en cas de constatations de lacunes dans les présentes conditions d’utilisation.
</textarea>
          </p>
          
           <input type=checkbox name ="cgu" value="1" required="required"/><label>J'accepte les conditions générales d'utilisation</label><br/>
           <input type=checkbox  name ="newsletter" value="1"/><label>J'accepte de recevoir la newsletter du site</label><br/>        	
           <input type=checkbox  name ="newspar" value="1"/><label>J'accepte de recevoir la newsletter des partenaires</label>         	
  		   <p><input type="submit" value="Submit!"></p>
       </fieldset> 
      
      
            </form>
        </div>
    </body>
</html>
<!--<include file="BasDePage.jsp" %> a revoir ensuite ! -->