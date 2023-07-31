<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="Topup.aspx.cs" Inherits="ProfitTrader.Admin.Topup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lbuser_id" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lbl_price" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lbl_product_id" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="product_id" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lbl_topup_count" runat="server" Visible="false"></asp:Label>

    <asp:Label ID="lblcustomerid" runat="server" Visible="false"></asp:Label>
    <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">TopUp</div>
                <div class="ava_s_card_body">
                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">User Code</label>
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
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">User Name</label>
                                    <div class="col-md-8">

                                        <asp:TextBox ID="txtCusName" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCusName"
                                            ErrorMessage="*" ValidationGroup="vg" class="ava_s_frm_vld"></asp:RequiredFieldValidator>



                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">Product Name</label>
                                    <div class="col-md-8">
                                        <asp:DropDownList ID="ddlproduct" runat="server"
                                            OnSelectedIndexChanged="ddlproduct_SelectedIndexChanged"
                                            AutoPostBack="True" class="form-control">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ValidationGroup="vg"
                                            ControlToValidate="ddlproduct" InitialValue="select" class="ava_s_frm_vld"></asp:RequiredFieldValidator>


                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">Product Price</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="txtprice" runat="server" ReadOnly="true" class="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtprice"
                                            ErrorMessage="*" ValidationGroup="vg" class="ava_s_frm_vld"></asp:RequiredFieldValidator>


                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="ava_s_form_bottom">
                        <asp:Button ID="View" runat="server" Text="Submit" class="btn  btn-primary"
                            OnClick="View_Click" ValidationGroup="vg" />



                    </div>

                </div>

            </div>
        </div>

        <div class="col-md-12" id="Griddiv" visible="true" runat="server">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Topup Details</div>
                <div class="ava_s_card_body">


                    <asp:GridView ID="GridView1" runat="server"
                        AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging"
                        AllowPaging="True" PageSize="50"
                        class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td"
                        GridLines="None">
                        <HeaderStyle CssClass="ava_tb_head " />

                        <EmptyDataTemplate>
                            No Data Found!!..
                        </EmptyDataTemplate>
                        <Columns>
                            <asp:TemplateField HeaderText="S.NO">
                                <ItemTemplate>
                                    <%#Container.DataItemIndex + 1%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="User code">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_usercode" runat="server" Text='<%#Eval ("usercode") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="User name">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_username" runat="server" Text='<%#Eval ("username") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Topup  Product Price">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_product_new" runat="server" Text='<%#Eval ("price") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Topup Date">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_product" runat="server" Text='<%#Eval ("date","{0:dd/MM/yyyy HH:mm:ss}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Count" Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_count" runat="server" Text='<%#Eval ("topupcount") %>'></asp:Label>
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


