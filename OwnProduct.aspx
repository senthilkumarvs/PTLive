<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="OwnProduct.aspx.cs" Inherits="ProfitTrader.Admin.OwnProduct" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Own Products</h4>
            </div>
            <div class="card-body">
                <div class="row">

                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Category</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DdlCategory" InitialValue="0" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:DropDownList ID="DdlCategory" OnSelectedIndexChanged="DdlCategory_SelectedIndexChanged" AutoPostBack="true" runat="server" CssClass="form-control">
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Sub Category</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DdlSubCategory" InitialValue="0" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:DropDownList ID="DdlSubCategory" runat="server" CssClass="form-control">
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
                            <div class="wcf-s-lbl">Product Image</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="FileImage" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:FileUpload ID="FileImage" runat="server" CssClass="form-control" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Binary Pv</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TxtBinaryPv" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtBinaryPv" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" FilterType="Numbers" TargetControlID="TxtBinaryPv"></asp:FilteredTextBoxExtender>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">MRP</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtMRP" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtMRP" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers" TargetControlID="TxtMRP"></asp:FilteredTextBoxExtender>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Offer Price</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtOfferPrice" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtOfferPrice" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="Numbers" TargetControlID="TxtOfferPrice"></asp:FilteredTextBoxExtender>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Level in Amount</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtLevel" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtLevel" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">State</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtState" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtState" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Zonal</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TxtZonal" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtZonal" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">District</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TxtDistrict" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtDistrict" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Taluk</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TxtTaluk" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtTaluk" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Mm Product Selling</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtMmProductSelling" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtMmProductSelling" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">Mm Pin Franchise</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TxtMmPinFranchise" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtMmPinFranchise" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="wcf-set">
                            <div class="wcf-s-lbl">GST Amount</div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtGSTAmount" ValidationGroup="vg" class="ava_s_frm_vld" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TxtGSTAmount" runat="server" CssClass="form-control"></asp:TextBox>
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
                <h4 class="card-title">Own Product Details</h4>
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
                                <asp:TemplateField HeaderText="Category">
                                    <ItemTemplate>
                                        <asp:Label ID="LMarketName" runat="server" Text='<%#Bind("CategoryName") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="SubCategory">
                                    <ItemTemplate>
                                        <asp:Label ID="LName" runat="server" Text='<%#Bind("SubCategoryName") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Product">
                                    <ItemTemplate>
                                        <asp:Label ID="LBdcCode" runat="server" Text='<%#Bind("ProductName") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Mrp">
                                    <ItemTemplate>
                                        <asp:Label ID="LblMobileNumber" runat="server" Text='<%#Eval ("Mrp") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Offer">
                                    <ItemTemplate>
                                        <asp:Label ID="LBdcPassword" runat="server" Text='<%#Bind("OfferPrice") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Levels" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="LPostalCode" runat="server" Text='<%#Bind("Levels") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Level">
                                    <ItemTemplate>
                                        <asp:Label ID="LLevels" runat="server" Text='<%#Bind("Levels") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Bdc">
                                    <ItemTemplate>
                                        <asp:Label ID="Bdc" runat="server" Text='<%#Bind("BdcPer") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Mini Mart">
                                    <ItemTemplate>
                                        Product 
                                        <asp:Label ID="LblProduct" runat="server" Text='<%#Bind("MmProductSelling") %>'></asp:Label>
                                        <br />
                                        Pin                                        
                                        <asp:Label ID="LblPin" runat="server" Text='<%#Bind("MmPinFranchise") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="TimeStamp">
                                    <ItemTemplate>
                                        <asp:Label ID="LTimeStamp" runat="server" Text='<%#Bind("TimeStamp","{0:dd/MM/yyyy}") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Image">
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" Height="80" Width="80" ImageUrl='<%#Bind("ProductImage") %>' runat="server" />
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
