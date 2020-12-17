<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo displayWide=(realm.password && social.providers??); section>

    <#if section = "form">
    <div id="kc-form" <#if realm.password && social.providers??>class="${properties.kcContentWrapperClass!}"</#if>>
      <div id="kc-form-wrapper" <#if realm.password && social.providers??>class="${properties.kcFormSocialAccountContentClass!} ${properties.kcFormSocialAccountClass!}"</#if>>
        <#if realm.password>
            <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post" class="${properties.gmwLoginForm}">
                <header class="${properties.gmwLoginHeader}">
                    <h1 id="kc-page-title" class="${properties.gmwLoginTitle!}">${msg("doLogIn")}</h1>
                    <p class="${properties.gmwLoginDescription}">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fermentum iaculis augue vitae sollicitudin. 
                    </p>
                </header>
                <main>
                    <div class="${properties.kcFormGroupClass!} mb-20">
                        <label for="username" class="${properties.kcLabelClass!}"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>

                        <#if usernameEditDisabled??>
                            <input tabindex="1" id="username" class="${properties.kcInputClass!}" name="username" value="${(login.username!'')}" placeholder='${msg("usernamePlaceholder")}' type="text" disabled />
                        <#else>
                            <input tabindex="1" id="username" class="${properties.kcInputClass!}" name="username" value="${(login.username!'')}" placeholder='${msg("usernamePlaceholder")}' type="text" autofocus autocomplete="off" />
                        </#if>
                    </div>

                    <div class="${properties.kcFormGroupClass!} mb-10">
                        <label for="password" class="${properties.kcLabelClass!}">${msg("password")}</label>
                        <input tabindex="2" id="password" class="${properties.kcInputClass!}" name="password" type="password" placeholder="********" autocomplete="off" />
                    </div>
                    <#if realm.rememberMe && !usernameEditDisabled??>
                        <div>
                            <label class="${properties.gmwLoginRememberMe}">
                                <#if login.rememberMe??>
                                    <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" checked> ${msg("rememberMe")}
                                <#else>
                                    <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox"> ${msg("rememberMe")}
                                </#if>
                            </label>
                        </div>
                    </#if>
                </main>

                <footer class="${properties.gmwLoginFooter}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <#if realm.resetPasswordAllowed>
                            <span><a class="${properties.gmwLoginForgotPassword}"tabindex="5" href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a></span>
                        </#if>
                    </div>
                     <div id="kc-form-buttons" class="">
                        <input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if>/>
                        <input tabindex="4" class="${properties.gmwLoginBtn}" name="login" id="kc-login" type="submit" value="${msg("doLogIn")}"/>
                    </div>
                </footer>

                <#--  <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">
                </div>  -->
            </form>
        </#if>
        </div>
        <#if realm.password && social.providers??>
            <div id="kc-social-providers" class="${properties.kcFormSocialAccountContentClass!} ${properties.kcFormSocialAccountClass!}">
                <ul class="${properties.kcFormSocialAccountListClass!} <#if social.providers?size gt 4>${properties.kcFormSocialAccountDoubleListClass!}</#if>">
                    <#list social.providers as p>
                        <li class="${properties.kcFormSocialAccountListLinkClass!}"><a href="${p.loginUrl}" id="zocial-${p.alias}" class="zocial ${p.providerId}"> <span>${p.displayName}</span></a></li>
                    </#list>
                </ul>
            </div>
        </#if>
      </div>
    <#elseif section = "info" >
        <#if realm.password && realm.registrationAllowed && !registrationDisabled??>
            <div id="kc-registration">
                <span>${msg("noAccount")} <a tabindex="6" href="${url.registrationUrl}">${msg("doRegister")}</a></span>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>
