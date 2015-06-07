﻿@model $rootnamespace$.Models.VerifyPhoneNumberViewModel
@{
    ViewBag.Title = "驗證電話號碼";
}

<h2>@ViewBag.Title.</h2>

@using (Html.BeginForm("VerifyPhoneNumber", "Manage", FormMethod.Post, new { @class = "form-horizontal", role = "form" }))
{
    @Html.AntiForgeryToken()
    @Html.Hidden("phoneNumber", @Model.PhoneNumber)
    <h4>輸入驗證碼</h4>
    <h5>@ViewBag.Status</h5>
    <hr />
    @Html.ValidationSummary("", new { @class = "text-danger" })
    <div class="form-group">
        @Html.LabelFor(m => m.Code, new { @class = "col-md-2 control-label" })
        <div class="col-md-10">
            @Html.TextBoxFor(m => m.Code, new { @class = "form-control" })
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-offset-2 col-md-10">
            <input type="submit" class="btn btn-default" value="提交" />
        </div>
    </div>
}

@section Scripts {
    @Scripts.Render("~/bundles/jqueryval")
}
