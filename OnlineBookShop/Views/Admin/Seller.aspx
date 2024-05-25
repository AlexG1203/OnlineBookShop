<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Seller.aspx.cs" Inherits="OnlineBookShop.Views.Admin.Seller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <h2 class="text-center">Manage Sellers</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="mb-4">
                     <label for="" class="form-label text-primary">Seller Name</label>
                     <input type="text" placeholder="Name" autocomplete="off" runat="server" id="SNameTb" class="form-control"/>
                </div>

                <div class="mb-4">
                     <label for="" class="form-label text-primary">Seller Email</label>
                     <input type="email" placeholder="Email" autocomplete="off" runat="server" id="EmailTb" class="form-control"/>
                </div>

                <div class="mb-4">
                     <label for="" class="form-label text-primary">Seller Phone</label>
                     <input type="text" placeholder="Phone Number" autocomplete="off" runat="server" id="PhoneTb" class="form-control"/>
                </div>

                <div class="mb-4">
                     <label for="" class="form-label text-primary">Seller Password</label>
                     <input type="text" placeholder="Password" autocomplete="off" runat="server" id="AddressTb" class="form-control"/>
                </div>

                <div class="row">
                    <asp:Label runat="server" ID="ErrMsg" class="text-danger text-center"></asp:Label>
                    <div class="col d-grid"><asp:Button Text="Update" runat="server" ID="EditBtn" class="btn-warning btn-block btn" OnClick="EditBtn_Click"/></div>
                    <div class="col d-grid"><asp:Button Text="Save" runat="server" ID="SaveBtn" class="btn-primary btn-block btn" OnClick="SaveBtn_Click1"/></div>
                    <div class="col d-grid"><asp:Button Text="Delete" runat="server" ID="DeleteBtn" class="btn-danger btn-block btn" OnClick="DeleteBtn_Click"/></div>
                </div>

            </div>
            <div class="col-md-8">
                 <asp:GridView ID="SellerList" runat="server" class="table table-bordered" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="AuthorsList_SelectedIndexChanged">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="cornflowerblue" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
