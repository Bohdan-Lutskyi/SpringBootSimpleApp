<#import "parts/common.ftl" as c>

<@c.page>
    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="get" action="/main"/>
            <form class="form-inline">
                <input type="text" name="filter" class="form-control" value="${filter!}" placeholder="Search by tag" />
                <button class="btn btn-primary mt-2" type="submit">Search</button>
            </form>
        </div>
    </div>

    <#include "parts/messageEdit.ftl"/>

    <#include "parts/messageList.ftl"/>


</@c.page>