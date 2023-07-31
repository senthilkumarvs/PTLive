<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="Rpt_Topupdetails.aspx.cs" Inherits="ProfitTrader.Admin.Rpt_Topupdetails" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>

    <asp:Label ID="customerid" runat="server" Visible="false"></asp:Label>
    <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Topup Details</div>
                <div class="ava_s_card_body">
                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">User Code</label>
                                    <div class="col-md-8">

                                        <asp:TextBox ID="txtrefercode" runat="server" AutoPostBack="true" CssClass="form-control"
                                            OnTextChanged="txtrefercode_TextChanged"></asp:TextBox>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">User Name</label>
                                    <div class="col-md-8">

                                        <asp:TextBox ID="txtrefername" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                                    </div>


                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">From Date</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="txtfromdate" runat="server" CssClass="form-control datepicker"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">To Date </label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="txttodate" runat="server" CssClass="form-control datepicker"></asp:TextBox>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ava_s_form_bottom">
                        <asp:Button ID="btnview" runat="server" class="btn btn-primary" Text="View" OnClick="View_Click" />

                        <asp:Button ID="btncancel" runat="server" Text="Cancel" class="btn btn-danger" OnClick="btncancel_Click" />

                    </div>
                </div>



            </div>
        </div>

        <div class="col-md-12" id="div1" runat="server" visible="false">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Topup Details</div>
                <div class="ava_s_card_body">

                    <asp:GridView ID="GridView1" runat="server" ShowFooter="false" AutoGenerateColumns="false" GridLines="None"
                        class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td" OnPageIndexChanging="GridView1_PageIndexChanging"
                        AllowPaging="True" PageSize="50">
                        <HeaderStyle CssClass="ava_tb_head " />

                        <EmptyDataTemplate>
                            No Data Found!!..
                        </EmptyDataTemplate>
                        <Columns>
                            <asp:TemplateField HeaderText="SNO">
                                <ItemTemplate>
                                    <%# Container.DataItemIndex+1%>
                                    <asp:Label ID="lbluserId" runat="server" Text='<%#Eval("userid") %>' Visible="false"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="User Code">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_Usercode" runat="server" Text='<%#Eval("usercode") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="User Name">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_Username" runat="server" Text='<%#Eval("username") %>'></asp:Label>
                                </ItemTemplate>

                            </asp:TemplateField>

                            <%--<asp:TemplateField HeaderText="Product Name">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl_productname" runat="server" Text='<%#Eval("productname") %>'></asp:Label>
                                                    </ItemTemplate>
                                                        
                                                </asp:TemplateField>--%>

                            <asp:TemplateField HeaderText="Product Price">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_price" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                </ItemTemplate>

                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Date">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_date" runat="server" Text='<%#Eval("date","{0:dd/MM/yyyy}") %>'></asp:Label>
                                </ItemTemplate>

                            </asp:TemplateField>

                        </Columns>


                    </asp:GridView>

                </div>
            </div>
        </div>
    </div>


</asp:Content>
