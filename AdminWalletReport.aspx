<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="AdminWalletReport.aspx.cs" Inherits="ProfitTrader.Admin.AdminWalletReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Admin Wallet Report</h4>
            </div>
            <div class="card-body">
                <div class="row">

                    <div class="col-md-6">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">From Date</div>
                            <asp:TextBox ID="TxtFromDate" runat="server" class="form-control datepicker"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">To Date</div>
                            <asp:TextBox ID="TxtTodate" runat="server" class="form-control datepicker"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <br />
                <div class="wcf-b-ftr">
                    <asp:LinkButton ID="LinkSearch" runat="server" class="btn btn-primary" ValidationGroup="vg">Search</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Admin Wallet Details</h4>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-responsive-md">

                        <asp:GridView ID="GridView1" runat="server" class="table table-striped custom-table table-hover" GridLines="None"
                            AutoGenerateColumns="false" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="true" PageSize="100">
                            <EmptyDataTemplate>No Data Found...!</EmptyDataTemplate>
                            <Columns>
                                <asp:TemplateField HeaderText="S.NO" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <%#Container.DataItemIndex+1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Name">
                                    <ItemTemplate>
                                        <asp:Label ID="LName" runat="server" Text='<%#Bind("Name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="UserCode">
                                    <ItemTemplate>
                                        <asp:Label ID="LUserCode" runat="server" Text='<%#Bind("UserCode") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Amount">
                                    <ItemTemplate>
                                        <asp:Label ID="LPassword" runat="server" Text='<%#Bind("CreditAmount") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <%--<asp:TemplateField HeaderText="DebitAmount">
                                    <ItemTemplate>
                                        <asp:Label ID="LActivationDate" runat="server" Text='<%#Bind("DebitAmount") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>--%>

                                <asp:TemplateField HeaderText="Balance">
                                    <ItemTemplate>
                                        <asp:Label ID="LBalance" runat="server" Text='<%#Bind("Balance","{0:N2}") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Status">
                                    <ItemTemplate>
                                        <asp:Label ID="LStatus" runat="server" Text='<%#Bind("Status") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="TransactionId">
                                    <ItemTemplate>
                                        <asp:Label ID="LStatus" runat="server" Text='<%#Bind("TransactionId") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="TimeStamp">
                                    <ItemTemplate>
                                        <asp:Label ID="LTimeStamp" runat="server" Text='<%#Bind("TimeStampDt") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
