<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="BdcPanel.aspx.cs" Inherits="ProfitTrader.Admin.BdcPanel" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">

        function SetTarget() {

            document.forms[0].target = "_blank";

        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">BDC Login Details</div>
                <div class="ava_s_card_body">
                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">BDC Code</label>
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
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">BDC Name</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="txtrefername" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">Mobile Number</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="txt_mobileno" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/row-->
                    <div class="ava_s_form_bottom">
                        <asp:Button ID="btnview" runat="server" class="btn btn-primary" Text="View" OnClick="View_Click" />
                        <asp:Button ID="btncancel" runat="server" class="btn btn-danger" Text="Cancel"
                            OnClick="btncancel_Click" />
                    </div>
                </div>

            </div>
        </div>


        <div class="col-md-12" id="recharge123" runat="server" visible="false">
            <div class="ava_s_card">
                <div class="ava_s_card_head">BDC Login  Details</div>
                <div class="ava_s_card_body">
                    <asp:GridView ID="GridView1" runat="server" ShowFooter="false" AutoGenerateColumns="false"
                        PageSize="50" AllowPaging="true" OnPageIndexChanging="GridView1_PageIndexChanging"
                        OnRowCommand="GridView1_RowCommand" class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td"
                        GridLines="None">
                        <HeaderStyle CssClass="ava_tb_head " />

                        <EmptyDataTemplate>
                            No Data Found!!..
                        </EmptyDataTemplate>
                        <Columns>
                            <asp:TemplateField HeaderText="SNO">
                                <ItemTemplate>
                                    <%# Container.DataItemIndex+1%>
                                    <asp:Label ID="lbluserId" runat="server" Text='<%#Eval("Id") %>' Visible="false"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="BDC Code">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_user_code" runat="server" Text='<%#Eval("Bdccode") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="BDC Name">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_user_name" runat="server" Text='<%#Eval("Bdcname") %>'></asp:Label>
                                    <asp:Label ID="lbl_mobno" runat="server" Text='<%#Eval("BdcMobileNumber") %>' Visible="false"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Login Details">
                                <ItemTemplate>
                                    BDC Code&nbsp;:&nbsp;&nbsp
                                        <asp:Label ID="lbl_logusername" runat="server" Text='<%#Eval("Bdccode") %>'></asp:Label><br />
                                    Password&nbsp;&nbsp&nbsp;:&nbsp;&nbsp<asp:Label ID="lbl_password" runat="server"
                                        Text='<%#Eval("Bdcpassword") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Login">
                                <ItemTemplate>
                                    <asp:LinkButton ID="Btn_Commission" runat="server" class="btn btn-primary" CommandName="Login"
                                        OnClientClick="SetTarget();" ForeColor="White">Login</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
