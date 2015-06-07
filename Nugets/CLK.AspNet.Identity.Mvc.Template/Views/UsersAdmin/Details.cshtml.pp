﻿@model $rootnamespace$.Models.ApplicationUser

@{
    ViewBag.Title = "Details";
}

<h2>Details.</h2>
<br />

<h4>This user</h4>
<table class="table">
    <tr>
        <td style="width:80pt;">
            @Html.DisplayNameFor(model => model.UserName)
        </td>
        <td>
            @Html.DisplayFor(model => model.UserName)
        </td>
    </tr>
</table><br />

<h4>List of roles for this user</h4>
@if (ViewBag.RoleNames.Count == 0)
{
    <hr />
    <p>No roles found for this user.</p>
}
<table class="table">
    @foreach (var item in ViewBag.RoleNames)
    {
        <tr>
            <td>
                @item
            </td>
        </tr>
    }
</table><br />


<p>
    @Html.ActionLink("Edit", "Edit", new { id = Model.Id }) |
    @Html.ActionLink("Back to List", "Index")
</p>



