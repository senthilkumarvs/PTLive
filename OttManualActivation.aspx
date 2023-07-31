﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="OttManualActivation.aspx.cs" Inherits="ProfitTrader.Admin.OttManualActivation" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="LblActivationId" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="LblMobileNumber" runat="server" Text="" Visible="false"></asp:Label>
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Ott Manual Activation</h4>
            </div>
            <div class="card-body">
                <div class="row">

                    <div class="col-md-6">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Customer Code</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtActivationCode" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtActivationCode" runat="server" OnTextChanged="TxtActivationCode_TextChanged" AutoPostBack="true" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Customer Name</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtActivationName" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtActivationName" ReadOnly="true" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Type</div>
                            <asp:DropDownList ID="DdlType" CssClass="form-control" runat="server">
                                <asp:ListItem Value="0">Select</asp:ListItem>
                                <asp:ListItem Value="4">Sony Premium Monthly</asp:ListItem>
                                <asp:ListItem Value="5">Zee5 Premium Monthly</asp:ListItem>
                                <asp:ListItem Value="6">SunNXT Premium Monthly</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DdlType" InitialValue="0" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <br />
                <div class="wcf-b-ftr">
                    <asp:LinkButton ID="LinkSave" runat="server" OnClick="LinkSave_Click" class="btn btn-primary" ValidationGroup="vg">Save</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
