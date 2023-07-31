<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="Recharge Details.aspx.cs" Inherits="ProfitTrader.Admin.Recharge_Details" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-xl-12 col-xxl-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Recharge Details</h4>
                </div>
                <div class="card-body pt-2">
                    <div class="row">
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="ava_s_grm_grp">
                                <label class=" label-control ava_s_frm_inlne_lbl">User Code</label>

                                <asp:TextBox ID="Txtrefercode" runat="server" AutoPostBack="true" CssClass="ava_s_grm_txtbx form-control" OnTextChanged="Txtrefercode_TextChanged"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="ava_s_grm_grp">
                                <label class=" label-control ava_s_frm_inlne_lbl">Customer Name</label>
                                <asp:TextBox ID="Txtrefername" runat="server" ReadOnly="true" CssClass="ava_s_grm_txtbx form-control"></asp:TextBox>
                            </div>
                        </div> 
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="ava_s_grm_grp">
                                <label class=" label-control ava_s_frm_inlne_lbl">From Date</label>
                                <asp:TextBox ID="Txtfromdate" runat="server" CssClass="ava_s_grm_txtbx form-control datepicker"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="ava_s_grm_grp">
                                <label class=" label-control ava_s_frm_inlne_lbl">To Date</label>
                                <asp:TextBox ID="Txttodate" runat="server" CssClass="ava_s_grm_txtbx form-control datepicker"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="ava_s_grm_grp" >
                                <asp:Button ID="btnview" runat="server" class="btn-sm  rounded-pill btn btn-primary" Text="View" OnClick="View_Click" />
                                <asp:Button ID="btncancel" runat="server" Text="Cancel" class="btn-sm  rounded-pill btn btn-danger" OnClick="Btncancel_Click" />
                            </div>
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
                    <h4 class="card-title">Recharge Details</h4>
                </div>
                <div class="card-body pt-2">
                    <div class="table-responsive">
                        <asp:GridView ID="GridView1" runat="server" ShowFooter="false" AutoGenerateColumns="false" OnPageIndexChanging="GridView1_PageIndexChanging" CssClass="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td">
                            <HeaderStyle CssClass="ava_tb_head" />
                            <EmptyDataTemplate>
                                No Data Found!!..
                            </EmptyDataTemplate>
                            <Columns>
                                <asp:TemplateField HeaderText="SNO">
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex+1%>
                                        <asp:Label ID="Lbluser_id" runat="server" Text='<%#Eval("user_id") %>' Visible="false"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Transaction Id">
                                    <ItemTemplate>
                                        <asp:Label ID="Lbl_TransactionId" runat="server" Text='<%#Eval("txid") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="User Code">
                                    <ItemTemplate>
                                        <asp:Label ID="Lbl_Mobile" runat="server" Text='<%#Eval("UserCode") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Amount">
                                    <ItemTemplate>
                                        <asp:Label ID="Lbl_Amount" runat="server" Text='<%#Eval("amount") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Date">
                                    <ItemTemplate>
                                        <asp:Label ID="Lbl_Date" runat="server" Text='<%#Eval("date","{0:dd/MM/yyyy HH:mm:ss}") %>'></asp:Label>
                                    </ItemTemplate>

                                </asp:TemplateField> 

                                <asp:TemplateField HeaderText="Recharge Type">
                                    <ItemTemplate>
                                        <asp:Label ID="Lbl_RechargeType" runat="server" Text='<%#Eval("Mobile_Type") %>'></asp:Label>
                                    </ItemTemplate>

                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Status">
                                    <ItemTemplate>
                                        <asp:Label ID="Lbl_TransactionStatus" runat="server" Text='<%#Eval("TransactionStatus") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Commission" Visible="false">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="Btn_Commission" runat="server" OnClick="Btn_Commission_Click"><i class="fa fa-inr"></i></asp:LinkButton>
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
