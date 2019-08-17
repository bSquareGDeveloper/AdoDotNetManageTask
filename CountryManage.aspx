<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CountryManage.aspx.cs" Inherits="CorporateTraining.CountryManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">




    <div id="content-wrapper">

        <div class="container-fluid">

            <!-- Breadcrumbs-->
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="#">Country</a>
                </li>
                <li class="breadcrumb-item active">Manage</li>
            </ol>

            <!-- Icon Cards-->
            <div class="row">

                <div class="col-md-8 col-md-offset-2">
                    <table class="table table-bordered">
                        <tr>
                            <td class="font-weight-bolder">Enter Country Name
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtCountryName" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="font-weight-bolder">Enter Country Code
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtCountryCode" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Is Enabled?
                                <asp:CheckBox ID="isEnabled" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btnSave" runat="server" Text="Save Details!" OnClick="btnSave_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div id="lblMessage" runat="server" class="alert alert-dark"></div>

                            </td>
                        </tr>
                    </table>
                </div>
                <div class="col-md-12">
                    <asp:GridView ID="gridCountry" CssClass="table table-bordered" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="ukCountryCode" HeaderText="Country Code">
                            <ControlStyle CssClass="form-control" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ukCountryName" HeaderText="Country Name">
                            <ControlStyle CssClass="form-control" />
                            </asp:BoundField>
                            <asp:CheckBoxField DataField="IsCountryEnabled" HeaderText="Is Enabled?" />
                            <asp:CommandField ShowEditButton="True">
                            <ControlStyle CssClass="btn btn-primary" />
                            </asp:CommandField>
                            <asp:CommandField ShowDeleteButton="True">
                            <ControlStyle CssClass="btn btn-danger" />
                            </asp:CommandField>
                            <asp:CommandField ShowSelectButton="True">
                            <ControlStyle CssClass="btn btn-default" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                </div>

            </div>
        </div>
    </div>


</asp:Content>
