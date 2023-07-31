<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="RequestPinDetails.aspx.cs" Inherits="ProfitTrader.Admin.RequestPinDetails" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ToolkitScriptManager ID="SCRIPT" runat="server"></asp:ToolkitScriptManager>
    <asp:Label ID="lbl_fromdate" runat="server" Visible="false" Text=""></asp:Label>
    <asp:Label ID="lbl_todate" runat="server" Visible="false" Text=""></asp:Label>
    <asp:Label ID="txtcustomerid" runat="server" Visible="false" Text=""></asp:Label>
    <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">
                    Wallet Request History
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
                                        <asp:TextBox ID="txtodate" runat="server" class="form-control datepicker"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ava_s_form_bottom">


                        <%--   <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_click"  ValidationGroup="one" Text="Submit"  class="btn btn-danger waves-effect waves-light"  />--%>
                        <asp:Button ID="btnsubmit" runat="server" Text="View" class="btn btn-primary"
                            OnClick="btnsubmit_click" ValidationGroup="cc" />
                        <asp:Button ID="btnclear" runat="server" OnClick="btnclear_click" Text="Cancel" class="btn btn-danger" />

                    </div>

                </div>



            </div>
        </div>


        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">
                    Wallet Request Details
                </div>
                <div class="ava_s_card_body">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="true" OnRowCommand="GridView1_RowCommand" PageSize="50" OnPageIndexChanging="GridView1_PageIndexChanging" class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td" AutoGenerateColumns="false" GridLines="none">
                        <PagerSettings Mode="NumericFirstLast" />
                        <HeaderStyle CssClass="ava_tb_head " />

                        <RowStyle BackColor="#E0F0FF" />
                        <EmptyDataTemplate>
                            <center><font color="red" ><b>No Data Found!!..</b> </font> </center>
                        </EmptyDataTemplate>
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="SNO">
                                <ItemTemplate>
                                    <%#Container.DataItemIndex+1 %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Request Id">
                                <ItemTemplate>
                                    <asp:Label ID="LblId" runat="server" Visible="false" Text='<%#Bind("Id") %>'></asp:Label>
                                    <asp:Label ID="Label1" runat="server" Text='<%#Bind("Request") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Customer Code & Customer Name">
                                <ItemTemplate>
                                    <asp:Label ID="labadvisorcode" runat="server" Text='<%#Bind("customer_code") %>'></asp:Label><br />
                                    <asp:Label ID="labadvisorname" runat="server" Text='<%#Bind("customer_name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Mode">
                                <ItemTemplate>
                                    <asp:Label ID="LblPaymentMode" runat="server" Text='<%#Bind("PaymentMode") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Deposited Bank">
                                <ItemTemplate>
                                    <asp:Label ID="LblDepositedBank" runat="server" Text='<%#Bind("depositedbank") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="ReferenceNo">
                                <ItemTemplate>
                                    <asp:Label ID="LblReferenceNo" runat="server" Text='<%#Bind("ReferenceNo") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Image">
                                <ItemTemplate>
                                    <a href="<%#Eval("image") %>" target="_blank">
                                        <asp:Image ID="Image1" Height="80" Width="150" ImageUrl='<%#Eval("Image") %>' runat="server" />
                                    </a>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Amount">
                                <ItemTemplate>
                                    <asp:Label ID="LblAmount" runat="server" Text='<%#Bind("Amount") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Status">
                                <ItemTemplate>
                                    <%--  <asp:LinkButton ID="linkView" runat="server" CommandName="View" class="tabledit-delete-button btn btn-sm btn-danger" OnClientClick="if ( !confirm('Are you sure want to view?')) return false;"><span class="ti-trash">View</asp:LinkButton>--%>
                                    <asp:Label ID="labappstatus" runat="server" Text='<%#Bind("ApproveStatus") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
                <div id="grid2" runat="server">

                    <div class="col-xl-12 table-responsive">

                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" GridLines="None"
                            class="table card-table table-vcenter text-nowrap  align-items-center tb-l">
                            <EmptyDataTemplate>
                                No Data Found!!..
                            </EmptyDataTemplate>
                            <Columns>
                                <asp:TemplateField HeaderText="SNO">
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex+1%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Product Id" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="LblProductId" runat="server" Text='<%#Eval("ProductId") %>'></asp:Label>
                                        <asp:Label ID="LblId" runat="server" Text='<%#Eval("Id") %>'></asp:Label>
                                        <asp:Label ID="LblRequestId" runat="server" Text='<%#Eval("RequestId") %>'></asp:Label>
                                        <asp:Label ID="LblUserId" runat="server" Text='<%#Eval("UserId") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Product Name">
                                    <ItemTemplate>
                                        <asp:Label ID="labproname" runat="server" Text='<%#Eval("Product_Name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="E-Pin">
                                    <ItemTemplate>
                                        <asp:Label ID="labepin" runat="server" Text='<%#Eval("Epin") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Date">
                                    <ItemTemplate>
                                        <asp:Label ID="Lbldate" runat="server" Text='<%#Eval("UpdatedDate") %>'></asp:Label>
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
