<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="RptSponsorIncome.aspx.cs" Inherits="ProfitTrader.Admin.RptSponsorIncome" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <asp:Label ID="lbl_customerid" runat="server" Visible="false"></asp:Label>
    <div class="col-md-12">
        <div class="ava_s_card">
            <div class="ava_s_card_head">Direct Referal Income Details</div>
            <div class="ava_s_card_body">


                <div class="row">

                    <div class="col-md-10">
                        <div class="row">

                            <div class="col-md-3  col-6">
                                <div class="ava_s_card_serch_bx">
                                    <div class="ava_s_card_serch_bx_txt">Referal Code</div>
                                    <asp:TextBox ID="txtCusCode" ReadOnly="false" runat="server" class="ava_s_card_serch_txt_bx" OnTextChanged="txtCusCode_TextChanged" AutoPostBack="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCusCode"
                                        ErrorMessage="*" ValidationGroup="cc"></asp:RequiredFieldValidator>

                                </div>
                            </div>





                            <div class="col-md-3  col-6">
                                <div class="ava_s_card_serch_bx">
                                    <div class="ava_s_card_serch_bx_txt">Referal Name</div>
                                    <asp:TextBox ID="txtCusName" runat="server" class="ava_s_card_serch_txt_bx" ReadOnly="true"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-3  col-6">
                                <div class="ava_s_card_serch_bx">
                                    <div class="ava_s_card_serch_bx_txt">From Date</div>
                                    <asp:TextBox ID="txtfromdate" runat="server" class="ava_s_card_serch_txt_bx datepicker"></asp:TextBox>


                                </div>
                            </div>

                            <div class="col-md-3  col-6">
                                <div class="ava_s_card_serch_bx">
                                    <div class="ava_s_card_serch_bx_txt">To Date</div>
                                    <asp:TextBox ID="txttodate" runat="server" class="ava_s_card_serch_txt_bx datepicker"></asp:TextBox>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 col-7 mbl_mr_auto">
                        <asp:Button ID="View" runat="server" Text="View" class="btn btn-primary" OnClick="View_Click"
                            ValidationGroup="vg" />



                    </div>


                </div>
            </div>
        </div>
    </div>




    <div class="col-md-12" id="Griddiv" visible="false" runat="server">
        <div class="ava_s_card">
            <div class="ava_s_card_head">Direct Referal Income Details</div>
            <div class="ava_s_card_body">
                <asp:GridView ID="GridView1" runat="server"
                    AutoGenerateColumns="False" ShowFooter="true" class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td"
                    GridLines="None" OnRowCreated="GridView1_RowCreated" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="100" AllowPaging="true">
                    <HeaderStyle CssClass="ava_tb_head " />
                    <EmptyDataTemplate>No Data Found!!!!...</EmptyDataTemplate>

                    <Columns>

                        <asp:TemplateField HeaderText="S No">
                            <ItemTemplate>

                                <%# Container.DataItemIndex+1 %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Referal Code">

                            <ItemTemplate>
                                <asp:Label ID="lbl_sponcercode" runat="server" Text='<%# Eval("sponsorcode") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Referal Name">

                            <ItemTemplate>
                                <asp:Label ID="lbl_sponcername" runat="server" Text='<%# Eval("sponsorname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="User Code">

                            <ItemTemplate>
                                <asp:Label ID="lbl_usercode" runat="server" Text='<%# Eval("usercode") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="User Name">

                            <ItemTemplate>
                                <asp:Label ID="lbl_username" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                            </ItemTemplate>

                        </asp:TemplateField>


                        <%--      <asp:TemplateField  HeaderText="Product Name" >
                      
                      <ItemTemplate>
                            <asp:Label ID="lbl_productname" runat="server" Text='<%# Eval("product_name") %>' ></asp:Label>
                        </ItemTemplate>
                           <FooterTemplate>
                           <b> Total:</b> 
                         </FooterTemplate>
                        </asp:TemplateField>--%>


                        <asp:TemplateField HeaderText="Credit">

                            <ItemTemplate>
                                <asp:Label ID="lbltotcommission" runat="server" Text='<%# Eval("credit","{0:N2}") %>'></asp:Label>
                            </ItemTemplate>

                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Date">

                            <ItemTemplate>
                                <asp:Label ID="lbl_date" runat="server" Text='<%# Eval("entrydate","{0:dd/MM/yyyy}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status" Visible="true" runat="server">

                            <ItemTemplate>
                                <asp:Label ID="lbl_status" runat="server" Text='<%# Eval("topupstatus") %>'></asp:Label>
                            </ItemTemplate>

                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>


            </div>
        </div>
    </div>

</asp:Content>
