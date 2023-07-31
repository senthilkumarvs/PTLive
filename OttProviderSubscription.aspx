<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="OttProviderSubscription.aspx.cs" Inherits="ProfitTrader.Admin.OttProviderSubscription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">OTT Provider Subscription</h4>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Subscription Amount</div>
                            <asp:DropDownList ID="DdlSubscription" OnSelectedIndexChanged="DdlSubscription_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">OTT Provider Subscription Details</h4>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-responsive-md">
                        <asp:Label ID="LPId" Visible="false" runat="server" Text=""></asp:Label>

                        <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td" GridLines="None"
                            AutoGenerateColumns="false" HeaderStyle-HorizontalAlign="Left" OnRowDataBound="GridView1_RowDataBound">
                            <EmptyDataTemplate>No Data Found...!</EmptyDataTemplate>
                            <Columns>
                                <asp:TemplateField HeaderText="S.NO" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <%#Container.DataItemIndex+1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Provider Name">
                                    <ItemTemplate>
                                        <asp:Label ID="LId" Visible="false" runat="server" Text='<%#Bind("ProviderId") %>'></asp:Label>
                                        <asp:Label ID="LProviderName" runat="server" Text='<%#Bind("ProviderName") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>                                
                                    <asp:TemplateField HeaderText="OttImage">
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" Height="80" Width="80" ImageUrl='<%#Bind("OttImage") %>' runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                <asp:TemplateField HeaderText="Access Status">
                                    <ItemTemplate>
                                        <asp:Label ID="LAccessStatus" Visible="false" runat="server" Text='<%#Bind("AccessStatus") %>'></asp:Label>
                                        <asp:CheckBox ID="CheckBox1" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="TimeStamp">
                                    <ItemTemplate>
                                        <asp:Label ID="LTimeStamp" runat="server" Text='<%#Bind("TimeStamp","{0:dd/MM/yyyy}") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                      
                    </table>
                      <br />
                        <div class="wcf-b-ftr">
                            <asp:LinkButton ID="LinkUpdate" runat="server" OnClick="LinkUpdate_Click" class="btn btn-primary" ValidationGroup="vg">Update</asp:LinkButton>
                        </div>
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>
