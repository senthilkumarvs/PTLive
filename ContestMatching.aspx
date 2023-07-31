<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="ContestMatching.aspx.cs" Inherits="ProfitTrader.Admin.ContestMatching" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Customer List</div>
                <div class="ava_s_card_body">
                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">Type</label>
                                    <div class="col-md-8">
                                        <asp:DropDownList ID="DdlType" runat="server" class="form-control">
                                            <asp:ListItem Value="0">Select</asp:ListItem>
                                            <asp:ListItem Value="1">Binary</asp:ListItem>
                                            <%--<asp:ListItem Value="2">Level</asp:ListItem>--%>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">Value</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TxtValue" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">Pair Match</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TxtPairMatch" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">From Date</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="txtfromdate" runat="server" class="form-control datepicker"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">To Date</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="txttodate" runat="server" class="form-control datepicker"></asp:TextBox>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ava_s_form_bottom">
                        <asp:Button ID="btnview" runat="server" class="btn  btn-primary" Text="View" OnClick="btnview_Click" />



                        <asp:Button ID="btncancel" runat="server" Text="Cancel" OnClick="btncancel_Click" class="btn  btn-danger" />


                    </div>
                </div>


            </div>
        </div>

        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Contest Binary Matching Details</div>
                <div class="ava_s_card_body">

                    <asp:GridView ID="GridView1" runat="server" ShowFooter="false" PageSize="100" AllowPaging="true" OnPageIndexChanging="GridView1_PageIndexChanging"
                        AutoGenerateColumns="false"
                        class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td"
                        GridLines="None">
                        <HeaderStyle CssClass="ava_tb_head " />
                        <EmptyDataTemplate>
                            No Data Found!!..
                        </EmptyDataTemplate>
                        <Columns>
                            <asp:TemplateField HeaderText="S.NO">
                                <ItemTemplate>
                                    <%#Container.DataItemIndex +1 %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ID" Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_id" runat="server" Text='<%#Eval ("userid") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="User Code">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_customercode" runat="server" Text='<%#Eval ("usercode") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="User Name">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_name" runat="server" Text='<%#Eval ("username") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Left">
                                <ItemTemplate>
                                    <asp:Label ID="LLeft" runat="server" Text='<%#Eval ("LeftB") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Right">
                                <ItemTemplate>
                                    <asp:Label ID="LRight" runat="server" Text='<%#Eval ("RightB") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>

    </div>


</asp:Content>
