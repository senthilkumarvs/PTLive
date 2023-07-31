<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="BinaryCutoff.aspx.cs" Inherits="ProfitTrader.Admin.BinaryCutoff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Binary Cutoff Details</div>
                <div class="ava_s_card_body">

                    <div id="div1" runat="server">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" PageSize="30" OnPageIndexChanging="GridView2_PageIndexChanging" ShowFooter="true"
                            AllowPaging="True" class="table table-bordered table-hover table-responsive-lg col-md-12"
                            GridLines="None">
                            <HeaderStyle CssClass="ava_tb_head " />
                            <EmptyDataTemplate>
                                <center>Sorry No Data Found!!...</center>
                            </EmptyDataTemplate>
                            <RowStyle />
                            <Columns>
                                <asp:TemplateField HeaderText="S No">
                                    <ItemTemplate>
                                        <%#Container.DataItemIndex+1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Cutoff Date">
                                    <ItemTemplate>
                                        <asp:Label ID="lblfromdate" runat="server" Text='<%#Eval("date","{0:dd/MM/yyyy}") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>



                                <asp:TemplateField HeaderText="View">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="imgview" runat="server" ImageUrl="~/img/viewcom.jpg" Height="25px" Width="25px"
                                            OnClick="imgview_Click" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>

                        </asp:GridView>
                    </div>


                    <div class="col-md-12" id="div2" runat="server" visible="false">

                        <div class="table-responsive">
                            <asp:Label ID="lblweekly" runat="server" Style="font-weight: 700; text-align: left; color: green;" Visible="false"></asp:Label>
                        </div>
                        <asp:GridView ID="GridView1" runat="server" OnRowCreated="GridView1_RowCreated" AutoGenerateColumns="False" ShowFooter="True" class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td" GridLines="None">
                            <HeaderStyle CssClass="ava_tb_head " />
                            <Columns>

                                <asp:TemplateField HeaderText="SNo">
                                    <ItemTemplate>
                                        <asp:Label ID="lblid" runat="server" Text='<%# Eval("advisor_id") %>' Visible="false"></asp:Label>
                                        <%# Container.DataItemIndex+1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Usercode">
                                    <ItemStyle />
                                    <ItemTemplate>
                                        <asp:Label ID="lblcode" runat="server" Text='<%# Eval("usercode") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="User Name">
                                    <ItemStyle />
                                    <ItemTemplate>
                                        <asp:Label ID="lblusername" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Date">
                                    <ItemTemplate>
                                        <asp:Label ID="lbltodate" runat="server" Text='<%# Eval("to_date","{0:dd/MM/yyyy}") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField
                                    HeaderText="LBusiness">
                                    <ItemStyle />
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("leftPv") %>'></asp:Label>
                                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("rightCarry") %>' Visible="false"></asp:Label>
                                        <asp:Label ID="lbl_match1" runat="server" Text='<%# Eval("match_count") %>' Visible="false"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="RBusiness">
                                    <ItemStyle />
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("rightPV") %>'></asp:Label>
                                        <asp:Label ID="lbl_match" runat="server" Text='<%# Eval("match_count") %>' Visible="false"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField
                                    HeaderText="LCarry">
                                    <ItemStyle />
                                    <ItemTemplate>
                                        <asp:Label ID="Label14" runat="server" Text='<%# Eval("leftCarry") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField
                                    HeaderText="RCarry">
                                    <ItemStyle />
                                    <ItemTemplate>
                                        <asp:Label ID="Label14" runat="server" Text='<%# Eval("rightcarry") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Pair Match">
                                    <ItemStyle />
                                    <ItemTemplate>
                                        <asp:Label ID="lblpairmatch" runat="server" Text='<%# Eval("pair_count") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Flush">
                                    <ItemStyle />
                                    <ItemTemplate>
                                        <asp:Label ID="lblflush" runat="server" Text='<%# Eval("flushcount") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>


                                <asp:TemplateField HeaderText="Amount" Visible="true">
                                    <ItemStyle />
                                    <ItemTemplate>
                                        <asp:Label ID="net1" runat="server" Text='<%# Eval("commission_amount","{0:N2}") %>'></asp:Label>
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
