<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="PaymentRequest.aspx.cs" Inherits="ProfitTrader.Admin.PaymentRequest" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="LblId" runat="server" Text="" Visible="false"></asp:Label>

    <asp:Label ID="lblcusid" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lblamunt" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lblcode" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="LblPaymentId" runat="server" Visible="false"></asp:Label>
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Payment Request</h4>
            </div>
            <div class="card-body">
                <div class="row">

                    <div class="col-md-6">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">From Date</div>
                            <asp:TextBox ID="txtfromdate" runat="server" class="ava_s_grm_txtbx form-control datepicker"></asp:TextBox>

                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">To Date</div>
                            <asp:TextBox ID="txttodate" runat="server" class="ava_s_grm_txtbx form-control datepicker"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <br />
                <div class="wcf-b-ftr">
                    <asp:Button ID="Submit" align="center" runat="server" OnClick="btnview_Click" Text="View" class="btn-sm  rounded-pill btn btn-info mb-5" />
                    <asp:Button ID="btncancel" align="center" runat="server" Text="Cancel" class="btn-sm  rounded-pill btn btn-danger mb-5" OnClick="btncancel_Click" />
                    <asp:Button ID="btnexport" class="btn-sm  rounded-pill btn btn-success mb-5" runat="server" Text="Export" OnClick="btnexport_Click" />
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Payment Request Details</h4>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-responsive-md">

                        <asp:GridView ID="GridView1" runat="server" ShowFooter="true" AutoGenerateColumns="false" OnRowUpdating="GridView1_RowUpdating" class="table table-hover table-bordered" OnPageIndexChanging="GridView1_PageIndexChanging">
                            <Columns>
                                <asp:TemplateField HeaderText="S No">
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex+1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Customer Code & Name ">
                                    <ItemTemplate>
                                        <asp:Label ID="labpayreqtid" Visible="false" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                        <asp:Label ID="LblPhoneNumber" runat="server" Text='<%# Eval("PhoneNumber") %>'></asp:Label>
                                        <br />
                                        <asp:Label ID="luser_name" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                        <asp:Label ID="labcusid" runat="server" Text='<%#Eval("UserId") %>' Visible="false"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Amount">
                                    <ItemTemplate>
                                        <asp:Label ID="LblAmount" runat="server" Text='<%# Eval("Amount") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="TransferAmount">
                                    <ItemTemplate>
                                        <asp:Label ID="labamt" runat="server" Text='<%# Eval("TransferAmount") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Date">
                                    <ItemTemplate>
                                        <asp:Label ID="LDate" runat="server" Text='<%#Eval("TimeStamp","{0:dd, MMM yyyy}") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ReceiverId" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="LblReceiverId" runat="server" Text='<%#Eval("ReceiverId") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Bank A/c no">
                                    <ItemTemplate>
                                        <asp:Label ID="LblAcno" runat="server" Text='<%#Eval("acno") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="IFSC Code">
                                    <ItemTemplate>
                                        <asp:Label ID="Lblifscode" runat="server" Text='<%#Eval("IfscCode") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Approval">
                                    <HeaderTemplate>                
                                        <asp:Button ID="btnappall" runat="server" OnClientClick="if ( !confirm('Are you sure want to Approve All?')) return false;" Text="Approve All" class="tabledit-delete-button btn-sm  rounded-pill btn btn-info waves-effect waves-light" OnClick="Approvall_click" />
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="CheckApprove" runat="server" Text="Approve" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Reject">
                                    <HeaderTemplate>                 
                                        <asp:Button ID="BtnRejectAll" runat="server" OnClientClick="if ( !confirm('Are you sure want to Reject All?')) return false;" Text="Reject All" class="tabledit-delete-button btn-sm  rounded-pill btn btn-danger waves-effect waves-light" OnClick="BtnRejectAll_Click" />
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="CheckReject" runat="server" Text="Reject" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Description" Visible="false">
                                    <ItemTemplate>
                                        <asp:Panel ID="Panel1" runat="server" Visible="false">
                                            <asp:TextBox ID="txtdescription" runat="server"></asp:TextBox>
                                        </asp:Panel>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </table>
                    <asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>
                    <br />
                    <div align="center">
                        <asp:LinkButton ID="link_approve" runat="server" OnClick="link_approve_Click" CssClass="btn-sm  rounded-pill btn btn-primary">Approve </asp:LinkButton>
                        &nbsp: 
                            <asp:LinkButton ID="Link_Reject" runat="server" OnClick="Link_Reject_Click" CssClass="btn-sm  rounded-pill btn btn-danger">Reject </asp:LinkButton>
                    </div>
                </div>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </div>

    <asp:Label ID="lbl_row_id" runat="server" Visible="false"></asp:Label>
</asp:Content>
