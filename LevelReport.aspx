<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="LevelReport.aspx.cs" Inherits="ProfitTrader.Admin.LevelReport" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <asp:Label ID="LblId" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="LblSponcerId" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="referal_id" runat="server" Text="" Visible="false"></asp:Label>

    <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">
                    Level Tree
                </div>
                <div class="ava_s_card_body">
                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">User Code</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="txtCusCode" ReadOnly="false" runat="server" class="form-control" OnTextChanged="txtCusCode_TextChanged" AutoPostBack="true"></asp:TextBox>
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
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ava_s_form_bottom">


                        <%--   <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_click"  ValidationGroup="one" Text="Submit"  class="btn btn-danger waves-effect waves-light"  />--%>
                        <asp:Button ID="btnsubmit" runat="server" Text="View" class="btn btn-primary"
                            OnClick="btnsubmit_click" ValidationGroup="cc" />
                        <asp:Button ID="btnclear" runat="server" OnClick="btnclear_Click" Text="Cancel" class="btn btn-danger" />

                    </div>

                </div>



            </div>
        </div>



    </div>

    <%--   <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">
                    Level Tree
                </div>
                <div class="ava_s_card_body">
                    <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td">
                        <PagerSettings Mode="NumericFirstLast" />
                        <HeaderStyle CssClass="ava_tb_head " />

                        <RowStyle BackColor="#E0F0FF" />
                        <EmptyDataTemplate>
                            <center><font color="red" ><b>No Data Found!!..</b> </font> </center>
                        </EmptyDataTemplate>
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="S.No" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="LSno" runat="server" Text='<%#Eval ("Sno") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ID" Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="llid" runat="server" Text='<%#Eval ("customer_id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Member Name">
                                <ItemTemplate>
                                    <asp:Label ID="lcode" runat="server" Text='<%#Eval ("customer_name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Member Id">
                                <ItemTemplate>
                                    <asp:Label ID="llname" runat="server" Text='<%#Eval ("customer_code") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Contact No">
                                <ItemTemplate>
                                    <asp:Label ID="llname" runat="server" Text='<%#Eval ("contact_no") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Date of Join">
                                <ItemTemplate>
                                    <asp:Label ID="llname" runat="server" Text='<%#Eval ("date_of_join","{0:dd/MM/yyyy}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Sponsor ID">
                                <ItemTemplate>
                                    <asp:Label ID="llname" runat="server" Text='<%#Eval ("introducer_code") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>

            </div>
        </div>
    </div>--%>


    <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Level Tree</div>
                <div class="ava_s_card_body">
                    <div class="ava_s_card_serch_bx_out">
                    </div>
                    <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td" AutoGenerateColumns="false">
                        <PagerSettings Mode="NumericFirstLast" />
                        <HeaderStyle CssClass="ava_tb_head " />

                        <RowStyle BackColor="#E0F0FF" />
                        <EmptyDataTemplate>
                            <center><font color="red" ><b>No Data Found!!..</b> </font> </center>
                        </EmptyDataTemplate>
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="S.No" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="LSno" runat="server" Text='<%#Eval ("Sno") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ID" Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="llid" runat="server" Text='<%#Eval ("customer_id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Member Name">
                                <ItemTemplate>
                                    <asp:Label ID="lcode" runat="server" Text='<%#Eval ("customer_name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Member Id">
                                <ItemTemplate>
                                    <asp:Label ID="llname" runat="server" Text='<%#Eval ("customer_code") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Product Value">
                                <ItemTemplate>
                                    <asp:Label ID="llnaasdme" runat="server" Text='<%#Eval ("productprice") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Contact No">
                                <ItemTemplate>
                                    <asp:Label ID="llname" runat="server" Text='<%#Eval ("contact_no") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Date of Join">
                                <ItemTemplate>
                                    <asp:Label ID="llname" runat="server" Text='<%#Eval ("date_of_join","{0:dd/MM/yyyy}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Sponsor ID">
                                <ItemTemplate>
                                    <asp:Label ID="llname" runat="server" Text='<%#Eval ("introducer_code") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>


                </div>
            </div>
        </div>



    </div>
</asp:Content>
