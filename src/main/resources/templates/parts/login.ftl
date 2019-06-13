<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group">
            <label>User Name</label>
            <input type="text" name="username" class="form-control" placeholder="username"/>
        </div>

        <div>
            <label> Password</label>
            <input type="password" name="password" class="form-control" placeholder="password"/>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <div class="mb-2"></div>
        <#if isRegisterForm>
        <button type="submit" class="btn btn-primary">Create user</button>
        <#else>
        <button type="submit" class="btn btn-primary">Register</button>
        </#if>
        <div class="mb-2"></div>
        <#if !isRegisterForm><a href="/registration">Add new user</a></#if>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary"> Sign Out</button>
    </form>
</#macro>