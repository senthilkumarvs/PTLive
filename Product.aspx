<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="ProfitTrader.Admin.Product" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Products</h4>
            </div>
            <div class="card-body">
                <div class="row">

                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Product Type</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DdlProductType" InitialValue="0" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:DropDownList ID="DdlProductType" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DdlProductType_SelectedIndexChanged" CssClass="form-control">
                                <asp:ListItem Value="0">Select</asp:ListItem>
                                <asp:ListItem Value="1">Product</asp:ListItem>
                                <asp:ListItem Value="2">Non Product</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Product Name</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TxtProductName" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtProductName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Product Price</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtProductPrice" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtProductPrice" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers" TargetControlID="TxtProductPrice">
                            </asp:FilteredTextBoxExtender>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Selling Price</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtCommissionPrice" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtCommissionPrice" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="Numbers" TargetControlID="TxtCommissionPrice">
                            </asp:FilteredTextBoxExtender>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">PV</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtPv" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtPv" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" FilterType="Numbers" TargetControlID="TxtPv">
                            </asp:FilteredTextBoxExtender>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">ROI</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtRoi" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtRoi" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" FilterType="Numbers" TargetControlID="TxtRoi">
                            </asp:FilteredTextBoxExtender>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Level1</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtLevel1" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtLevel1" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" FilterType="Numbers" TargetControlID="TxtLevel1">
                            </asp:FilteredTextBoxExtender>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Level2</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TxtLevel2" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtLevel2" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server" FilterType="Numbers" TargetControlID="TxtLevel2">
                            </asp:FilteredTextBoxExtender>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Level3</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TxtLevel3" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtLevel3" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" FilterType="Numbers" TargetControlID="TxtLevel3">
                            </asp:FilteredTextBoxExtender>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Level4</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TxtLevel4" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtLevel4" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender9" runat="server" FilterType="Numbers" TargetControlID="TxtLevel4">
                            </asp:FilteredTextBoxExtender>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Level5</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TxtLevel5" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtLevel5" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender8" runat="server" FilterType="Numbers" TargetControlID="TxtLevel5">
                            </asp:FilteredTextBoxExtender>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">ROI Months</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TxtRoiMonths" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtRoiMonths" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender10" runat="server" FilterType="Numbers" TargetControlID="TxtRoiMonths">
                            </asp:FilteredTextBoxExtender>
                        </div>
                    </div>
                      <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Level Months</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TxtLevelMonths" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtLevelMonths" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender11" runat="server" FilterType="Numbers" TargetControlID="TxtLevelMonths">
                            </asp:FilteredTextBoxExtender>
                        </div>
                    </div>
                    <div class="col-md-3" id="ImageDiv" runat="server">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Image</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FileImage" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:FileUpload ID="FileImage" runat="server" CssClass="form-control" AllowMultiple="true" />
                        </div>
                    </div>
                </div>
                <br />
                <div class="wcf-b-ftr">
                    <asp:LinkButton ID="LinkSave" runat="server" class="btn btn-primary" OnClick="LinkSave_Click" ValidationGroup="vg">Save</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Product Details</h4>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-responsive-md">

                        <asp:GridView ID="GridView1" runat="server" class="table table-striped custom-table table-hover" GridLines="None"
                            AutoGenerateColumns="false">
                            <EmptyDataTemplate>No Data Found...!</EmptyDataTemplate>
                            <Columns>
                                <asp:TemplateField HeaderText="S.NO" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <%#Container.DataItemIndex+1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Name">
                                    <ItemTemplate>
                                        <asp:Label ID="LName" runat="server" Text='<%#Bind("ProductName") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="P Price">
                                    <ItemTemplate>
                                        <asp:Label ID="LBdcCode" runat="server" Text='<%#Bind("ProductPrice") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="C Price">
                                    <ItemTemplate>
                                        <asp:Label ID="LblMobileNumber" runat="server" Text='<%#Eval ("CommissionPrice") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="PV">
                                    <ItemTemplate>
                                        <asp:Label ID="LBdcPassword" runat="server" Text='<%#Bind("PV") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="ROI">
                                    <ItemTemplate>
                                        <asp:Label ID="LPostalCode" runat="server" Text='<%#Bind("Roi") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Levels">
                                    <ItemTemplate>
                                        <asp:Label ID="LLevels" runat="server" Text='<%#Bind("Levels") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Image">
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" Height="100" Width="100" ImageUrl='<%#Bind("ProductImage") %>' runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Roi Months">
                                    <ItemTemplate>
                                        <asp:Label ID="LMonths" runat="server" Text='<%#Bind("RoiMonths") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Level Months">
                                    <ItemTemplate>
                                        <asp:Label ID="LLevelMonths" runat="server" Text='<%#Bind("LevelMonths") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="TimeStamp">
                                    <ItemTemplate>
                                        <asp:Label ID="LTimeStamp" runat="server" Text='<%#Bind("TimeStamp","{0:dd/MM/yyyy}") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>
                        </asp:GridView>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
