<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="CommissionGenerate.aspx.cs" Inherits="ProfitTrader.Admin.CommissionGenerate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Manual Commission Generate</div>
                <div class="ava_s_card_body">
                    <div class="row">
                        <div class="col-md-10">
                            <div class="row">
                                <div class="col-md-3  col-6">
                                    <div class="ava_s_card_serch_bx">
                                        <asp:LinkButton ID="LinkDailyTask" OnClientClick="if ( !confirm('Are you sure want to Generate Daily Task?')) return false;" OnClick="LinkDailyTask_Click" CssClass="btn btn-block btn-info" runat="server">Generate Daily Task</asp:LinkButton>
                                        <asp:LinkButton ID="LinkGroupTradingRoi" OnClientClick="if ( !confirm('Are you sure want to Generate Group Trading Roi?')) return false;" OnClick="LinkGroupTradingRoi_Click" CssClass="btn btn-block btn-primary" runat="server">Generate Group Trading Roi </asp:LinkButton>
                                        <asp:LinkButton ID="LinkGroupTradingLevel1" OnClientClick="if ( !confirm('Are you sure want to Generate Group Trading Level 1?')) return false;" OnClick="LinkGroupTradingLevel1_Click" CssClass="btn btn-block btn-warning" runat="server">Generate Group Trading Level </asp:LinkButton>
                                        <%--<asp:LinkButton ID="LinkGroupTradingLevel2" OnClientClick="if ( !confirm('Are you sure want to Generate Group Trading Level 2?')) return false;" OnClick="LinkGroupTradingLevel2_Click" CssClass="btn btn-block btn-danger" runat="server">Generate Group Trading Level 2</asp:LinkButton>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
