<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
        
    <#if section = "form">
        <form id="kc-reset-password-form" class="${properties.gmwLoginForm!}" action="${url.loginAction}" method="post">
            <header class="${properties.gmwLoginHeader}">
                <h1 id="kc-page-title" class="${properties.gmwLoginTitle!}">${msg("emailForgotTitle")}</h1>
                <p class="${properties.gmwLoginDescription}">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fermentum iaculis augue vitae sollicitudin. 
                        
                </p>
            </header>
            <div class="${properties.kcFormGroupClass!}">
                
                <label for="username" class="${properties.kcLabelClass!}"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
                
                
                <#if auth?has_content && auth.showUsername()>
                    <input type="text" id="username" name="username" class="${properties.kcInputClass!}" autofocus value="${auth.attemptedUsername}"/>
                <#else>
                    <input type="text" id="username" name="username" class="${properties.kcInputClass!}" autofocus/>
                </#if>
                
            </div>
            <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <span><a href="${url.loginUrl}">${kcSanitize(msg("backToLogin"))?no_esc}</a></span>
                    </div>
                </div>

                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}"/>
                </div>
            </div>
        </form>
    <#elseif section = "info" >
        ${msg("emailInstruction")}
    </#if>
</@layout.registrationLayout>
