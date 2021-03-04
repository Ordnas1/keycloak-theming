<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
        
    <#if section = "form">
        <form id="kc-reset-password-form" class="${properties.gmwLoginForm!}" action="${url.loginAction}" method="post">
            <header class="${properties.gmwLoginHeader}">
                <h1 id="kc-page-title" class="${properties.gmwLoginTitle!}">${msg("emailForgotTitle")}</h1>
                <p class="${properties.gmwLoginDescription}">
                   ${msg("emailInstruction")}     
                </p>
            </header>
            <main class="${properties.gmwFormGroup!}">
                
                <label for="username" class="${properties.gmwLabel!}"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
                
                
                <#if auth?has_content && auth.showUsername()>
                    <input type="text" id="username" name="username" class="${properties.gmwLoginInput!}" autofocus value="${auth.attemptedUsername}" placeholder='${msg("usernamePlaceholder")}'/>
                <#else>
                    <input type="text" id="username" name="username" class="${properties.gmwLoginInput!}" autofocus placeholder='${msg("usernamePlaceholder")}'/>
                </#if>
                
            </main>
            <footer class="${properties.gmwLoginFooter}">
                <div id="kc-form-options" class="">
                    <div class="">
                        <span><a class="${properties.gmwLoginForgotPassword}" href="${url.loginUrl}">${kcSanitize(msg("backToLogin"))?no_esc}</a></span>
                    </div>
                </div>

                <div id="kc-form-buttons">
                    <input class="${properties.gmwLoginBtn!} " type="submit" value="${msg("doSubmit")}"/>
                </div>
            </footer>
        </form>
    <#elseif section = "info" >
        
    </#if>
</@layout.registrationLayout>
