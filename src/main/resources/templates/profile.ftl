<#import "parts/common.ftl" as c>

<@c.page>
    <h5>${username}</h5>
    ${message!}
    <form method="post">
        <div>
            <label>Password</label>
            <input type="password" name="password" class="form-control" placeholder="password"/>
        </div>
        <div class="form-group mt-2">
            <label>Email</label>
            <input type="email" name="email" class="form-control" placeholder="some@some.com" value="${email!''}"/>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <div class="mb-2"></div>
        <button type="submit" class="btn btn-primary">Save</button>
        <div class="mb-2"></div>
    </form>
</@c.page>