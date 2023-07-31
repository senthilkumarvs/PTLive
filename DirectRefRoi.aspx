<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="DirectRefRoi.aspx.cs" Inherits="ProfitTrader.Admin.DirectRefRoi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Referral LevelIncome</div>
                <div class="ava_s_card_body">
                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">User Code</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="txtrefercode" runat="server" AutoPostBack="true" class="form-control"
                                            OnTextChanged="txtrefercode_TextChanged"></asp:TextBox>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">User Name</label>
                                    <div class="col-md-8">

                                        <asp:TextBox ID="txtrefername" runat="server" ReadOnly="true" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                        </div>


                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">From Date</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="txtfromdate" runat="server" class="form-control datepicker"></asp:TextBox>



                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">To Date</label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="txttodate" runat="server" class="form-control datepicker"></asp:TextBox>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ava_s_form_bottom">
                        <asp:Button ID="btnview" runat="server" class="btn  btn-primary" Text="View" OnClick="btnview_Click" />



                        <asp:Button ID="btncancel" runat="server" Text="Cancel" OnClick="btncancel_Click" class="btn  btn-danger" />


                    </div>
                </div>


            </div>
        </div>
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Roi Referral LevelIncome</div>
                <div class="ava_s_card_body">

                    <%--    <div id="div1" runat="server">


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
                    </div>--%>



                    <div class="col-md-12" id="div2" runat="server">

                        <div class="table-responsive">
                        </div>


                        <asp:GridView ID="GridView1" runat="server" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="true" PageSize="100"
                            AutoGenerateColumns="False" ShowFooter="True" class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td"
                            GridLines="None">
                            <HeaderStyle CssClass="ava_tb_head " />
                            <EmptyDataTemplate>
                                <center>
                        Sorry No Data Found!!...
                    </center>
                            </EmptyDataTemplate>
                            <Columns>
                                <asp:TemplateField HeaderText="SNO">
                                    <ItemTemplate>
                                        <%#Container.DataItemIndex+1 %>
                                    </ItemTemplate>

                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="User Code">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_usercode" runat="server" Text='<%#Eval("usercode") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>


                                <asp:TemplateField HeaderText="User Name">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_usercode" runat="server" Text='<%#Eval("username") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>


                                <asp:TemplateField HeaderText="Ref Code">
                                    <ItemTemplate>
                                        <asp:Label ID="dfgdf" runat="server" Text='<%#Eval("refcode") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Ref Name">
                                    <ItemTemplate>
                                        <asp:Label ID="lbldfgdftds" runat="server" Text='<%#Eval("refname") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Credit">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_amount" runat="server" Text='<%#Eval("credit","{0:n2}") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Sc" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="lbltds" runat="server" Text='<%#Eval("tds","{0:n2}") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Total Amount" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="lbltds" runat="server" Text='<%#Eval("totalcredit","{0:n2}") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>




                                <%--                            <asp:TemplateField HeaderText="Months">
                                <ItemTemplate>

                                    <%#Container.DataItemIndex+1 %>
                                </ItemTemplate>
                            </asp:TemplateField>--%>


                                <asp:TemplateField HeaderText="Level">
                                    <ItemTemplate>

                                        <asp:Label ID="lbl_Level" runat="server" Text='<%#Eval("Level") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Date">
                                    <ItemTemplate>

                                        <asp:Label ID="lbl_date" runat="server" Text='<%#Eval("entrydate","{0:dd/MM/yyyy}") %>'></asp:Label>
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
