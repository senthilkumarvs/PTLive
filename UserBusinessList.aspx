<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="UserBusinessList.aspx.cs" Inherits="ProfitTrader.Admin.UserBusinessList" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1 {
            vertical-align: top;
            width: 650px;
            text-align: center;
        }
    </style>
    <script language="javascript" type="text/javascript">
        function IsValidate()
        {
        if (document.getElementById('<%=txt_customercode.ClientID %>').value == "") {
        alert("Enter User Code!!!");
        document.getElementById('<%=txt_customercode.ClientID %>').focus();
        return false;
        }

        if(document.getElementById('<%=TextBox1.ClientID %>').value=="")
        {
        alert("Please Select From Date !!!");
        document.getElementById('<%=TextBox1.ClientID %>').focus();
        return false;
        }
        
        if(document.getElementById('<%=TextBox2.ClientID %>').value=="")
        {
        alert("Please Select To Date !!!");
        document.getElementById('<%=TextBox2.ClientID %>').focus();
        return false;
        }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>

    <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Business Report</div>
                <div class="ava_s_card_body">


                    <div class="row">

                        <div class="col-md-10">
                            <div class="row">

                                <div class="col-md-3  col-6">
                                    <div class="ava_s_card_serch_bx">
                                        <div class="ava_s_card_serch_bx_txt">User Code</div>
                                        <asp:TextBox ID="txt_customercode" runat="server" class="ava_s_card_serch_txt_bx"
                                            OnTextChanged="txt_customercode_TextChanged" AutoPostBack="True"></asp:TextBox>

                                    </div>
                                </div>





                                <div class="col-md-3  col-6">
                                    <div class="ava_s_card_serch_bx">
                                        <div class="ava_s_card_serch_bx_txt">User Name</div>
                                        <asp:TextBox ID="txt_customername" runat="server" class="ava_s_card_serch_txt_bx"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="col-md-3  col-6">
                                    <div class="ava_s_card_serch_bx">
                                        <div class="ava_s_card_serch_bx_txt">From Date</div>
                                        <asp:TextBox ID="TextBox1" runat="server" class="ava_s_card_serch_txt_bx datepicker"></asp:TextBox>


                                    </div>
                                </div>

                                <div class="col-md-3  col-6">
                                    <div class="ava_s_card_serch_bx">
                                        <div class="ava_s_card_serch_bx_txt">To Date</div>
                                        <asp:TextBox ID="TextBox2" runat="server" class="ava_s_card_serch_txt_bx datepicker"></asp:TextBox>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 col-7 mbl_mr_auto">

                            <asp:Button ID="Button1" runat="server" Text="View" OnClick="Button1_Click" class="btn  btn-primary" OnClientClick="IsValidate()" />



                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12" runat="server" id="Businessdiv" visible="false">
            <div class="ava_s_card">
                <div class="ava_s_card_head">
                    Business  Details
                </div>
                <div class="ava_s_card_body">
                    <div class="table-responsive">

                        <%--       <center>
                <img src="../TreeImages/level1.png" style="width: 680px; height: 12px;"  / >  </center>--%>
                        <table id="tab1" runat="server" align="center">
                            <tr>
                                <td class="style1" valign="top">
                                    <b style="font-size: 18px">Left Side</b>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                        class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td" ShowFooter="true" OnRowDataBound="GridView1_RowDataBound"
                                        GridLines="both" Width="50%">
                                        <HeaderStyle CssClass="ava_tb_head " />


                                        <EmptyDataTemplate>
                                            No Data Found!!!..
                                        </EmptyDataTemplate>
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sno">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex+1 %>
                                                    <asp:Label ID="lbluser_id" runat="server" Text='<%#Eval("user_id") %>' Visible="false"></asp:Label>
                                                    <asp:Label ID="lblst" runat="server" Text='<%#Eval("status") %>' Visible="false"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Member Code">
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_usercode" runat="server" Text='<%#Eval("usercode") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_username" runat="server" Text='<%#Eval("username") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Commission" Visible="False" HeaderStyle-BackColor="#339966">
                                                <ItemTemplate>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="ContactNo" Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_contactno" runat="server" Text='<%#Eval("contactno") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Placement Code">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblintrocode" runat="server" Text='<%#Eval("introcode") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Doj">
                                                <ItemTemplate>
                                                    <asp:Label ID="lbldoj" runat="server" Text='<%#Eval("dateofJoin","{0:dd/MM/yyyy}") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <%--<asp:TemplateField HeaderText="PRODUCT" Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblpname" runat="server" Text='<%#Eval("productname") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>--%>
                                            <asp:TemplateField HeaderText=" Price">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblprice" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="lbltotpv" runat="server" Text="Label"></asp:Label>
                                                </FooterTemplate>
                                            </asp:TemplateField>

                                        </Columns>


                                    </asp:GridView>
                                    <br />
                                </td>
                                <td style="width: `;"></td>
                                <td class="style1" valign="top">
                                    <b style="font-size: 18px">Right Side</b>
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"
                                        ShowFooter="true" OnRowDataBound="GridView2_RowDataBound" class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td" GridLines="both" Width="50%">
                                        <HeaderStyle CssClass="ava_tb_head " />

                                        <EmptyDataTemplate>
                                            No Data Found!!!..
                                        </EmptyDataTemplate>
                                        <Columns>
                                            <asp:TemplateField HeaderText="Sno">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex+1 %>
                                                    <asp:Label ID="lbluserid" runat="server" Text='<%#Eval("user_id") %>' Visible="false"></asp:Label>
                                                    <asp:Label ID="lblst" runat="server" Text='<%#Eval("status") %>' Visible="false"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Member Code">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblusercode" runat="server" Text='<%#Eval("usercode") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblusername" runat="server" Text='<%#Eval("username") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Commission" Visible="False">
                                                <ItemTemplate>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="ContactNo" Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblcontactno" runat="server" Text='<%#Eval("contactno") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Placement Code">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblagentcode" runat="server" Text='<%#Eval("introcode") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Doj">
                                                <ItemTemplate>
                                                    <asp:Label ID="lbldate" runat="server" Text='<%#Eval("dateofJoin","{0:dd/MM/yyyy}") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="PRODUCT" Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblpname" runat="server" Text='<%#Eval("productname") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Price">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblprice" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Label ID="lbltotpv" runat="server" Text="Label"></asp:Label>
                                                </FooterTemplate>
                                            </asp:TemplateField>


                                        </Columns>


                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>



                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
