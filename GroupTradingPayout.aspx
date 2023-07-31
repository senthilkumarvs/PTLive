<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="GroupTradingPayout.aspx.cs" Inherits="ProfitTrader.Admin.GroupTradingPayout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="LblPaymentId" Visible="false" runat="server" Text=""></asp:Label>
    <asp:Label ID="LblCustomerCode" Visible="false" runat="server" Text=""></asp:Label>
    <asp:Label ID="LblCustomerName" Visible="false" runat="server" Text=""></asp:Label>
    <asp:Label ID="LblWeek" Visible="false" runat="server" Text=""></asp:Label>
    <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Manual Group Trading Payout Generate</div>
                <div class="ava_s_card_body">
                    <div class="row">
                        <div class="col-md-10">
                            <div class="row">
                                <div class="col-md-3  col-6">
                                    <div class="ava_s_card_serch_bx">
                                        <asp:LinkButton ID="LinkGenerate" OnClientClick="if ( !confirm('Are you sure want to Generate Payout?')) return false;" OnClick="LinkGenerate_Click" CssClass="btn btn-block btn-info" runat="server">Generate</asp:LinkButton>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Group Trading Payout</div>
                <div class="ava_s_card_body">
                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">Date</label>
                                    <div class="col-md-8">
                                        <asp:DropDownList ID="ddldate" runat="server" CssClass="form-control">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ValidationGroup="vg" ControlToValidate="ddldate" InitialValue="Select" CssClass="ava_s_frm_vld"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ava_s_form_bottom">
                        <asp:Button ID="btnview" runat="server" CssClass="btn btn-primary" Text="View" OnClick="View_Click" ValidationGroup="vg" />
                        <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn btn-danger" OnClick="btncancel_Click" />
                        <asp:ImageButton ID="imagebutton1" runat="server"
                            AlternateText="ImageButton 1"
                            ImageUrl="../img/excel.png" OnClick="Button1_Click" />
                        <div class="table-responsive">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12" id="recharge123" runat="server" visible="false">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Group Trading Payout Report</div>
                <div class="ava_s_card_body">
                    <div class="pull-right">
                    </div>
                    <div class="table-responsive">
                        <br />
                        <asp:GridView ID="GridView1" runat="server" ShowFooter="true" OnRowDataBound="GridView1_RowDataBound" AutoGenerateColumns="false"
                            class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td">
                            <HeaderStyle CssClass="ava_tb_head " />
                            <EmptyDataTemplate>
                                No Data Found!!..
                            </EmptyDataTemplate>
                            <Columns>
                                <asp:TemplateField HeaderText="Payment Type" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="lblpayment" runat="server" Text='<%#Eval("Ptype") %>'></asp:Label>
                                        <asp:Label ID="LblReceiverId" runat="server" Text='<%#Eval("ReceiverId") %>'></asp:Label>
                                        <asp:Label ID="LblContactNo" runat="server" Text='<%#Eval("ContactNo") %>'></asp:Label>

                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="S.No">
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex+1%>
                                        <asp:Label ID="labpayreqtid" runat="server" Text='<%#Eval("id") %>' Visible="false"></asp:Label>
                                        <asp:Label ID="LblDay" runat="server" Text='<%#Eval("Day") %>' Visible="false"></asp:Label>
                                        <asp:Label ID="lbluserId" runat="server" Text='<%#Eval("userid") %>' Visible="false"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Id Number">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Usercode" runat="server" Text='<%#Eval("usercode") %>'></asp:Label><br />

                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Beneficiary Name">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Username" runat="server" Text='<%#Eval("username") %>' Visible="true"></asp:Label>
                                    </ItemTemplate>

                                </asp:TemplateField>


                                <asp:TemplateField HeaderText="Sponsor Name">
                                    <ItemTemplate>
                                        <asp:Label ID="LSponsorNAme" runat="server" Text='<%#Eval("SponsorNAme") %>' Visible="true"></asp:Label>
                                    </ItemTemplate>

                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Contact No">
                                    <ItemTemplate>
                                        <asp:Label ID="LcontactNo" runat="server" Text='<%#Eval("contactNo") %>' Visible="true"></asp:Label>
                                    </ItemTemplate>

                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Amount" Visible="true">
                                    <ItemTemplate>
                                        <asp:Label ID="Label11" runat="server" Text='<%#Eval("netamount") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText=" Narration" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_dtn" runat="server" Text='<%#Eval("Dn") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText=" Bank" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_bankname" runat="server" Text='<%#Eval("bankname") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText=" Account Number">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_acno" runat="server" Text='<%#Eval("acno") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Branch Name" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_branchname" runat="server" Text='<%#Eval("branchname") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText=" Bank Ifs Code" Visible="true">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_ifsc" runat="server" Text='<%#Eval("ifsccode") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Beneficiary Account Type" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_ACT" runat="server" Text='<%#Eval("AType") %>' Visible="true"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Email" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_email" runat="server" Text='<%#Eval("email") %>'></asp:Label><br />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Status" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_status" runat="server" Text='<%#Eval("Status1") %>'></asp:Label><br />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Payable" Visible="true">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_netAmount" runat="server" Text='<%#Eval("PayableAmount") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Type" Visible="true">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="0" Text="bank1" Selected="True">bank1</asp:ListItem>
                                            <asp:ListItem Value="1" Text="bank1">bank2</asp:ListItem>
                                            <asp:ListItem Value="2" Text="bank1">bank3</asp:ListItem>
                                        </asp:DropDownList>

                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Paid">
                                    <HeaderTemplate>
                                        <asp:Button ID="btnappall" runat="server" OnClientClick="if ( !confirm('Are you sure want to Paid All?')) return false;" Text="Paid All" class="tabledit-delete-button btn-sm  rounded-pill btn btn-info waves-effect waves-light" OnClick="Approvall_click" />
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="CheckApprove" runat="server" Text="Paid" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>

                        <div align="center">
                            <asp:LinkButton ID="link_approve" runat="server" OnClick="link_approve_Click" CssClass="btn-sm  rounded-pill btn btn-primary">Paid </asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12" id="Div1" runat="server" visible="false">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Group Trading Payout Report</div>
                <div class="ava_s_card_body">
                    <div class="pull-right">
                    </div>
                    <div class="table-responsive">
                        <br />
                        <asp:GridView ID="GridView2" runat="server" ShowFooter="true" AutoGenerateColumns="false"
                            class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td">
                            <HeaderStyle CssClass="ava_tb_head " />
                            <EmptyDataTemplate>
                                No Data Found!!..
                            </EmptyDataTemplate>
                            <Columns>
                                <asp:TemplateField HeaderText="Payment Type" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("Ptype") %>'></asp:Label>
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("ReceiverId") %>'></asp:Label>
                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("ContactNo") %>'></asp:Label>

                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="S.No">
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex+1%>
                                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("id") %>' Visible="false"></asp:Label>
                                        <asp:Label ID="Label5" runat="server" Text='<%#Eval("Day") %>' Visible="false"></asp:Label>
                                        <asp:Label ID="Label6" runat="server" Text='<%#Eval("userid") %>' Visible="false"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Id Number">
                                    <ItemTemplate>
                                        <asp:Label ID="Label7" runat="server" Text='<%#Eval("usercode") %>'></asp:Label><br />

                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Beneficiary Name">
                                    <ItemTemplate>
                                        <asp:Label ID="Label8" runat="server" Text='<%#Eval("username") %>' Visible="true"></asp:Label>
                                    </ItemTemplate>

                                </asp:TemplateField>


                                <asp:TemplateField HeaderText="Sponsor Name">
                                    <ItemTemplate>
                                        <asp:Label ID="Label9" runat="server" Text='<%#Eval("SponsorNAme") %>' Visible="true"></asp:Label>
                                    </ItemTemplate>

                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Contact No">
                                    <ItemTemplate>
                                        <asp:Label ID="Label10" runat="server" Text='<%#Eval("contactNo") %>' Visible="true"></asp:Label>
                                    </ItemTemplate>

                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Amount" Visible="true">
                                    <ItemTemplate>
                                        <asp:Label ID="Label151" runat="server" Text='<%#Eval("netamount") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText=" Narration" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="Label12" runat="server" Text='<%#Eval("Dn") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText=" Bank" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="Label13" runat="server" Text='<%#Eval("bankname") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText=" Account Number">
                                    <ItemTemplate>
                                        <asp:Label ID="Label14" runat="server" Text='<%#Eval("acno") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Branch Name" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="Label15" runat="server" Text='<%#Eval("branchname") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText=" Bank Ifs Code" Visible="true">
                                    <ItemTemplate>
                                        <asp:Label ID="Label16" runat="server" Text='<%#Eval("ifsccode") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Payable Amount" Visible="true">
                                    <ItemTemplate>
                                        <asp:Label ID="Label11" runat="server" Text='<%#Eval("PayableAmount") %>'></asp:Label>
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
