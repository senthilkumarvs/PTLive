<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="GoldInvestment.aspx.cs" Inherits="ProfitTrader.Admin.GoldInvestment" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lbl_topup_count" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lblcustomerid" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="LblMobileNumber" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lblproname" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="LblActivationStatus" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="LblBalance" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="LblPlaceMentId" runat="server" Text="" Visible="false"></asp:Label>

    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Gold Investment</h4>
            </div>
            <div class="card-body">
                <div class="row">

                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">User Code</div>
                            <asp:TextBox ID="txtCusCode" ReadOnly="false" runat="server" class="form-control ava_s_grm_txtbx" OnTextChanged="txtCusCode_TextChanged" AutoPostBack="true"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCusCode" class="ava_s_frm_vld" ErrorMessage="*" ValidationGroup="vg"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">User Name</div>
                            <asp:TextBox ID="txtCusName" runat="server" class="form-control ava_s_grm_txtbx" ReadOnly="true"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Investment Amount</div>
                            <asp:TextBox ID="TxtActivationWallet" Text="100000" ReadOnly="true" CssClass="form-control ava_s_grm_txtbx" runat="server"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" FilterType="Numbers" TargetControlID="TxtActivationWallet"></asp:FilteredTextBoxExtender>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ValidationGroup="vg" class="ava_s_frm_vld" ControlToValidate="TxtActivationWallet"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <br />
                <div class="wcf-b-ftr">
                    <asp:Button ID="View" runat="server" Text="Submit" class="btn  btn-primary" OnClick="View_Click" ValidationGroup="vg" />
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-12" id="griddiv" visible="false" runat="server">
        <div class="ava_s_card">
            <div class="ava_s_card_head">Gold Investment Details</div>
            <div class="ava_s_card_body">
                <div class="table-responsive"> 
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="true" PageSize="100"
                        ShowFooter="true" class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td" FooterStyle-ForeColor="Blue" Width="100%" GridLines="None">
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
                                <FooterTemplate>Total:</FooterTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Amount" ItemStyle-ForeColor="Blue">
                                <ItemTemplate>
                                    <asp:Label ID="LBalance" runat="server" Text='<%# Eval("InvestmentPrice","{0:n}")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
