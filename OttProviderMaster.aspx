<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="OttProviderMaster.aspx.cs" Inherits="ProfitTrader.Admin.OttProviderMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">OTT Provider Master</h4>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Provider Name</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtProvider" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtProvider" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Ott Image</div>
                            <asp:FileUpload ID="FileUpload1" CssClass="form-control ava_s_grm_txtbx" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="FileUpload1"
                                runat="server" ErrorMessage="*" class="ava_s_frm_vld" ValidationGroup="vg"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <br />
                    <br />
                    <br />
                    <div class="wcf-b-ftr" style="padding-left: 20px">
                        <asp:LinkButton ID="LinkSave" runat="server" OnClick="LinkSave_Click" class="btn btn-primary" ValidationGroup="vg">Save</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">OTT Provider Details</h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-responsive-md">
                            <asp:Label ID="LPId" Visible="false" runat="server" Text=""></asp:Label>

                            <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td" GridLines="None"
                                AutoGenerateColumns="false" HeaderStyle-HorizontalAlign="Left">
                                <EmptyDataTemplate>No Data Found...!</EmptyDataTemplate>
                                <Columns>
                                    <asp:TemplateField HeaderText="S.NO" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <%#Container.DataItemIndex+1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Provider Name">
                                        <ItemTemplate>
                                            <asp:Label ID="LId" Visible="false" runat="server" Text='<%#Bind("Id") %>'></asp:Label>
                                            <asp:Label ID="LProviderName" runat="server" Text='<%#Bind("ProviderName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="OttImage">
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" Height="80" Width="80" ImageUrl='<%#Bind("OttImage") %>' runat="server" />
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
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
