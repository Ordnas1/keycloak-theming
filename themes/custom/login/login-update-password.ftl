<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "header">
        ${msg("updatePasswordTitle")}
    <#elseif section = "form">
        <form id="kc-passwd-update-form" class="${properties.gmwLoginForm!}" action="${url.loginAction}" method="post" class="${properties.gmwLoginForm}">
            <header class="${properties.gmwLoginHeader}">
                <h1 id="kc-page-title" class="${properties.gmwLoginTitle!}">${msg("updatePasswordTitle")}</h1>
                <p class="${properties.gmwLoginDescription}">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fermentum iaculis augue vitae sollicitudin. 
                </p>
            </header>

            <main>
                <input type="text" id="username" name="username" value="${username}" autocomplete="username" readonly="readonly" style="display:none;"/>
                <input type="password" id="password" name="password" autocomplete="current-password" style="display:none;"/>

                <div class="${properties.gmwFormGroup!} mb-20">
                    <label for="password-new" class="${properties.gmwLabel!}">${msg("passwordNew")}</label>
                    <input type="password" id="password-new" name="password-new" class="${properties.gmwLoginInput!}" autofocus autocomplete="new-password" placeholder="********" />
                </div>

                <div class="${properties.gmwFormGroup!} mb-20">
                    <label for="password-confirm" class="${properties.gmwLabel!}">${msg("passwordConfirm")}</label>
                    <input type="password" id="password-confirm" name="password-confirm" class="${properties.gmwLoginInput!}" autocomplete="new-password" placeholder="********" />
                </div>
            </main>

            <footer class="${properties.gmwLoginFooter}">
                <div class="${properties.kcFormOptionsWrapperClass!}">
                </div>

                <div id="kc-form-buttons" class="">
                    <#if isAppInitiatedAction??>
                    <button class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!}" type="submit" name="cancel-aia" value="true" />${msg("doCancel")}</button>
                    <input class="${properties.gmwLoginBtn}" type="submit" value="${msg("doSubmit")}" />
                    <#else>
                    <input class="${properties.gmwLoginBtn}" type="submit" value="${msg("doSubmit")}" />
                    </#if>
                </div>

            </footer>
        </form>
    </#if>
</@layout.registrationLayout>
