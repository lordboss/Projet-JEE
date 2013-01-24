<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<li><a href="production">Pierre : ${player.resources.stone}</a></li>
<li><a href="production">Or : ${player.resources.gold}</a></li>
<li><a href="production">Argent : ${player.resources.argent}</a></li>
<li><a href="production">Cuivre : ${player.resources.cuivre}</a></li>
<li><a href="production">Métal : ${player.resources.metal}</a></li>
<li><a href="mail">Messages : ${ player.stats.mailUnread > 0 ? '<span class="badge badge-important">' : '' }${player.stats.mailCount}${ player.stats.mailUnread > 0 ? '</span>' : '' }</a></li>