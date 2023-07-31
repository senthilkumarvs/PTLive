<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="ProfitTrader.Admin.ChangePassword" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>

    <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">
                    Change Password
                </div>
                <div class="ava_s_card_body">



                    <div class="row">

                        <div class="col-md-10">
                            <div class="row">

                                <div class="col-md-3  col-6">
                                    <div class="ava_s_card_serch_bx">
                                        <div class="ava_s_card_serch_bx_txt">Current Password</div>
                                        <asp:TextBox ID="txtoldpwd" runat="server" class="ava_s_card_serch_txt_bx" ToolTip="Enter Current PassWord" TextMode="Password">
                                        </asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-3  col-6">
                                    <div class="ava_s_card_serch_bx">
                                        <div class="ava_s_card_serch_bx_txt">New Password</div>
                                        <asp:TextBox ID="txtnewpassword" runat="server" class="ava_s_card_serch_txt_bx" ToolTip="Enter Current PassWord" TextMode="Password">
                                        </asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnewpassword" ValidationGroup="vg"
                                            ErrorMessage="*" class="ava_s_frm_vld"></asp:RequiredFieldValidator>

                                    </div>
                                </div>

                                <div class="col-md-3  col-6">
                                    <div class="ava_s_card_serch_bx">
                                        <div class="ava_s_card_serch_bx_txt">Confirm Password</div>

                                        <asp:TextBox ID="txtconfirm" runat="server" class="ava_s_card_serch_txt_bx" ToolTip="Enter Current PassWord" TextMode="Password">
                                        </asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtconfirm" ValidationGroup="vg"
                                            ErrorMessage="*" class="ava_s_frm_vld"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Not Matched New password?"
                                            ControlToCompare="txtnewpassword" ControlToValidate="txtconfirm" ValidationGroup="vg"></asp:CompareValidator>

                                    </div>

                                </div>
                                <div class="col-md-2 col-7 mbl_mr_auto">
                                    <asp:Button ID="btnchange" runat="server" Text="Change"
                                        OnClick="btnchange_Click" ValidationGroup="vg" class="btn btn-primary" />

                                    <asp:Button ID="btncancel" runat="server" Text="Cancel"
                                        OnClick="btncancel_Click" class="btn btn-danger " Visible="false" />

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
