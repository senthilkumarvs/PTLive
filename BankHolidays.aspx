<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="BankHolidays.aspx.cs" Inherits="ProfitTrader.Admin.BankHolidays" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
          
      <div class="row">
    <div class="col-md-12">
                   <div class="ava_s_card">
            <div class="ava_s_card_head">Holiday Master</div>
            <div class="ava_s_card_body">
              <div class="row">
              	<div class="col-md-6 col-sm-6 col-xs-12">
              		 <div class="form-group">
                    <div class="row">
                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">Date</label> 
                    <div class="col-md-8">
                                        <asp:TextBox ID="txtfromdate" runat="server" class="form-control datepicker" OnTextChanged="txtfromdate_changed" AutoPostBack="true"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  class="ava_s_frm_vld" ControlToValidate="txtfromdate" ErrorMessage="*" ValidationGroup="vg"></asp:RequiredFieldValidator>

                                        
                                    </div>
                                </div>
                      </div>
                      </div>
                              <div class="col-md-6 col-sm-6 col-xs-12">
              		 <div class="form-group">
                    <div class="row">
                    <label class="col-md-4 label-control ava_s_frm_inlne_lbl">Description</label>
                    <div class="col-md-8">
                                        <asp:TextBox ID="txt_desc" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  class="ava_s_frm_vld" ControlToValidate="txt_desc" ErrorMessage="*" ValidationGroup="vg"></asp:RequiredFieldValidator>
                                        </div>
                                </div>  

                                <!--/row-->
                            </div>
                      </div>   
                  </div>
                       <div class="ava_s_form_bottom">
                                        <asp:Button ID="Submit" runat="server"  Text="Submit" class="btn btn-primary" OnClick="btnview_Click" ValidationGroup="vg" />
                                  <asp:Button ID="Update" runat="server"  onclick="Update_Click"  Text="Update" class="btn btn-primary" Visible="false"/> 
                                        <asp:Button ID="Cancel" runat="server"  onclick="Cancel_Click"  Text="Cancel" class="btn  btn-danger"/> 

                                    </div>
                                
                            </div>
                        </div>
                    </div>
          
       
					     <div class="col-md-12">
          <div class="ava_s_card">
            <div class="ava_s_card_head">Holiday Details</div>
            <div class="ava_s_card_body">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
                                    ShowFooter="false" class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td" GridLines="None">
                                    <HeaderStyle cssclass="ava_tb_head " />
                                    <EmptyDataTemplate>No Data Found...</EmptyDataTemplate>
                                    
                                    <Columns>
                                        <asp:TemplateField HeaderText="S No">
                                            <ItemTemplate>
                                                <%# Container.DataItemIndex+1 %>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="ID" Visible="false">
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_id" Visible="false" runat="server" Text='<%# Eval("id") %>'></asp:Label>

                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    
                                        <asp:TemplateField HeaderText="Date">
                                            <ItemTemplate>
                                                <asp:Label ID="LDate" runat="server" Text='<%#Eval("date","{0:dd/MM/yyyy}") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Description">
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_desc" runat="server" Text='<%#Eval("description") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Edit">
             <ItemTemplate>
                     <asp:LinkButton ID="Edit" runat="server"   onclick="Edit_Click" class="btn btn-primary-alt btn-xs btn-icon" data-toggle="tooltip" data-original-title="Edit"><em class="fal fa-pencil"></em></asp:LinkButton>
            </ItemTemplate>
            </asp:TemplateField>
            
                        <asp:TemplateField HeaderText="Delete">
             <ItemTemplate>
                         <asp:LinkButton ID="Delete" runat="server"   OnClientClick="return confirm('Are You Sure want to Delete Details?..')"   onclick="Delete_Click" class="btn btn-danger-alt btn-xs btn-icon" data-toggle="tooltip" data-original-title="Close"><em class="fal fa-trash"></em></asp:LinkButton>
            </ItemTemplate>
            </asp:TemplateField>

                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
              
        </div>
                        
</asp:Content>

