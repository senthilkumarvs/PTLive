<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="MoneyRemittanceDetails.aspx.cs" Inherits="ProfitTrader.Admin.MoneyRemittanceDetails" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Money Transfer Details</div>
                <div class="ava_s_card_body">
                    <div class="row">
                        
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">Transaction Id</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TxtTransacionId"  runat="server" CssClass="ava_s_grm_txtbx form-control" ></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">User Code</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TxtCusCode" OnTextChanged="TxtCusCode_TextChanged" runat="server" CssClass="ava_s_grm_txtbx form-control" AutoPostBack="true"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="re2" runat="server" ControlToValidate="TxtCusCode"
                                            ErrorMessage="*" CssClass="av_s_frm_vld" ValidationGroup="cc"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">User Name</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TxtCusName" runat="server" CssClass="ava_s_grm_txtbx form-control" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">From Date</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="Txtfromdate" runat="server" CssClass="ava_s_grm_txtbx form-control datepicker"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">To Date</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="Txttodate" runat="server" CssClass="ava_s_grm_txtbx form-control datepicker"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/row-->
                    <div class="ava_s_form_bottom">
                        <asp:Button ID="View" runat="server" Text="View" class="btn-sm  rounded-pill btn btn-primary" OnClick="View_Click" ValidationGroup="vg" />
                        <asp:Button ID="Cancel" runat="server" Text="Cancel" class="btn-sm  rounded-pill btn btn-danger" OnClick="Btncancel_Click" ValidationGroup="vg" />
                        <asp:Button ID="btnexport" class="btn-sm  rounded-pill btn btn-success" runat="server" Text="Export" OnClick="btnexport_Click" />
                    </div>
                </div>

            </div>
        </div>


        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Money Transfer  Details</div>
                <div class="ava_s_card_body">
                    <asp:GridView ID="GridView1" runat="server" ShowFooter="false" AutoGenerateColumns="false" PageSize="100" AllowPaging="true" OnPageIndexChanging="GridView1_PageIndexChanging" class="table no-margin">
                        <EmptyDataTemplate>No Data Found!!..</EmptyDataTemplate>
                        <Columns>
                            <asp:TemplateField HeaderText="SNO">
                                <ItemTemplate>
                                    <%# Container.DataItemIndex+1%>
                                    <%--<asp:Label ID="LbluserId" runat="server" Text='<%#Eval("UserId") %>' Visible="false"></asp:Label>--%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Transaction Id">
                                <ItemTemplate>
                                    <asp:Label ID="Lbl_TransactionId" runat="server" Text='<%#Eval("TransactionId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="User Code">
                                <ItemTemplate>
                                    <asp:Label ID="LUserCode" runat="server" Text='<%#Eval("UserCode") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Phone number">
                                <ItemTemplate>
                                    <asp:Label ID="Lbl_Usercode" runat="server" Text='<%#Eval("Phonenumber") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Account No">
                                <ItemTemplate>
                                    <asp:Label ID="Lbl_AccountNo" runat="server" Text='<%#Eval("[Account Number]") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:Label ID="LblFooter" runat="server" Text=""></asp:Label>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Amount">
                                <ItemTemplate>
                                    <asp:Label ID="Lbl_Amount" runat="server" Text='<%#Eval("Amount") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Date">
                                <ItemTemplate>
                                    <asp:Label ID="Lbl_doj" runat="server" Text='<%#Eval("Date","{0:f}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ClientRef Id">
                                <ItemTemplate>
                                    <asp:Label ID="Lbl_ClientRefId" runat="server" Text='<%#Eval("ReferenceId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Status">
                                <ItemTemplate>
                                    <asp:Label ID="Lbl_TransactionStatus" runat="server" Text='<%#Eval("Status") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

