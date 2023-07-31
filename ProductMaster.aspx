<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="ProductMaster.aspx.cs" Inherits="ProfitTrader.Admin.ProductMaster" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager" runat="server"></asp:ToolkitScriptManager>


    <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Product Master</div>
                <div class="ava_s_card_body">
                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">Product Name</label>
                                    <div class="col-md-8">

                                        <asp:TextBox ID="txtproductname" runat="server" class="form-control"></asp:TextBox>

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtproductname"
                                            ValidationGroup="vg" class="ava_s_frm_vld"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">Product Price</label>
                                    <div class="col-md-8">

                                        <asp:TextBox ID="txtprice" runat="server" class="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtprice" ValidationGroup="vg"
                                            ErrorMessage="*" class="ava_s_frm_vld"></asp:RequiredFieldValidator>
                                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" TargetControlID="txtprice" FilterType="Numbers">
                                        </asp:FilteredTextBoxExtender>
                                    </div>
                                </div>
                            </div>

                        </div>
<%--                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">Weekly Roi</label>
                                    <div class="col-md-8">

                                        <asp:TextBox ID="txtroi" runat="server" class="form-control"></asp:TextBox>
                                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" TargetControlID="txtroi" FilterType="Custom"
                                            FilterMode="ValidChars" ValidChars="0123456789.">
                                        </asp:FilteredTextBoxExtender>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtroi"
                                            ValidationGroup="vg" class="ava_s_frm_vld"></asp:RequiredFieldValidator>


                                    </div>
                                </div>


                            </div>
                        </div>--%>
                        <div class="col-md-6 col-sm-6 col-xs-12" runat="server" visible="false">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">Monthly Roi</label>
                                    <div class="col-md-8">

                                        <asp:TextBox ID="txtmonthlyRoi" runat="server" class="form-control"></asp:TextBox>
                                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" TargetControlID="txtroi" FilterType="Custom"
                                            FilterMode="ValidChars" ValidChars="0123456789.">
                                        </asp:FilteredTextBoxExtender>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtroi"
    ValidationGroup="vg" class="ava_s_frm_vld" ></asp:RequiredFieldValidator>--%>
                                    </div>
                                </div>


                            </div>
                        </div>

                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">Ceiling Amount</label>
                                    <div class="col-md-8">

                                        <asp:TextBox ID="TextCeiling" runat="server" class="form-control"></asp:TextBox>
                                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="TextCeiling" FilterType="Custom"
                                            FilterMode="ValidChars" ValidChars="0123456789.">
                                        </asp:FilteredTextBoxExtender>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextCeiling"
                                            ValidationGroup="vg" class="ava_s_frm_vld"></asp:RequiredFieldValidator>


                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>

                    <div class="ava_s_form_bottom">
                        <asp:Button ID="btnsave" runat="server" Text="Save" ValidationGroup="vg" class="btn  btn-primary"
                            OnClick="btnsave_Click" />
                        <asp:Button ID="btnupdate" runat="server" OnClick="btnupdate_Click" Text="Update" class="btn  btn-primary" />
                        <asp:Button ID="btncancel" runat="server" OnClick="btncancel_Click" Text="Cancel" class="btn  btn-danger" />

                    </div>

                </div>
            </div>
        </div>







        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Product Details</div>
                <div class="ava_s_card_body">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                        class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td"
                        GridLines="None">
                        <HeaderStyle CssClass="ava_tb_head " />

                        <EmptyDataTemplate>No Data Found!!!...</EmptyDataTemplate>
                        <Columns>
                            <asp:TemplateField HeaderText="S.No">
                                <ItemTemplate>
                                    <%#Container.DataItemIndex + 1 %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ID" Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="llid" runat="server" Text='<%#Eval ("productid") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ProductName">
                                <ItemTemplate>
                                    <asp:Label ID="llname" runat="server" Text='<%#Eval ("productname") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle></HeaderStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Price">
                                <ItemTemplate>
                                    <asp:Label ID="llprice" runat="server" Text='<%#Eval ("price") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle></HeaderStyle>
                            </asp:TemplateField>
<%--                            <asp:TemplateField HeaderText="Weekly Roi" Visible="true">
                                <ItemTemplate>
                                    <asp:Label ID="llbv" runat="server" Text='<%#Eval ("roi") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>--%>
                            <asp:TemplateField HeaderText="Monthly Roi" Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="lblmonthroi" runat="server" Text='<%#Eval ("MonthlyRoi") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Ceiling">
                                <ItemTemplate>
                                    <asp:Label ID="Ceiling" runat="server" Text='<%#Eval ("Ceiling") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>




                            <asp:TemplateField HeaderText="Edit" Visible="true" runat="server">
                                <ItemTemplate>
                                    <asp:LinkButton ID="Edit" runat="server" class="btn btn-primary-alt btn-xs btn-icon" Text="Edit" ToolTip="Edit"
                                        OnClick="Edit_Click"><em class="fal fa-pencil"></em></asp:LinkButton>
                                </ItemTemplate>

                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete" Visible="false" runat="server">
                                <ItemTemplate>
                                    <asp:LinkButton ID="Delete" runat="server" ToolTip="Delete" class="btn btn-danger-alt btn-xs btn-icon" Text="Delete"
                                        OnClientClick="return confirm('Are You Sure want to Delete Bank Details?..')" OnClick="Delete_Click">
<em class="fal fa-trash"></em></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
