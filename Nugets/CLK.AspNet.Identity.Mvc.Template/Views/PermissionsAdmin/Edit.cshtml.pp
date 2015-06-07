﻿@model $rootnamespace$.Models.EditPermissionViewModel

@{
    ViewBag.Title = "Edit";
}

<h2>Edit.</h2>


@using (Html.BeginForm())
{
    @Html.AntiForgeryToken()
    
    <div class="form-horizontal">
        <h4>Permissions.</h4>
        <hr />
        @Html.ValidationSummary(true)
        @Html.HiddenFor(model => model.Id)

        <div class="form-group">
            @Html.LabelFor(model => model.Name, new { @class = "control-label col-md-2" })
            <div class="col-md-10">
                @Html.TextBoxFor(model => model.Name, new { @class = "form-control" })
                @Html.ValidationMessageFor(model => model.Name)
            </div>
        </div>

        <div class="form-group">
            @Html.Label("Roles", new { @class = "control-label col-md-2" })
            <span class=" col-md-10">
                @foreach (var item in Model.RolesList)
                {
                    <input type="checkbox" name="SelectedRole" value="@item.Value" checked="@item.Selected" class="checkbox-inline" />
                    @Html.Label(item.Value, new { @class = "control-label" })
                    <br />
                }
            </span>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <input type="submit" value="Save" class="btn btn-default" />
            </div>
        </div>
    </div>
}

<div>
    @Html.ActionLink("Back to List", "Index")
</div>

@section Scripts {
    @Scripts.Render("~/bundles/jqueryval")
}
