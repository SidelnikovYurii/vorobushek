<#-- @ftlvariable name="model" type="ru.qatools.school.vorobushek.models.UserContext" -->
<#import "layouts/main.ftl" as layout />
<@layout.layout title="Blog: posts" userName=model.getCurrentUserString()>
<div class="row">
    <div class="col-md-12">
        <div class="page-header">
            <h2>All Posts</h2>
        </div>
        <#list model.getPosts() as post>
            <div class="panel panel-default">
                <div class="panel-body">
                    <a href="/post/${post.id}">${post.title}</a> at ${post.createdAt} by ${post.user.displayName} <span class="badge">${post.getCommentsCount()}</span> <br/>
                </div>
            </div>
        </#list>
    </div>
</div>
</@layout.layout>