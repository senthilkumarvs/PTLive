<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="CustomerList.aspx.cs" Inherits="ProfitTrader.Admin.CustomerList" %>

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
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">User Code</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="txtrefercode" runat="server" AutoPostBack="true" class="form-control"
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

                                        <asp:TextBox ID="txtrefername" runat="server" ReadOnly="true" class="form-control"></asp:TextBox>
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
                <div class="ava_s_card_head">Customer Details</div>
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
                            <asp:TemplateField HeaderText="UserCode">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_customercode" runat="server" Text='<%#Eval ("usercode") %>'></asp:Label>
                                    <br />
                                    <asp:Label ID="lbl_name" runat="server" Text='<%#Eval ("username") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DOJ" ItemStyle-Width="100px">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_doj" runat="server" Text='<%#Eval ("dateOfJoin","{0:dd/MM/yyyy}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="User AdminLogin" Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_usrname" runat="server" Text='<%#Eval("usercode") %>'></asp:Label>
                                    <br />
                                    <asp:Label ID="lbl_password" runat="server" Text='<%#Eval ("password") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Address" Visible="false" ControlStyle-Width="150px">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_address" runat="server" Text='<%#Eval ("address") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Product Name" ControlStyle-Width="100px" Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_productname" runat="server" Text='<%#Eval ("productname") %>'></asp:Label><br />
                                    <asp:Label ID="lblproductprice" runat="server" Text='<%#Eval ("productprice") %>'></asp:Label><br />

                                    <%--<asp:Label ID="Label34" runat="server" Text="Price:"></asp:Label>
                             <asp:Label ID="lbl_productprice" runat="server" Text='<%#Eval ("product_price") %>'></asp:Label>--%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Placement Details">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_advisor_code" runat="server" Text='<%#Eval ("intro_code") %>'></asp:Label>
                                    <br />
                                    <asp:Label ID="lbl_advisor_name" runat="server" Text='<%#Eval ("intro_name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Position">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_position" runat="server" Text='<%#Eval ("mode") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="Sponsor Details">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_advisor_code" runat="server" Text='<%#Eval ("referal_code") %>'></asp:Label>
                                    <br />
                                    <asp:Label ID="lbl_advisor_name" runat="server" Text='<%#Eval ("referal_name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Bank Details" Visible="false">
                                <ItemTemplate>
                                    Bank Name:  
                                    <asp:Label ID="lbl_Bank_code" runat="server" Text='<%#Eval ("bankname") %>'></asp:Label>
                                    <br />
                                    Branch Name:
                                    <asp:Label ID="lbl_adBankor_name" runat="server" Text='<%#Eval ("branchname") %>'></asp:Label>
                                    <br />
                                    Acc No:
                                    <asp:Label ID="Label2" runat="server" Text='<%#Eval ("acno") %>'></asp:Label>
                                    <br />
                                    Ifsc Code:
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval ("ifsccode") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>



                            <asp:TemplateField HeaderText="Pin Details" ControlStyle-Width="100px" Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_pinno1" runat="server" Text='<%#Eval ("pinno") %>'></asp:Label><br />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="ID" Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_age" runat="server" Text='<%#Eval ("customerage") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Gender" Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_gender" runat="server" Text='<%#Eval ("gender") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Mobile No" Visible="True">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_mobileno" runat="server" Text='<%#Eval ("contactno") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Nominee Name" Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_nomineename" runat="server" Text='<%#Eval ("nominee_name") %>'></asp:Label>
                                    <br />
                                    <asp:Label ID="lbl_nomineeage" runat="server" Text='<%#Eval ("nominee_age") %>'></asp:Label>
                                    <br />
                                    <asp:Label ID="lbl_relationship" runat="server" Text='<%#Eval ("relationship") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Bank Details" Visible="false">
                                <ItemTemplate>
                                    Bank :<asp:Label ID="lbl_bankname" runat="server" Text='<%#Eval ("bankname") %>'></asp:Label>
                                    <br />
                                    Branch :<asp:Label ID="lbl_bankbranch" runat="server" Text='<%#Eval ("branchname") %>'></asp:Label>
                                    <br />
                                    A/c No :<asp:Label ID="lbl_accountno" runat="server" Text='<%#Eval ("acno") %>'></asp:Label>
                                    <br />
                                    IFSC :
                                    <asp:Label ID="lbl_ifsc" runat="server" Text='<%#Eval ("ifsccode") %>'></asp:Label>
                                    <br />
                                    PAN CARD :<asp:Label ID="lbl_panno" runat="server" Text='<%#Eval ("pancardno") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                        </Columns>

                    </asp:GridView>


                </div>
            </div>
        </div>

    </div>


</asp:Content>
