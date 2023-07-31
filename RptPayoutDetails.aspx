<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="RptPayoutDetails.aspx.cs" Inherits="ProfitTrader.Admin.RptPayoutDetails" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <asp:Label ID="lbl_customerid" runat="server" Visible="false"></asp:Label>
    <%--        <div class="col-md-12">
          <div class="ava_s_card">
            <div class="ava_s_card_head">Sponsor Income Details</div>
            <div class="ava_s_card_body">
         
         
         <div class="row">
         	
         	<div class="col-md-10">
         		<div class="row">
         		
         		<div class="col-md-3  col-6">
         		<div class="ava_s_card_serch_bx">
         		<div class="ava_s_card_serch_bx_txt">Sponsor Code</div>
                   <asp:TextBox ID="txtCusCode" ReadOnly="false" runat="server" class="ava_s_card_serch_txt_bx" OnTextChanged="txtCusCode_TextChanged"  AutoPostBack="true"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ControlToValidate="txtCusCode"
     ErrorMessage="*" ValidationGroup="cc"></asp:RequiredFieldValidator>

         		</div>
         		</div>
								  
                 

                  
             	
											<div class="col-md-3  col-6">
         		<div class="ava_s_card_serch_bx">
         		<div class="ava_s_card_serch_bx_txt">Sponsor Name</div>
                         <asp:TextBox ID="txtCusName" runat="server" class="ava_s_card_serch_txt_bx" ReadOnly="true"></asp:TextBox>

                  </div>
                                        </div>
                  
                		<div class="col-md-3  col-6">
         		<div class="ava_s_card_serch_bx">
         		<div class="ava_s_card_serch_bx_txt">From Date</div>
                                <asp:TextBox ID="txtfromdate" runat="server"  class="ava_s_card_serch_txt_bx datepicker"></asp:TextBox>


                    </div>
                  </div>
                  
              	<div class="col-md-3  col-6">
         		<div class="ava_s_card_serch_bx">
         		<div class="ava_s_card_serch_bx_txt">To Date</div>
  <asp:TextBox ID="txttodate" runat="server"  class="ava_s_card_serch_txt_bx datepicker"></asp:TextBox>
</div>

                  </div>
                </div>
                    </div>
                             	                             	<div class="col-md-2 col-7 mbl_mr_auto">
                 <asp:Button ID="View" runat="server" Text="View" class="btn btn-primary"   onclick="View_Click"
                    ValidationGroup="vg" />
               
            
                      
                    </div>

                  
                  </div>
              </div>
     </div>
  </div>--%>




    <div class="col-md-12" id="Griddiv" visible="True" runat="server">
        <div class="ava_s_card">
            <div class="ava_s_card_head">
                Payout Details
                     <asp:ImageButton ID="imagebutton1" runat="server"
                         AlternateText="ImageButton 1"
                         ImageUrl="../img/excel.png" OnClick="Button1_Click" />
                <div class="col-md-3  col-6 pull-right">
                    <asp:TextBox ID="txtCusCode" ReadOnly="false" runat="server"
                        class="ava_s_card_serch_txt_bx" OnTextChanged="txtCusCode_TextChanged"
                        AutoPostBack="true" placeholder="Search Code"></asp:TextBox>
                    <br />
                </div>

            </div>
            <div class="ava_s_card_body">

                <asp:GridView ID="GridView1" runat="server"
                    AutoGenerateColumns="False" ShowFooter="false" class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td"
                    GridLines="None">
                    <HeaderStyle CssClass="ava_tb_head " />
                    <EmptyDataTemplate>No Data Found!!!!...</EmptyDataTemplate>

                    <Columns>

                        <asp:TemplateField HeaderText="S No">
                            <ItemTemplate>

                                <%# Container.DataItemIndex+1 %>
                            </ItemTemplate>
                        </asp:TemplateField>



                        <asp:TemplateField HeaderText="User Code">

                            <ItemTemplate>
                                <asp:Label ID="lbl_usercode" runat="server" Text='<%# Eval("usercode") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="User Name">

                            <ItemTemplate>
                                <asp:Label ID="lbl_username" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                            </ItemTemplate>

                        </asp:TemplateField>


                        <%--      <asp:TemplateField  HeaderText="Product Name" >
                      
                      <ItemTemplate>
                            <asp:Label ID="lbl_productname" runat="server" Text='<%# Eval("product_name") %>' ></asp:Label>
                        </ItemTemplate>
                           <FooterTemplate>
                           <b> Total:</b> 
                         </FooterTemplate>
                        </asp:TemplateField>--%>
                        <asp:TemplateField HeaderText="Investment Amount">

                            <ItemTemplate>
                                <asp:Label ID="lblprice" runat="server" Text='<%# Eval("price","{0:N2}") %>'></asp:Label>
                            </ItemTemplate>

                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Payout Amount">

                            <ItemTemplate>
                                <asp:Label ID="lbltotcommission" runat="server" Text='<%# Eval("Amount","{0:N2}") %>'></asp:Label>
                            </ItemTemplate>

                        </asp:TemplateField>


                    </Columns>
                </asp:GridView>


            </div>
        </div>
    </div>

</asp:Content>
