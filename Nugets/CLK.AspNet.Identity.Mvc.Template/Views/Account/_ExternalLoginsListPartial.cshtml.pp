﻿@model $rootnamespace$.Models.ExternalLoginListViewModel
@using Microsoft.Owin.Security

<h4>使用其他服務登入。</h4>
<hr />
@{
    var loginProviders = Context.GetOwinContext().Authentication.GetExternalAuthenticationTypes();
    if (loginProviders.Count() == 0) {
        <div>
            <p>
                並未設定外部驗證服務。請參閱<a href="http://go.microsoft.com/fwlink/?LinkId=403804">此文章</a>
                以了解設定此 ASP.NET 應用程式以支援透過外部服務登入的詳細資料。
            </p>
        </div>
    }
    else {
        using (Html.BeginForm("ExternalLogin", "Account", new { ReturnUrl = Model.ReturnUrl })) {
            @Html.AntiForgeryToken()
            <div id="socialLoginList">
                <p>
                    @foreach (AuthenticationDescription p in loginProviders) {
                        <button type="submit" class="btn btn-default" id="@p.AuthenticationType" name="provider" value="@p.AuthenticationType" title="使用 @p.Caption 帳戶登入">@p.AuthenticationType</button>
                    }
                </p>
            </div>
        }
    }
}
