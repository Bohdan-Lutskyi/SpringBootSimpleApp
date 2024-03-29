<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
   aria-controls="collapseExample">
    Message Editor
</a>
<div class="collapse <#if message??>show</#if>" id="collapseExample">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" class="form-control ${(textError??)?string('is-invalid', '')}"
                       value="<#if message??>${message.text}</#if>" name="text" placeholder="Enter Message"/>
                <#if textError??>
                    <div class="invalid-feedback">
                        Please provide a valid state.
                    </div>
                </#if>
            </div>
            <div class="form-group">
                <input type="text" class="form-control"
                       value="<#if message??>${message.tag}</#if>" name="tag" placeholder="Tag"/>
                <#if tagError??>
                    <div class="invalid-feedback">
                        Please provide a valid state.
                    </div>
                </#if>
            </div>
            <div class="form-group">
                <div class="custom-file mb-3">
                    <input type="file" name="file" id="customFile" />
                    <label class="custom-file-label" for="customFile">Choose file</label>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <input type="hidden" name="id" value="<#if message??>${message.id}</#if>"/>
                <div>
                    <button class="btn btn-primary" type="submit">Save message</button>
                </div>
            </div>
        </form>
    </div>
</div>