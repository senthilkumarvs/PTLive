<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="PaymentRequestDetails.aspx.cs" Inherits="ProfitTrader.Admin.PaymentRequestDetails" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <div class="row">
        <div class="col-xl-12 col-xxl-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Payment Request Details</h4>
                </div>
                <br />
                <div class="card-body pt-2">
                    <div class="row">
                        <div class="col-md-3 col-sm-4 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control av_s_frm_inlne_lbl">From Date</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="Txtfromdate" runat="server" CssClass="ava_s_grm_txtbx form-control datepicker"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control av_s_frm_inlne_lbl">To Date</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="Txttodate" runat="server" CssClass="ava_s_grm_txtbx form-control datepicker"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-10">
                                        <style>
                                            .jkl label {
                                                top: 0px;
                                                margin-left: 6px;
                                                margin-right: 6px;
                                            }
                                        </style>
                                        <asp:CheckBox ID="CheckAll" runat="server" Style="top: 0px !important" CssClass="jkl" Text="All"></asp:CheckBox>
                                        <asp:MutuallyExclusiveCheckBoxExtender ID="M9" runat="server" TargetControlID="CheckAll" Key="mux">
                                        </asp:MutuallyExclusiveCheckBoxExtender>
                                        <asp:CheckBox ID="CheckPending" runat="server" CssClass="jkl" Text="Pending"></asp:CheckBox>
                                        <asp:MutuallyExclusiveCheckBoxExtender ID="MutuallyExclusiveCheckBoxExtender3" runat="server" TargetControlID="CheckPending" Key="mux">
                                        </asp:MutuallyExclusiveCheckBoxExtender>
                                        <asp:CheckBox ID="CheckApprove" runat="server" CssClass="jkl" Text="Approved"></asp:CheckBox>
                                        <asp:MutuallyExclusiveCheckBoxExtender ID="MutuallyExclusiveCheckBoxExtender4" runat="server" TargetControlID="CheckApprove" Key="mux">
                                        </asp:MutuallyExclusiveCheckBoxExtender>
                                        <asp:CheckBox ID="CheckReject" runat="server" CssClass="jkl" Text="Rejected"></asp:CheckBox>
                                        <asp:MutuallyExclusiveCheckBoxExtender ID="MutuallyExclusiveCheckBoxExtender5" runat="server" TargetControlID="CheckReject" Key="mux">
                                        </asp:MutuallyExclusiveCheckBoxExtender>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-1 col-sm-4 col-xs-12">
                            <asp:Button ID="Submit" runat="server" OnClick="Btnview_Click" Text="View" class="btn-sm  rounded-pill btn btn-info" />
                        </div>
                        <div class="col-md-1 col-sm-4 col-xs-12">
                            <asp:Button ID="Cancel" runat="server" OnClick="Cancel_Click" Text="Cancel" class="btn-sm  rounded-pill btn btn-danger" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xl-12 col-xxl-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Payment Request Details</h4>
                </div>
                <div class="card-body pt-2">
                    <div class="table-responsive">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" class="table table-hover table-bordered" AllowPaging="true" PageSize="100" OnPageIndexChanging="GridView1_PageIndexChanging">
                            <Columns>
                                <asp:TemplateField HeaderText="S No">
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex+1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Customer Code & Name ">
                                    <ItemTemplate>
                                        <asp:Label ID="labpayreqtid" Visible="false" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                        <asp:Label ID="luser_code" runat="server" Text='<%# Eval("PhoneNumber") %>'></asp:Label>
                                        <br />
                                        <asp:Label ID="luser_name" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                        <asp:Label ID="labcusid" runat="server" Text='<%#Eval("UserId") %>' Visible="false"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Amount">
                                    <ItemTemplate>
                                        <asp:Label ID="labamt" runat="server" Text='<%# Eval("Amount") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Date">
                                    <ItemTemplate>
                                        <asp:Label ID="LDate" runat="server" Text='<%#Eval("TimeStamp","{0:dd, MMM yyyy}") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="BankName" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="Lblbankname" runat="server" Text='<%#Eval("BankName") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Bank A/c no">
                                    <ItemTemplate>
                                        <asp:Label ID="LblAcno" runat="server" Text='<%#Eval("acno") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="IFSC Code">
                                    <ItemTemplate>
                                        <asp:Label ID="Lblifscode" runat="server" Text='<%#Eval("IfscCode") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Status">
                                    <ItemTemplate>
                                        <asp:Label ID="Lblifscode" runat="server" Text='<%#Eval("Status") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
