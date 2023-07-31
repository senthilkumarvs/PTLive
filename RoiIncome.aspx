<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="RoiIncome.aspx.cs" Inherits="ProfitTrader.Admin.RoiIncome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Roi Income Details</div>
                <div class="ava_s_card_body">

                    <div id="div1" runat="server">


                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" PageSize="30" OnPageIndexChanging="GridView2_PageIndexChanging"
                            AllowPaging="True" class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td"
                            GridLines="None">
                            <HeaderStyle CssClass="ava_tb_head " />
                            <EmptyDataTemplate>
                                <center>
                        Sorry No Data Found!!...
                    </center>
                            </EmptyDataTemplate>
                            <RowStyle />
                            <Columns>
                                <asp:TemplateField HeaderText="S No">
                                    <ItemTemplate>
                                        <%#Container.DataItemIndex+1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Date">
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
                        </div>


                        <asp:GridView ID="GridView1" runat="server"
                            OnRowCreated="GridView1_RowCreated"
                            AutoGenerateColumns="False" ShowFooter="True" class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td"
                            GridLines="None">
                            <HeaderStyle CssClass="ava_tb_head " />
                            <Columns>

                                <asp:TemplateField HeaderText="SNo">
                                    <ItemTemplate>
                                        <asp:Label ID="lblid" runat="server" Text='<%# Eval("userid") %>' Visible="false"></asp:Label>
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
                                        <asp:Label ID="lbltodate" runat="server" Text='<%# Eval("entrydate","{0:dd/MM/yyyy}") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Credit">
                                    <ItemStyle />
                                    <ItemTemplate>
                                        <asp:Label ID="lblcredit" runat="server" Text='<%# Eval("credit","{0:n2}") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Type">
                                    <ItemStyle />
                                    <ItemTemplate>
                                        <asp:Label ID="lblstatus" runat="server" Text='<%# Eval("topupstatus") %>'></asp:Label>
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
