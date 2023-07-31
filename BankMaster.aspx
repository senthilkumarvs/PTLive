<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="BankMaster.aspx.cs" Inherits="ProfitTrader.Admin.BankMaster" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ToolkitScriptManager ID="SCRIPT" runat="server"></asp:ToolkitScriptManager>
    <asp:Label ID="LblId" Visible="false" runat="server" Text=""></asp:Label>
    	 <div class="row">
    <div class="col-md-12">
                   <div class="ava_s_card">
            <div class="ava_s_card_head">Bank Master</div>
            <div class="ava_s_card_body">
              <div class="row">
              	<div class="col-md-6 col-sm-6 col-xs-12">
              		 <div class="form-group">
                    <div class="row">
                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">Bank Name</label>
                    <div class="col-md-8">
                                                <asp:TextBox ID="txtbankname" runat="server" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtbankname"
                                                    ValidationGroup="vg" class="ava_s_frm_vld"></asp:RequiredFieldValidator>
                                               

                                            </div>
                                        </div>
                                    </div>
                    </div>
                   </div>
                                         <div class="ava_s_form_bottom">
                                                        <asp:Button ID="btnsave" runat="server" Text="Save" ValidationGroup="vg" class="btn btn-primary"
                                                            OnClick="btnsave_Click" />
                                                        &nbsp;  
                                                    <asp:Button ID="btnupdate" runat="server" OnClick="btnupdate_Click" Text="Update" class="btn btn-primary" />
                                                        &nbsp; 
                                                    <asp:Button ID="btncancel" runat="server" OnClick="btncancel_Click" Text="Cancel" class="btn btn-danger" />
                                                    </div>
                                               
                                          
                    </div>
                </div>
     </div>  
             <div class="col-md-12">
          <div class="ava_s_card">
            <div class="ava_s_card_head">Bank Details</div>
            <div class="ava_s_card_body">
        
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None" class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td">
                                        <EmptyDataTemplate>No Data Found!!!!....</EmptyDataTemplate>
                                        <HeaderStyle cssclass="ava_tb_head " />
                                        <Columns>
                                            <asp:TemplateField HeaderText="S.No">
                                                <ItemTemplate>
                                                    <%#Container.DataItemIndex + 1 %>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="ID" Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="llid" runat="server" Text='<%#Eval ("Id") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Bank Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="llname" runat="server" Text='<%#Eval ("BankName") %>'></asp:Label>
                                                </ItemTemplate>
                                               
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Edit">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="Edit" runat="server" class="btn btn-primary-alt btn-xs btn-icon" Text="Edit" ToolTip="Edit"
                                                        OnClick="Edit_Click" ><em class="fal fa-pencil"></em></asp:LinkButton>
                                                </ItemTemplate>
                                                
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Delete">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="Delete" runat="server" ToolTip="Delete" class="btn btn-danger-alt btn-xs btn-icon" Text="Delete"
                                                        OnClientClick="return confirm('Are You Sure want to Delete Bank Details?..')" OnClick="Delete_Click" >
<em class="fal fa-trash"></em></asp:LinkButton>
                                                </ItemTemplate>
                                                <HeaderStyle></HeaderStyle>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                           
                        </div>
                    </div>
                </div>
         
</asp:Content>

