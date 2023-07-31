<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="BotApproval.aspx.cs" Inherits="ProfitTrader.Admin.BotApproval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Customer Details</h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-responsive-md">
                            <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" class="table table-striped custom-table table-hover" GridLines="None"
                                AutoGenerateColumns="false">
                                <EmptyDataTemplate>No Data Found...!</EmptyDataTemplate>
                                <Columns>
                                    <asp:TemplateField HeaderText="S.NO" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <%#Container.DataItemIndex+1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Name">
                                        <ItemTemplate>
                                            <asp:Label ID="LId" runat="server" Text='<%#Bind("Id") %>' Visible="false"></asp:Label>
                                            <asp:Label ID="LName" runat="server" Text='<%#Bind("userName") %>'></asp:Label>
                                            <br />
                                            <asp:Label ID="LUserCode" runat="server" Text='<%#Bind("UserCode") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Exchange">
                                        <ItemTemplate>
                                            <asp:Label ID="LExchangeName" runat="server" Text='<%#Bind("ExchangeName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="ProvidersName">
                                        <ItemTemplate>
                                            <asp:Label ID="LProvidersName" runat="server" Text='<%#Bind("ProvidersName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Mobile Number">
                                        <ItemTemplate>
                                            <asp:Label ID="LblMobileNumber" runat="server" Text='<%#Eval ("contactno") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Starting">
                                        <ItemTemplate>
                                            <asp:Label ID="LStartingFrom" runat="server" Text='<%#Bind("StartingFrom","{0:dd/MM/yyyy}") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="End">
                                        <ItemTemplate>
                                            <asp:Label ID="LStartingEnd" runat="server" Text='<%#Bind("StartingEnd","{0:dd/MM/yyyy}") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Approve">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="edit" runat="server" class="btn btn-primary-alt btn-xs btn-icon" Text="Approve" ToolTip="Approve" CommandName="Approve"><em class="fal fa-check-double"></em></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>
                            </asp:GridView>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
