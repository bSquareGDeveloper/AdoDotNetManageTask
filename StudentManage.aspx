<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="StudentManage.aspx.cs" Inherits="CorporateTraining.StudentManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div id="content-wrapper">

        <div class="container-fluid">

            <!-- Breadcrumbs-->
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="#">Student</a>
                </li>
                <li class="breadcrumb-item active">Add New</li>
            </ol>

            <!-- Icon Cards-->
            <div class="row">

                <div class="col-md-10">
                    <fieldset>
                        <legend>Personal Details
                        </legend>
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <asp:Image ID="imgStudent" runat="server" ImageUrl="~/Content/images/default-2.jpg" Width="200px" Height="220px" CssClass="img-thumbnail" />
                            </div>
                            <div class="col-md-12">

                                <asp:FileUpload ID="fileUpload" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">

                                <div class="form-group">
                                    <label class="custom-control-label">
                                        Enter First Name
                                    </label>
                                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">

                                <div class="form-group">
                                    <label class="custom-control-label">
                                        Enter Middle Name
                                    </label>
                                    <asp:TextBox ID="txtMiddleName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">

                                <div class="form-group">
                                    <label class="custom-control-label">
                                        Enter Last Name
                                    </label>
                                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-8">

                                <div class="form-group">
                                    <label class="custom-control-label">
                                        Enter Email Id
                                    </label>
                                    <asp:TextBox ID="txtEmailId" TextMode="Email" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="custom-control-label">
                                        Enter Mobile Number
                                    </label>
                                    <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="custom-control-label">Select Country</label>
                                    <asp:DropDownList ID="ddlCountry" CssClass="form-control" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="custom-control-label">Select State</label>
                                    <asp:DropDownList ID="ddlState" CssClass="form-control" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="custom-control-label">Select City</label>
                                    <asp:DropDownList ID="ddlCity" CssClass="form-control" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="custom-control-label">
                                        Address
                                    </label>
                                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4 col-md-auto">
                                <div class="form-group">
                                    <label class="custom-control-label">
                                        Zipcode
                                    </label>
                                    <asp:TextBox ID="txtZip" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label class="custom-control-label">
                                    Select Gender
                                </label>
                                <asp:RadioButtonList ID="rdGender" CssClass="custom-radio" RepeatColumns="3" runat="server">
                                    <asp:ListItem Text="Male" Value="Male">Male</asp:ListItem>
                                    <asp:ListItem Text="Female" Value="Female">Female</asp:ListItem>
                                    <asp:ListItem Text="Other" Value="Other">Other</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group">
                                    <label class="custom-control-label">
                                        Select Hobbies
                                    </label>
                                    <asp:CheckBoxList ID="chkHobbies" runat="server" RepeatColumns="4" CssClass="custom-checkbox">
                                        <asp:ListItem>Movies</asp:ListItem>
                                        <asp:ListItem>Reading</asp:ListItem>
                                        <asp:ListItem>Learning</asp:ListItem>
                                        <asp:ListItem>Other</asp:ListItem>

                                    </asp:CheckBoxList>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="custom-control-label">
                                        Enter Password
                                    </label>
                                    <asp:TextBox ID="txtPassword" ClientIDMode="Static" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>

                                    <label id="lbl"></label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="col-md-10">
                                        <div class="form-group">
                                            <label class="custom-control-label">
                                                Confirm Password
                                            </label>
                                            <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <br />
                                        <asp:Button ID="btnShowPassword" runat="server" Text="" CssClass="btn btn-primary" OnClick="btnShowPassword_Click" />

                                    </div>
                                </div>
                            </div>
                        </div>

                    </fieldset>
                    <div class="row">
                        <div class="col-md-6 text-right">
                            <asp:Button ID="btnRegister" CssClass="btn btn-outline-primary" runat="server" Text="Save Details!" />
                        </div>
                        <div class="col-md-6 text-right">
                            <asp:Button ID="btnClear" CssClass="btn btn-danger" runat="server" Text="Clear Details!" />
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>
    <script src="Content/vendor/jquery/jquery.min.js"></script>
    <input type="hidden" id="password" runat="server" />
    <script>
        var data = "";
        var sec = "";
        $("#txtPassword").prop("type", "text");
        $("#txtPassword").click(function () {
            data = "";
            sec = "";
            $("#password").text("");
            $(this).text("");
        });
        $("#txtPassword").keyup(function (v) {
            //alert(v.keyCode);
            var k = v.keyCode;
            if ((k >= 48 && k <= 57) || (k >= 65 && k <= 90) || (k >= 97 && k <= 122) || (k == 36) || (k == 64) || (k == 8)) {
                if (v.keyCode == 8) {
                    data = data.substring(0, data.length - 1);
                    sec = sec.substring(0, sec.length - 1);
                    //alert(data);
                    $("#lbl").text(data);

                    $(this).val(sec);
                    return 0;
                }
                data += v.key;
                sec += "*";

                // 
                $("#lbl").text(data);

                $(this).val(sec);
            }
            else {
                //alert("Not Allowed!");
            }
        });

    </script>


</asp:Content>
