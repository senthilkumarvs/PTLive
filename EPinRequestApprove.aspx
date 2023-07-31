<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="EPinRequestApprove.aspx.cs" Inherits="ProfitTrader.Admin.EPinRequestApprove" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ToolkitScriptManager ID="SCRIPT" runat="server"></asp:ToolkitScriptManager>

    <div class="row" id="CommonDiv" runat="server">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">E-Pin Request Details</div>
                <div class="ava_s_card_body">

                    <asp:GridView ID="Gridview1" runat="server" OnRowDataBound="Gridview1_RowDataBound" AllowPaging="true" PageSize="50" OnPageIndexChanging="GridView1_PageIndexChanging" class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td" AutoGenerateColumns="false" GridLines="None">
                        <HeaderStyle CssClass="ava_tb_head " />

                        <PagerSettings Mode="NumericFirstLast" />
                        <RowStyle BackColor="#E0F0FF" />
                        <EmptyDataTemplate>
                            <center><font color="red" ><b>No Data Found</b> </font> </center>
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
                                    <asp:Label ID="LblUserId" runat="server" Visible="false" Text='<%#Bind("UserId") %>'></asp:Label>
                                    <asp:Label ID="Label1" runat="server" Text='<%#Bind("Request") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="CUSTOMER CODE & NAME">
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
                                    <asp:Label ID="LblInWaords" runat="server"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Approve">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkApprove" OnClick="LinkApprove_Click" class="btn btn-primary " runat="server">Approve</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Reject">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkReject" OnClick="LinkReject_Click" class="btn btn-danger " runat="server">Reject</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>

                </div>
            </div>
        </div>

    </div>



</asp:Content>

