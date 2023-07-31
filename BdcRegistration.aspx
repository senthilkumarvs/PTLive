<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="BdcRegistration.aspx.cs" Inherits="ProfitTrader.Admin.BdcRegistration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="LblActivationId" runat="server" Text="" Visible="false"></asp:Label>
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Bdc Registration</h4>
            </div>
            <div class="card-body">
                <div class="row">

                    <div class="col-md-6">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Project Name</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DdlProject" InitialValue="Select" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:DropDownList ID="DdlProject" CssClass="form-control" runat="server"></asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Bdc Name</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtBdcName" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtBdcName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Bdc Mobile Number</div>
                            <asp:TextBox ID="TxtBdcMobileNumber" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtBdcMobileNumber" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Bdc Type</div>
                            <asp:DropDownList ID="DdlBdcType" CssClass="form-control" runat="server" OnSelectedIndexChanged="DdlBdcType_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Value="0">Select</asp:ListItem>
                                <asp:ListItem Value="1">State</asp:ListItem>
                                <asp:ListItem Value="2">Zonal</asp:ListItem>
                                <asp:ListItem Value="3">District</asp:ListItem>
                                <asp:ListItem Value="4">Taluk</asp:ListItem>
                                <asp:ListItem Value="5">Postal</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DdlBdcType" InitialValue="0" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </div>
                    </div> 
                        <div class="col-md-6" runat="server" id="BdcDiv" >
                            <div class="wcf-set">
                                <div class="wcf-s-lbl">Bdc Postal Code</div>
                                <asp:TextBox ID="TxtBdcPostalCode" OnTextChanged="TxtBdcPostalCode_TextChanged" AutoPostBack="true" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtBdcPostalCode" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </div>
                        </div> 
                        <div class="col-md-6" runat="server" id="ZonalDiv" visible="false">
                            <div class="wcf-set">
                                <div class="wcf-s-lbl">Zonal Name</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DdlZonal" InitialValue="Select" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:DropDownList ID="DdlZonal" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>
                     </div>
                    <div class="col-md-6">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Bdc Postal Name</div>
                            <asp:TextBox ID="TxtBdcPostalName" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TxtBdcPostalName" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                </div>
                <br />
                <div class="wcf-b-ftr">
                    <asp:LinkButton ID="LinkSave" runat="server" class="btn btn-primary" OnClick="LinkSave_Click" ValidationGroup="vg">Save</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Bdc Registration Details</h4>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-responsive-md">

                        <asp:GridView ID="GridView1" runat="server" class="table table-striped custom-table table-hover" GridLines="None"
                            AutoGenerateColumns="false">
                            <EmptyDataTemplate>No Data Found...!</EmptyDataTemplate>
                            <Columns>
                                <asp:TemplateField HeaderText="S.NO" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <%#Container.DataItemIndex+1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Project Name">
                                    <ItemTemplate>
                                        <asp:Label ID="LProjectName" runat="server" Text='<%#Bind("ProjectName") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Name">
                                    <ItemTemplate>
                                        <asp:Label ID="LName" runat="server" Text='<%#Bind("BdcName") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Bdc Code">
                                    <ItemTemplate>
                                        <asp:Label ID="LBdcCode" runat="server" Text='<%#Bind("BdcCode") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Mobile Number">
                                    <ItemTemplate>
                                        <asp:Label ID="LblMobileNumber" runat="server" Text='<%#Eval ("BdcMobileNumber") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Password">
                                    <ItemTemplate>
                                        <asp:Label ID="LBdcPassword" runat="server" Text='<%#Bind("BdcPassword") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Postal Code">
                                    <ItemTemplate>
                                        <asp:Label ID="LPostalCode" runat="server" Text='<%#Bind("BdcPostalCode") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Postal Name">
                                    <ItemTemplate>
                                        <asp:Label ID="LPostalName" runat="server" Text='<%#Bind("BdcPostalName") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Bdc Type">
                                    <ItemTemplate>
                                        <asp:Label ID="LBdcType" runat="server" Text='<%#Bind("Type") %>'></asp:Label>
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
</asp:Content>
