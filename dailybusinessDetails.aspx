<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="dailybusinessDetails.aspx.cs" EnableEventValidation="false" Inherits="ProfitTrader.Admin.dailybusinessDetails" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    
    <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Business Details</div>
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
                    <!--/row-->
                    <div class="ava_s_form_bottom">
                        <asp:Button ID="Submit" runat="server" OnClick="btnview_Click" Text="View" class="btn btn-primary" />
                        <asp:Button ID="Cancel" runat="server" OnClick="btncancel_Click" Text="Cancel" class="btn btn-danger " />

                    </div>
                </div>

            </div>
        </div>



        <div class="col-md-12" id="griddiv" visible="false" runat="server">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Business Details</div>
                <div class="ava_s_card_body">
                    <div class="table-responsive">
                        <asp:ImageButton ID="imagebutton1" runat="server"
                            AlternateText="ImageButton 1"
                            ImageAlign="right"
                            ImageUrl="../img/excel.png" OnClick="Button1_Click" />

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="true" PageSize="100"
                            ShowFooter="true" class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td" FooterStyle-ForeColor="Blue" OnRowDataBound="GridView1_RowDataBound1" Width="100%" GridLines="None">
                            <HeaderStyle CssClass="ava_tb_head " />

                            <PagerStyle ForeColor="Black" />
                            <Columns>
                                <asp:TemplateField HeaderText="S No">
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex+1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="User Code">
                                    <ItemTemplate>
                                        <asp:Label ID="LblUserId" Visible="false" runat="server" Text='<%# Eval("userid") %>'></asp:Label>
                                        <asp:Label ID="luser_code" runat="server" Text='<%# Eval("usercode").ToString().ToUpper() %>'></asp:Label>

                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="User Name">
                                    <ItemTemplate>
                                        <asp:Label ID="luser_name" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Date">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_date" runat="server" Text='<%# Eval("date","{0:dd/MM/yyyy}") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Status">
                                    <ItemTemplate>
                                        <asp:Label ID="LStatus" runat="server" Text='<%# Eval("status")%>'></asp:Label>
                                    </ItemTemplate>
                                    <FooterTemplate>Total:</FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Amount" ItemStyle-ForeColor="Blue">
                                    <ItemTemplate>
                                        <asp:Label ID="LBalance" runat="server" Text='<%# Eval("productprice","{0:n}")%>'></asp:Label>
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
