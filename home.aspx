<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="ProfitTrader.Admin.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row ava_s_dash_out_row ">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-4 col-sm-12">
                    <a href="CustomerList.aspx">
                        <div class="ava_dash_out ava_dash_red bg-gradient-primary">
                            <div class="ava_dash_left"><i class="fal fa-award"></i></div>
                            <div class="ava_dash_top">
                                <div class="ava_dash_right">
                                    <div class="ava_dash_right_h1">
                                        <asp:Label ID="lbl_usercount" runat="server"></asp:Label>
                                    </div>
                                    <div class="ava_dash_right_h2">No of Customers</div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div> 

                <div class="col-md-4">
                    <a href="dailybusinessDetails.aspx">
                        <div class="ava_dash_out ava_dash_red bg-gradient-info">
                            <div class="ava_dash_left"><i class="fal fa-user-alt"></i></div>
                            <div class="ava_dash_top">
                                <div class="ava_dash_right">
                                    <div class="ava_dash_right_h1">
                                        <asp:Label ID="lbl_totalBusiness" runat="server"></asp:Label>
                                    </div>
                                    <div class="ava_dash_right_h2">Total Business</div>
                                </div>

                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-4">
                    <a href="dailybusinessDetails.aspx">
                        <div class="ava_dash_out ava_dash_dp5 bg-gradient-success">
                            <div class="ava_dash_left"><i class="fal fa-money-bill"></i></div>
                            <div class="ava_dash_top">
                                <div class="ava_dash_right">
                                    <div class="ava_dash_right_h1">
                                        <asp:Label ID="lbltodaybusiness" runat="server" Text="0"></asp:Label>
                                    </div>
                                    <div class="ava_dash_right_h2">Today Business</div>
                                </div>

                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-4">
                    <a href="CustomerList.aspx">
                        <div class="ava_dash_out ava_dash_dpblue bg-gradient-danger">
                            <div class="ava_dash_left"><i class="fal fa-briefcase"></i></div>
                            <div class="ava_dash_top">
                                <div class="ava_dash_right">
                                    <div class="ava_dash_right_h1">

                                        <asp:Label ID="lbltdycustomers" runat="server"></asp:Label>
                                    </div>
                                    <div class="ava_dash_right_h2">Today Customers</div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="IncomeWalletDetails.aspx">
                        <div class="ava_dash_out ava_dash_dp5 bg-gradient-warning">
                            <div class="ava_dash_left"><i class="fal fa-briefcase"></i></div>
                            <div class="ava_dash_top">
                                <div class="ava_dash_right">
                                    <div class="ava_dash_right_h1">

                                        <asp:Label ID="LblIncomeWallet" runat="server"></asp:Label>
                                    </div>
                                    <div class="ava_dash_right_h2">Income Wallet</div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="WithdrawalReport.aspx">
                        <div class="ava_dash_out ava_dash_dp3 bg-gradient-secondary">
                            <div class="ava_dash_left"><i class="fal fa-briefcase"></i></div>
                            <div class="ava_dash_top">
                                <div class="ava_dash_right">
                                    <div class="ava_dash_right_h1">

                                        <asp:Label ID="LblWithdrawalWallet" runat="server"></asp:Label>
                                    </div>
                                    <div class="ava_dash_right_h2">Withdrawal Wallet</div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="#">
                        <div class="ava_dash_out ava_dash_dp4 bg-gradient-info">
                             <div class="ava_dash_top">
                                <div class="ava_dash_right">
                                    <div class="ava_dash_right_h1" style="padding-left:15px !important">
                                        <asp:Label ID="LblReturnsWallet" runat="server"></asp:Label>
                                    </div>
                                    <div class="ava_dash_right_h2">Returns Wallet</div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="#">
                        <div class="ava_dash_out ava_dash_dp4 bg-gradient-primary">
                            <div class="ava_dash_left"><i class="fal fa-briefcase"></i></div>
                            <div class="ava_dash_top">
                                <div class="ava_dash_right">
                                    <div class="ava_dash_right_h1">
                                        <asp:Label ID="LblBdcWallet" Text="0" runat="server"></asp:Label>
                                    </div>
                                    <div class="ava_dash_right_h2">BDC Wallet</div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div> 
                  <div class="col-md-4">
                    <a href="#">
                        <div class="ava_dash_out ava_dash_dp4 bg-gradient-danger">
                            <div class="ava_dash_left"><i class="fal fa-briefcase"></i></div>
                            <div class="ava_dash_top">
                                <div class="ava_dash_right">
                                    <div class="ava_dash_right_h1">
                                        <asp:Label ID="LblPudhukadaiWallet" Text="0" runat="server"></asp:Label>
                                    </div>
                                    <div class="ava_dash_right_h2">Pudhukadai Wallet</div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div> 
                <div class="col-md-4">
                    <a href="#">
                        <div class="ava_dash_out ava_dash_dp4 bg-gradient-warning">
                            <div class="ava_dash_left"><i class="fal fa-briefcase"></i></div>
                            <div class="ava_dash_top">
                                <div class="ava_dash_right">
                                    <div class="ava_dash_right_h1">
                                        <asp:Label ID="LblPurchaseWallet" Text="0" runat="server"></asp:Label>
                                    </div>
                                    <div class="ava_dash_right_h2">Purchase Wallet</div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div> 
                <div class="col-md-4">
                    <a href="#">
                        <div class="ava_dash_out ava_dash_dp4 bg-gradient-secondary">
                            <div class="ava_dash_left"><i class="fal fa-briefcase"></i></div>
                            <div class="ava_dash_top">
                                <div class="ava_dash_right">
                                    <div class="ava_dash_right_h1">
                                        <asp:Label ID="LblAdAgencyWallet" Text="0" runat="server"></asp:Label>
                                    </div>
                                    <div class="ava_dash_right_h2">Ad Agency Wallet</div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div> 
            </div>
        </div>
    </div> 
</asp:Content>
