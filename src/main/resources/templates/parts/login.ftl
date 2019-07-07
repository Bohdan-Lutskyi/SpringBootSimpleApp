<#macro login path isRegisterForm>

    <form action="${path}" method="post">
        <div class="form-group">
            <label>User Name</label>
            <input type="text" name="username" value="<#if user??>${user.username}</#if>"
                   class="form-control ${(usernameError??)?string('is-invalid', '')}" placeholder="username" />
            <#if usernameError??>
                <div class="invalid-feedback">
                    ${usernameError}
                </div>
            </#if>
        </div>
        <div>
            <label> Password</label>
            <input type="password" name="password"
                   class="form-control ${(passwordError??)?string('is-invalid', '')}" placeholder="password"/>
            <#if passwordError??>
                <div class="invalid-feedback">
                    ${passwordError}
                </div>
            </#if>
        </div>

        <#if isRegisterForm>
            <div>
                <label> Password</label>
                <input type="password" name="password2"
                       class="form-control ${(password2Error??)?string('is-invalid', '')}"
                       placeholder="Retype password"/>
                <#if password2Error??>
                    <div class="invalid-feedback">
                        ${password2Error}
                    </div>
                </#if>
            </div>
            <div>
                <label> Email</label>
                <input type="email" name="email" value="<#if user??>${user.email}</#if>"
                       class="form-control ${(emailError??)?string('is-invalid', '')}" placeholder="some@some.com"/>
                <#if emailError??>
                    <div class="invalid-feedback">
                        ${emailError}
                    </div
                </#if>
            </div>
            <div>
                <div class="g-recaptcha mt-3" data-sitekey="6Lc4F6kUAAAAAHOCGIf8L2DwagSG6d6P2MNJ9RS8"></div>
                <#if captchaError??>
                    <div class="alert alert-danger" role="alert">
                        ${captchaError}
                    </div>
                </#if>
            </div>
        </#if>

        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <div class="mb-2"></div>

        <#if isRegisterForm>
            <button type="submit" class="btn btn-primary">Create user</button>
        <#else>
            <button type="submit" class="btn btn-primary">Sign in</button>
        </#if>

        <div class="mb-2"></div>
        <#if !isRegisterForm><a href="/registration">Add new user</a></#if>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary"><#if user??>Sign Out<#else >Log In</#if></button>
    </form>
</#macro>