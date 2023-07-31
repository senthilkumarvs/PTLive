<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="ProductInvestment.aspx.cs" Inherits="ProfitTrader.Admin.ProductInvestment" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="LblActivationId" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="LblMobileNumber" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_topup_count" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lblproname" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="LblActivationStatus" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="LPointValue" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="LblPlaceMentId" runat="server" Text="" Visible="false"></asp:Label>

    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Product Investment</h4>
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
                            <div class="wcf-s-lbl">Product</div>
                            <asp:DropDownList ID="DdlProduct" CssClass="form-control" runat="server">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DdlProduct" InitialValue="Select" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
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
