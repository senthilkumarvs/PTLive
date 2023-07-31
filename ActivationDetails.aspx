<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="ActivationDetails.aspx.cs" Inherits="ProfitTrader.Admin.ActivationDetails" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Activation Wallet Details</h4>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Customer Code</div>
                            <asp:TextBox ID="txtCusCode" OnTextChanged="txtCusCode_TextChanged" runat="server" CssClass="form-control" AutoPostBack="true"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="re2" runat="server" ControlToValidate="txtCusCode"
                                ErrorMessage="*" ValidationGroup="cc"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Customer Name</div>
                            <asp:TextBox ID="txtCusName" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">From Date</div>
                            <asp:TextBox ID="txtfrom" runat="server" CssClass="form-control datepicker"></asp:TextBox> 
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">To Date</div>
                            <asp:TextBox ID="txtto" runat="server" CssClass="form-control datepicker"></asp:TextBox> 
                        </div>
                    </div>
                </div>
                <br />
                <div class="wcf-b-ftr">
                    <asp:Button ID="View" runat="server" Text="Search" class="btn btn-block btn-info" OnClick="View_Click" ValidationGroup="vg" />
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-12">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-info box-solid">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Activation Wallet Details</h4>
                        </div>
                        <!-- /.box-header -->
                        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
                        <div class="page-body">
                            <div class="card  card-border-primary">
                                <div class="table table-styling table-bordered"></div>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" HeaderStyle-HorizontalAlign="Center"
                                    GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="true" PageSize="100" class="col-md-12 table table-bordered ">
                                    <EmptyDataTemplate>
                                        No Data Found!!..
                                    </EmptyDataTemplate>
                                    <Columns>
                                        <asp:TemplateField HeaderText="SNO" Visible="false">
                                            <ItemTemplate>
                                                <asp:Label ID="lbluser_id" runat="server" Text='<%#Eval("UserId") %>' Visible="false"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="SNO">
                                            <ItemTemplate>
                                                <%# Container.DataItemIndex+1%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Customer">
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_intorducercode" runat="server" Text='<%#Eval("user_code") %>'></asp:Label>
                                                <br />
                                                <asp:Label ID="lbl_customername" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Advisor">
                                            <ItemTemplate>
                                                <asp:Label ID="LblAdvisoCo" runat="server" Text='<%#Eval("AdvisorCode") %>'></asp:Label>
                                                <br />
                                                <asp:Label ID="LblAdvisoNam" runat="server" Text='<%#Eval("AdvisorName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Date">
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_doj" runat="server" Text='<%#Eval("date","{0:dd/MM/yyyy}") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Status" Visible="false">
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_directcount" runat="server" Text='<%#Eval("Status") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Credit">
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_customername" runat="server" Text='<%#Eval("credit","{0:n}") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Debit">
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_customername" runat="server" Text='<%#Eval("debit","{0:n}") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Balance">
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_directcount" runat="server" Text='<%#Eval("balance","{0:n}") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </Columns>



                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
