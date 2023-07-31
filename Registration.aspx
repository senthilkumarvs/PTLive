<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ProfitTrader.Admin.Registration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="customer_autoid" runat="server" Visible="false"></asp:Label>

    <asp:UpdatePanel ID="update1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
            <asp:Label ID="ref_product_id" runat="server" Visible="false"></asp:Label>
            <asp:Label ID="ref_product_price" runat="server" Visible="false"></asp:Label>
            <asp:Label ID="ref_id" runat="server" Visible="false"></asp:Label>
            <asp:Label ID="lbl_topup_count" runat="server" Visible="false"></asp:Label>
            <asp:Label ID="lblcustomerid" runat="server" Visible="false"></asp:Label>
            <asp:Label ID="lblreferalid" runat="server" Visible="false"></asp:Label>
            <asp:Label ID="introducer_id" runat="server" Visible="false"></asp:Label>
            <asp:Label ID="adjust_id" runat="server" Visible="false"></asp:Label>
            <asp:Label ID="referal_id" runat="server" Visible="false"></asp:Label>
            <div class="row">
                <div class="col-md-12">
                    <div class="ava_s_card">
                        <div class="ava_s_card_head">Registration</div>
                        <div class="ava_s_card_body">
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <div class="form-group">
                                        <div class="row">
                                            <label class="col-md-4 label-control ava_s_frm_inlne_lbl">Name</label>
                                            <div class="col-md-8">
                                                <asp:TextBox ID="txtusercode" runat="server" Visible="false"></asp:TextBox>
                                                <asp:TextBox ID="txtname" runat="server" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="vg"
                                                    ErrorMessage="*" ControlToValidate="txtname" class="ava_s_frm_vld"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <div class="form-group">
                                        <div class="row">
                                            <label class="col-md-4 label-control ava_s_frm_inlne_lbl">Mobile Number</label>
                                            <div class="col-md-8">
                                                <%-- <asp:TextBox ID="txtmobileno" runat="server" MaxLength="10" class="form-control" OnTextChanged="txtmobileno_changed" AutoPostBack="true"></asp:TextBox>
                                                --%>
                                                <asp:TextBox ID="txtmobileno" runat="server" MaxLength="10" class="form-control"></asp:TextBox>

                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ValidationGroup="vg"
                                                    ErrorMessage="*" ControlToValidate="txtmobileno" class="ava_s_frm_vld"></asp:RequiredFieldValidator>
                                                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers" TargetControlID="txtmobileno">
                                                </asp:FilteredTextBoxExtender>
                                            </div>

                                        </div>


                                    </div>

                                </div>

                                <div class="submit-btns">
                                    <asp:Button ID="btnupdate" runat="server" OnClick="btnupdate_Click" Text="Update" class="btn  btn-primary" />
                                    <asp:Button ID="btncancel" runat="server" OnClick="btncancel_Click" Text="Cancel" class="btn  btn-danger" />


                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-12">
                        <div class="ava_s_card">
                            <div class="ava_s_card_head">
                                User Details

                            </div>
                            <div class="ava_s_card_body">
                                <div class="pull-right">
                                    Search Code; 
                     <asp:TextBox ID="txt_searchcode" runat="server" class="form-control" Width="200px" OnTextChanged="txt_searchcode_changed" AutoPostBack="true"></asp:TextBox>
                                    <br />
                                </div>
                                <asp:GridView ID="GridView1" runat="server"
                                    AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand"
                                    OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
                                    OnRowUpdating="GridView1_RowUpdating" OnPageIndexChanging="GridView1_PageIndexChanging"
                                    AllowPaging="True" OnRowCreated="GridView1_RowCreated"
                                    PageSize="50"
                                    class="table table-bordered table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td"
                                    GridLines="None">
                                    <HeaderStyle CssClass="ava_tb_head " />

                                    <EmptyDataTemplate>
                                        No Data Found!!..
                                    </EmptyDataTemplate>
                                    <Columns>
                                        <asp:TemplateField HeaderText="S.NO">
                                            <ItemTemplate>
                                                <%#Container.DataItemIndex + 1%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="ID" Visible="false">
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_id" runat="server" Text='<%#Eval ("userid") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="User Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_customercode" runat="server" Text='<%#Eval ("usercode") %>'></asp:Label>
                                                <br />
                                                <asp:Label ID="lbl_name" runat="server" Text='<%#Eval ("username") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Mobile Number">
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_mobileno" runat="server" Text='<%#Eval ("contactno") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Doj">
                                            <ItemTemplate>
                                                <asp:Label ID="lbl_doj" runat="server" Text='<%#Eval ("dateOfJoin","{0:dd/MM/yyyy}") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Edit">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="edit" runat="server" class="btn btn-primary-alt btn-xs btn-icon" Text="Edit" ToolTip="Edit"
                                                    CommandName="Edit"><em class="fal fa-pencil"></em></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </Columns>

                                </asp:GridView>

                                <asp:Literal ID="Literal1" runat="server" Visible="False"></asp:Literal>
                                <asp:Literal ID="Literal2" runat="server" Visible="False"></asp:Literal>
                            </div>
                        </div>
                    </div>




                </div>
            </div>
            </div>
               
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnupdate" />
            <asp:PostBackTrigger ControlID="btncancel" />

        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
