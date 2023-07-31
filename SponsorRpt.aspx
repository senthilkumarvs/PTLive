<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="SponsorRpt.aspx.cs" Inherits="ProfitTrader.Admin.SponsorRpt" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lbl_customerid" runat="server" Visible="false"></asp:Label>


    <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Referal Details</div>
                <div class="ava_s_card_body">
                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">Referal Code</label>
                                    <div class="col-md-8">

                                        <asp:TextBox ID="txtCusCode" ReadOnly="false" runat="server" class="form-control" OnTextChanged="txtCusCode_TextChanged" AutoPostBack="true"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCusCode"
                                            ErrorMessage="*" ValidationGroup="vg" class="ava_s_frm_vld"></asp:RequiredFieldValidator>


                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">Referal Name</label>
                                    <div class="col-md-8">

                                        <asp:TextBox ID="txtCusName" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>


                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="ava_s_form_bottom">
                        <asp:Button ID="View" runat="server" Text="View" class="btn btn-primary"
                            OnClick="View_Click" ValidationGroup="vg" />



                    </div>
                </div>


            </div>
        </div>

        <div class="col-md-12" id="Griddiv" visible="false" runat="server">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Referal Details</div>
                <div class="ava_s_card_body">

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                        OnRowDataBound="GridView1_RowDataBound"
                        class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td" GridLines="None">
                        <HeaderStyle CssClass="ava_tb_head " />

                        <EmptyDataTemplate>
                            <center>
No Data Found!!!..</center>
                        </EmptyDataTemplate>
                        <Columns>
                            <asp:TemplateField HeaderText="SNO">
                                <ItemTemplate>
                                    <%# Container.DataItemIndex+1%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="SNO" Visible="false">
                                <ItemTemplate>

                                    <asp:Label ID="lbluser_id" runat="server" Text='<%#Eval("userid") %>' Visible="false"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="User Code">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_intorducercode" runat="server" Text='<%#Eval("usercode") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="User Name">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_customername" runat="server" Text='<%#Eval("username") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Contact Number">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_contactno" runat="server" Text='<%#Eval("contactno") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Product Price">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_price" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Date Of Join">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_doj" runat="server" Text='<%#Eval("date","{0:dd/MM/yyyy}") %>'></asp:Label>
                                </ItemTemplate>

                            </asp:TemplateField>




                            <asp:TemplateField HeaderText="Referal Code">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_advid" runat="server" Text='<%#Eval("sponsorid") %>' Visible="false"></asp:Label>
                                    <asp:Label ID="Label4" runat="server" Text='<%#Eval("referalcode") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                        </Columns>




                    </asp:GridView>

                </div>
            </div>
        </div>
    </div>



</asp:Content>
