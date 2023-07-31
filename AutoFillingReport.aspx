<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="AutoFillingReport.aspx.cs" Inherits="ProfitTrader.Admin.AutoFillingReport" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <asp:Label ID="LblId" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="LblSponcerId" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="referal_id" runat="server" Text="" Visible="false"></asp:Label>

    <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">
                    Auto Filling Report
                </div>
                <div class="ava_s_card_body">
                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">User Code</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="txtCusCode" ReadOnly="false" runat="server" class="form-control" OnTextChanged="txtCusCode_TextChanged" AutoPostBack="true"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">User Name</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="txtCusName" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">Type</label>
                                    <div class="col-md-8">
                                        <asp:DropDownList ID="DdlType" runat="server" CssClass="form-control">
                                            <asp:ListItem Value="0">Select</asp:ListItem>
                                            <asp:ListItem Value="1">Single Star</asp:ListItem>
                                            <asp:ListItem Value="2">Double Star</asp:ListItem>
                                            <asp:ListItem Value="3">Triple Star</asp:ListItem>
                                            <asp:ListItem Value="4">Four Star</asp:ListItem>
                                            <asp:ListItem Value="5">Five Star</asp:ListItem>
                                            <asp:ListItem Value="6">Six Star</asp:ListItem>
                                            <asp:ListItem Value="7">Seven Star</asp:ListItem>
                                            <asp:ListItem Value="8">Eight Star</asp:ListItem>
                                            <asp:ListItem Value="9">Nine Star</asp:ListItem>
                                            <asp:ListItem Value="10">Ten Star</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ava_s_form_bottom">


                        <%--   <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_click"  ValidationGroup="one" Text="Submit"  class="btn btn-danger waves-effect waves-light"  />--%>
                        <asp:Button ID="btnsubmit" runat="server" Text="View" class="btn btn-primary"
                            OnClick="btnsubmit_click" ValidationGroup="cc" />
                        <asp:Button ID="btnclear" runat="server" OnClick="btnclear_Click" Text="Cancel" class="btn btn-danger" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Auto Filling  Tree</div>
                <div class="ava_s_card_body">
                    <div class="ava_s_card_serch_bx_out">
                    </div>
                    <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td" AutoGenerateColumns="false">
                       <EmptyDataTemplate>
                        No Data Found!!..
                    </EmptyDataTemplate>
                    <Columns>
                        <asp:TemplateField HeaderText="S.No">
                            <ItemTemplate>
                                <%# Container.DataItemIndex+1%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Customer Code">
                            <ItemTemplate>
                                <asp:Label ID="LblCustomer" runat="server" Text='<%#Eval("CustomerCode") %>'></asp:Label>
                                <asp:Label ID="LblId" runat="server" Text='<%#Eval("Id") %>' Visible="false"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Customer Name">
                            <ItemTemplate>
                                <asp:Label ID="LblCustomerName" runat="server" Text='<%#Eval("CustomerName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Level">
                            <ItemTemplate>
                                <asp:Label ID="LblLevel" runat="server" Text='<%#Eval("Level") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="TimeStamp">
                            <ItemTemplate>
                                <asp:Label ID="LblTimeStamp" runat="server" Text='<%#Eval("TimeStamp") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
