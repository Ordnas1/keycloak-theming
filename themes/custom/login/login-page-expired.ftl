<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "header">
        
    <#elseif section = "form">
        <h1 id="kc-page-title" class="${properties.gmwLoginTitle!}">${msg("pageExpiredTitle")}</h1>
        <p id="instruction1" class="instruction high-em">
            ${msg("pageExpiredMsg1")} <a id="loginRestartLink" href="${url.loginRestartFlowUrl}">${msg("doClickHere")}</a> .<br/>
            ${msg("pageExpiredMsg2")} <a id="loginContinueLink" href="${url.loginAction}">${msg("doClickHere")}</a> .
        </p>
    </#if>
</@layout.registrationLayout>
