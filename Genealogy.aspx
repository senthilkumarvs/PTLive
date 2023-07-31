<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="Genealogy.aspx.cs" Inherits="ProfitTrader.Admin.Genealogy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .tooltipnew {
            position: relative;
            display: inline-block;
        }

        .tables {
            border-collapse: collapse;
            width: 400px;
        }


            .tables tr td {
                border: 1px solid #fff;
                text-align: center;
                padding: 8px !important;
                vertical-align: top;
                padding: 5px;
                background-color: darkblue;
                color: white;
            }

        span.tooltiptext, span.tooltiptext1 {
            /*border: 2px solid #fff;*/
        }

        .tooltipnew .tooltiptext {
            visibility: hidden;
            -moz-box-shadow: 0 10px 6px -6px #777;
            box-shadow: 0 10px 6px -6px #777;
            color: #ffff;
            text-align: center;
            /*border-radius: 6px;*/
            position: absolute;
            z-index: 1;
            bottom: 100%;
            left: 100%;
            bottom: -0%;
            width: 400px;
        }

            .tooltipnew .tooltiptext::after {
                content: "";
                position: absolute;
                border-width: 5px;
                border-style: solid #bad5f8;
                border-color: #bad5f8;
            }

        .tooltipnew:hover .tooltiptext {
            visibility: visible;
        }



        .tooltip1 {
            position: relative;
            display: inline-block;
        }

            .tooltip1 .tooltiptext1 {
                visibility: hidden;
                -moz-box-shadow: 0 10px 6px -6px #777;
                box-shadow: 0 10px 6px -6px #777;
                color: #fff;
                text-align: center;
                border-radius: 6px;
                position: absolute;
                z-index: 1;
                bottom: 100%;
                right: 100%;
                bottom: -0%;
                width: 300px;
            }

                .tooltip1 .tooltiptext1::after {
                    content: "";
                    position: absolute;
                    border-width: 5px;
                    border-style: solid #bad5f8;
                    border-color: #bad5f8;
                }

            .tooltip1:hover .tooltiptext1 {
                visibility: visible;
            }

        .style2 {
            font-size: 12px;
            font-family: Verdana, Arial;
        }

        .style10 {
            font-size: 12px;
            font-family: Verdana, Arial;
        }


        .codetxtg {
            font-size: 14px;
            color: red;
            font-weight: bold;
            padding: 5px;
            text-decoration: none;
        }

        .codetxtb {
            font-size: 14px;
            color: #1f1f1f;
            font-weight: bold;
            padding: 5px;
            text-decoration: none;
        }

        .addtxt {
            font-size: 14px;
            color: #2767c4;
            font-weight: bold;
            text-decoration: none;
        }

        .emptxt {
            font-size: 14px;
            color: red;
            font-weight: bold;
            text-decoration: none;
        }
    </style>
    <div class="row">
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Genealogy </div>
                <div class="ava_s_card_body">



                    <div class="row">

                        <div class="col-md-10">
                            <div class="row">

                                <div class="col-md-5  col-6">
                                    <div class="ava_s_card_serch_bx">
                                        <div class="ava_s_card_serch_bx_txt">User Code</div>
                                        <asp:TextBox ID="txtusercode" runat="server" AutoPostBack="true" class="ava_s_card_serch_txt_bx " OnTextChanged="txtusercode_TextChanged"></asp:TextBox>




                                    </div>
                                </div>

                                <div class="col-md-5  col-6">
                                    <div class="ava_s_card_serch_bx">
                                        <div class="ava_s_card_serch_bx_txt">User Name</div>

                                        <asp:TextBox ID="txtname" runat="server" ReadOnly="true" class="ava_s_card_serch_txt_bx "></asp:TextBox>

                                    </div>

                                </div>




                                <div class="col-md-2 col-7 mbl_mr_auto">
                                    <asp:Button ID="ImgView" runat="server" Text="View" OnClick="ImgView_Click" class="btn btn-primary" />

                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="ava_s_card">
                <div class="ava_s_card_head">Genealogy </div>
                <div class="ava_s_card_body">
                    <div class="table-responsive">
                        <table class="table  table-hover table-responsive-lg ava_mrgn_btm_0 ava_s_tb_td">

                            <tbody>
                                <tr>
                                    <td colspan="8" align="center">
                                        <div class="tooltipnew">
                                            <br />
                                            <br />
                                            <br />
                                            <asp:Image ID="ImageTop" ImageUrl="../img/empty.png" runat="server" Width="75" Height="75" />

                                            <table class="tables tooltiptext" runat="server" id="tab1">
                                                <tbody>

                                                    <tr>

                                                        <td><span class="style10">Name</span></td>
                                                        <td colspan="3"><span class="style2">
                                                            <asp:Label ID="LblName" runat="server" Text=""></asp:Label></span></td>
                                                    </tr>
                                                    <tr>
                                                        <td><span class="style10">Date of Joining</span></td>
                                                        <td colspan="3"><span class="style2">
                                                            <asp:Label ID="LblDoj" runat="server" Text=""></asp:Label></span></td>
                                                    </tr>
                                                    <tr>
                                                        <td><span class="style10">Package Price</span></td>
                                                        <td colspan="3"><span class="style2">
                                                            <asp:Label ID="LblPrice" runat="server" Text=""></asp:Label></span></td>
                                                    </tr>
                                                    <tr>
                                                        <td><span class="style10">Left </span></td>
                                                        <td><span class="style2">
                                                            <asp:Label ID="LblBvL1" runat="server" Text=""></asp:Label></span></td>
                                                        <td><span class="style10">Right</span></td>
                                                        <td><span class="style2">
                                                            <asp:Label ID="LblBvR1" runat="server" Text=""></asp:Label></span></td>
                                                    </tr>

                                                </tbody>
                                            </table>

                                            <br>
                                            <a href="#" class="emptxt">
                                                <asp:LinkButton ID="LblCode" runat="server" Text=""></asp:LinkButton></a>
                                        </div>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="8" align="center">
                                        <img src="../img/tree.png" width="300" height="50"></td>
                                </tr>
                                <tr>
                                    <td colspan="4" align="center">
                                        <div class="tooltipnew">
                                            <asp:Image ID="ImageL1" ImageUrl="../img/empty.png" runat="server" Width="75" Height="75" />
                                            <span class="tooltiptext">
                                                <table class="tables">
                                                    <tbody>
                                                        <tr>
                                                            <td><span class="style10">Name</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblNameL1" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Date of Joining</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblDojL1" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Package Price</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="Lblprice2" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Left </span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvLL2" runat="server" Text=""></asp:Label></span></td>
                                                            <td><span class="style10">Right</span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvLR2" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </span>
                                            <br>

                                            <asp:LinkButton ID="LblCodeL1" OnClick="LblCodeL1_Click" class="emptxt" runat="server" Text="Empty"></asp:LinkButton>
                                        </div>
                                        <br>
                                    </td>
                                    <td colspan="4" align="center">
                                        <div class="tooltip1">
                                            <asp:Image ID="ImageR1" ImageUrl="../img/empty.png" runat="server" Width="75" Height="75" />

                                            <span class="tooltiptext1">
                                                <table class="tables">
                                                    <tbody>
                                                        <tr>
                                                            <td><span class="style10">Name</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblNameR1" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Date of Joining</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblDojR1" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Package Price</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="lblprice3" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Left </span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvRL1" runat="server" Text=""></asp:Label></span></td>
                                                            <td><span class="style10">Right</span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvRR1" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </span>
                                            <br>

                                            <asp:LinkButton ID="LblCodeR1" OnClick="LblCodeR1_Click" runat="server" class="emptxt" Text="Empty"></asp:LinkButton>
                                            <br>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4" align="center">
                                        <img src="../img/tree.png" width="200" height="50"></td>
                                    <td colspan="4" align="center">
                                        <img src="../img/tree.png" width="200" height="50"></td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <div class="tooltipnew">
                                            <asp:Image ID="ImageL2" ImageUrl="../img/empty.png" runat="server" Width="75" Height="75" />
                                            <span class="tooltiptext">
                                                <table class="tables">
                                                    <tbody>
                                                        <tr>
                                                            <td><span class="style10">Name</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblNameL2" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Date of Joining</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblDojL2" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Package Price</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="lblprice4" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Left </span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvLL3" runat="server" Text=""></asp:Label></span></td>
                                                            <td><span class="style10">Right</span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvLR3" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </span>
                                            <br />



                                            <asp:LinkButton ID="LblCodeL2" OnClick="LblCodeL2_Click" runat="server" class="emptxt" Text="Empty"></asp:LinkButton><br>
                                        </div>
                                    </td>
                                    <td colspan="2" align="center">
                                        <div align="center" class="tooltipnew">

                                            <asp:Image ID="ImageL3" ImageUrl="../img/empty.png" runat="server" Width="75" Height="75" />
                                            <span class="tooltiptext">
                                                <table class="tables">
                                                    <tbody>
                                                        <tr>
                                                            <td><span class="style10">Name</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblNameL3" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Date of Joining</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblDojL3" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Package Price</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="lblprice5" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Left </span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvLL4" runat="server" Text=""></asp:Label></span></td>
                                                            <td><span class="style10">Right</span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvLR4" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </span>
                                        </div>
                                        <div align="center">
                                            <span class="style1">
                                                <asp:LinkButton ID="LblCodeL3" OnClick="LblCodeL3_Click" runat="server" class="emptxt" Text="Empty"></asp:LinkButton>
                                            </span>
                                        </div>
                                    </td>
                                    <td colspan="2" align="center">
                                        <div class="tooltip1" align="center">
                                            <asp:Image ID="ImageR2" runat="server" Width="75" Height="75" />
                                            <span class="tooltiptext1">
                                                <table class="tables">
                                                    <tbody>
                                                        <tr>
                                                            <td><span class="style10">Name</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblNameR2" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Date of Joining</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblDojR2" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Package Price</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="lblprice6" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Left </span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvRL3" runat="server" Text=""></asp:Label></span></td>
                                                            <td><span class="style10">Right</span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvRR3" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </span>
                                        </div>
                                        <div align="center">
                                            <span class="style1">
                                                <asp:LinkButton ID="LblCodeR2" OnClick="LblCodeR2_Click" runat="server" class="emptxt" Text="Empty"></asp:LinkButton><br>
                                            </span>
                                        </div>
                                    </td>
                                    <td colspan="2" align="center">
                                        <div class="tooltip1">
                                            <asp:Image ID="ImageR3" ImageUrl="../img/empty.png" runat="server" Width="75" Height="75" />

                                            <span class="tooltiptext1">
                                                <table class="tables">
                                                    <tbody>
                                                        <tr>
                                                            <td><span class="style10">Name</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblNameR3" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Date of Joining</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblDojR3" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Package Price</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="lblprice7" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Left </span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvRL4" runat="server" Text=""></asp:Label></span></td>
                                                            <td><span class="style10">Right</span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvRR4" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </span>
                                        </div>
                                        <div align="center">
                                            <span class="style1">
                                                <asp:LinkButton ID="LblCodeR3" OnClick="LblCodeR3_Click" runat="server" class="emptxt" Text="Empty"></asp:LinkButton><br>
                                            </span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <img src="../img/tree.png" width="150" height="30"></td>
                                    <td colspan="2" align="center">
                                        <img src="../img/tree.png" width="150" height="30"></td>
                                    <td colspan="2" align="center">
                                        <img src="../img/tree.png" width="150" height="30"></td>
                                    <td colspan="2" align="center">
                                        <img src="../img/tree.png" width="150" height="30"></td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <div class="tooltipnew">

                                            <asp:Image ID="ImageL4" ImageUrl="../img/empty.png" runat="server" Width="75" Height="75" />
                                            <span class="tooltiptext">
                                                <table class="tables">
                                                    <tbody>
                                                        <tr>
                                                            <td><span class="style10">Name</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblNameL4" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Date of Joining</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblDojL4" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Package Price</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="lblprice8" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Left </span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvLL5" runat="server" Text=""></asp:Label></span></td>
                                                            <td><span class="style10">Right </span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvLR5" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </span>
                                        </div>
                                        <div align="center">
                                            <span class="style1">
                                                <asp:LinkButton ID="LblCodeL4" OnClick="LblCodeL4_Click" runat="server" class="emptxt" Text="Empty"></asp:LinkButton><br>
                                            </span>
                                        </div>
                                    </td>
                                    <td align="center">
                                        <div align="center" class="tooltipnew">
                                            <asp:Image ID="ImageL5" ImageUrl="../img/empty.png" runat="server" Width="75" Height="75" />
                                            <span class="tooltiptext">
                                                <table class="tables">
                                                    <tbody>
                                                        <tr>
                                                            <td><span class="style10">Name</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblNameL5" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Date of Joining</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblDojL5" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Package Price</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="lblprice9" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Left  </span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvLL6" runat="server" Text=""></asp:Label></span></td>
                                                            <td><span class="style10">Right </span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvLR6" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </span>
                                        </div>
                                        <div align="center">
                                            <span class="style1">
                                                <asp:LinkButton ID="LblCodeL5" OnClick="LblCodeL5_Click" runat="server" class="emptxt" Text="Empty"></asp:LinkButton></span>
                                        </div>
                                    </td>
                                    <td align="center">
                                        <div align="center" class="tooltipnew">
                                            <asp:Image ID="ImageL6" ImageUrl="../img/empty.png" runat="server" Width="75" Height="75" />

                                            <span class="tooltiptext">
                                                <table class="tables">
                                                    <tbody>
                                                        <tr>
                                                            <td><span class="style10">Name</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblNameL6" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Date of Joining</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblDojL6" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Package Price</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="lblprice10" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Left  </span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvLL7" runat="server" Text=""></asp:Label></span></td>
                                                            <td><span class="style10">Right </span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvLR7" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </span>
                                        </div>
                                        <div align="center">
                                            <span class="emptxt">
                                                <asp:LinkButton ID="LblCodeL6" OnClick="LblCodeL6_Click" runat="server" class="emptxt" Text="Empty"></asp:LinkButton></span>
                                        </div>
                                    </td>
                                    <td align="center">
                                        <div align="center" class="tooltipnew">
                                            <asp:Image ID="ImageL7" ImageUrl="../img/empty.png" runat="server" Width="75" Height="75" /><br />
                                            <span class="tooltiptext">
                                                <table class="tables">
                                                    <tbody>
                                                        <tr>
                                                            <td><span class="style10">Name</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblNameL7" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Date of Joining</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblDojL7" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Package Price</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="lblprice11" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Left </span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvLL8" runat="server" Text=""></asp:Label></span></td>
                                                            <td><span class="style10">Right</span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvLR8" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </span>
                                        </div>
                                        <div align="center">
                                            <span class="emptxt">
                                                <asp:LinkButton ID="LblCodeL7" OnClick="LblCodeL7_Click" runat="server" class="emptxt" Text="Empty"></asp:LinkButton></span><br>
                                        </div>
                                    </td>
                                    <td align="center">
                                        <div align="center" class="tooltip1">
                                            <asp:Image ID="ImageR4" runat="server" Width="75" Height="75" />
                                            <span class="tooltiptext1">
                                                <table class="tables">
                                                    <tbody>
                                                        <tr>
                                                            <td><span class="style10">Name</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblNameR4" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Date of Joining</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblDojR4" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Package Price</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="lblprice12" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Left </span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvRL5" runat="server" Text=""></asp:Label></span></td>
                                                            <td><span class="style10">Right </span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvRR5" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </span>
                                        </div>
                                        <div align="center">
                                            <span class="style1">
                                                <asp:LinkButton ID="LblCodeR4" OnClick="LblCodeR4_Click" runat="server" class="emptxt" Text="Empty"></asp:LinkButton></span>
                                        </div>
                                    </td>
                                    <td align="center">
                                        <div align="center" class="tooltip1">
                                            <asp:Image ID="ImageR5" Width="75" Height="75" runat="server" />
                                            <span class="tooltiptext1">
                                                <table class="tables">
                                                    <tbody>
                                                        <tr>
                                                            <td><span class="style10">Name</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblNameR5" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Date of Joining</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblDojR5" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Package Price</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="lblprice13" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Left  </span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvRL6" runat="server" Text=""></asp:Label></span></td>
                                                            <td><span class="style10">Right </span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvRR6" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </span>
                                        </div>
                                        <div align="center">
                                            <span class="style1">
                                                <asp:LinkButton ID="LblCodeR5" OnClick="LblCodeR5_Click" runat="server" class="emptxt" Text="Empty"></asp:LinkButton></span>
                                        </div>
                                    </td>
                                    <td align="center">
                                        <div align="center" class="tooltip1">
                                            <asp:Image ID="ImageR6" runat="server" Width="75" Height="75" />
                                            <span class="tooltiptext1">
                                                <table class="tables">
                                                    <tbody>
                                                        <tr>
                                                            <td><span class="style10">Name</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblNameR6" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Date of Joining</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblDojR6" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Package Price</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="lblprice14" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Left  </span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvRL7" runat="server" Text=""></asp:Label></span></td>
                                                            <td><span class="style10">Right </span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvRR7" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </span>

                                        </div>
                                        <div align="center">
                                            <span class="style1">
                                                <asp:LinkButton ID="LblCodeR6" OnClick="LblCodeR6_Click" runat="server" class="emptxt" Text="Empty"></asp:LinkButton></span>
                                        </div>
                                    </td>
                                    <td align="center">
                                        <div class="tooltip1">
                                            <asp:Image ID="ImageR7" runat="server" Width="75" Height="75" />
                                            <span class="tooltiptext1">
                                                <table class="tables">
                                                    <tbody>
                                                        <tr>
                                                            <td><span class="style10">Name</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblNameR7" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Date of Joining</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="LblDojR7" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Package Price</span></td>
                                                            <td colspan="3"><span class="style2">
                                                                <asp:Label ID="lblprice15" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td><span class="style10">Left  </span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvRL8" runat="server" Text=""></asp:Label></span></td>
                                                            <td><span class="style10">Right </span></td>
                                                            <td><span class="style2">
                                                                <asp:Label ID="LblBvRR8" runat="server" Text=""></asp:Label></span></td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </span>
                                        </div>
                                        <div align="center">
                                            <span class="style1">
                                                <asp:LinkButton ID="LblCodeR7" OnClick="LblCodeR7_Click" runat="server" class="emptxt" Text="Empty"></asp:LinkButton><br>
                                            </span>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
