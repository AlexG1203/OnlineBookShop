<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Author.aspx.cs" Inherits="OnlineBookShop.Views.Admin.Author" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
     <div class="container-fluid">
         <div class="row">
             <div class="col">
                 <h2 class="text-center">Manage Authors</h2>
             </div>
         </div>
         <div class="row">
             <div class="col-md-4">
                 <div class="mb-4">
                      <label for="" class="form-label text-primary">Author Name</label>
                      <input type="text" placeholder="Name" autocomplete="off" class="form-control" runat="server" id="ANameTb"/>
                 </div>

                 <div class="mb-4">
                      <label for="" class="form-label text-primary">Author Gender</label>
                      <asp:DropDownList runat="server" class="form-control" id="GenCb">
                          <asp:ListItem>Male</asp:ListItem>
                          <asp:ListItem>Female</asp:ListItem>
                      </asp:DropDownList>
                 </div>

                 <div class="mb-4">
                      <label for="" class="form-label text-primary">Country</label>
                     <asp:DropDownList ID="CountryCb" runat="server" class="form-control">
                         <asp:ListItem>USA</asp:ListItem>
                         <asp:ListItem>India</asp:ListItem>
                         <asp:ListItem>France</asp:ListItem>
                         <asp:ListItem>UK</asp:ListItem>
                         <asp:ListItem>Spain</asp:ListItem>
                         <asp:ListItem>Other</asp:ListItem>
                     </asp:DropDownList>
                 </div>

                 <div class="row">
                     <asp:Label runat="server" ID="ErrMsg" class="text-danger text-center"></asp:Label>
                     <div class="col d-grid"><asp:Button Text="Update" runat="server" id="EditBtn" class="btn-warning btn-block btn" OnClick="EditBtn_Click"/></div>
                     <div class="col d-grid"><asp:Button Text="Save" runat="server" id="SaveBtn" class="btn-primary btn-block btn" OnClick="SaveBtn_Click"/></div>
                     <div class="col d-grid"><asp:Button Text="Delete" runat="server" id="DeleteBtn" class="btn-danger btn-block btn" OnClick="DeleteBtn_Click"/></div>
                 </div>

             </div>
             <div class="col-md-8">
                 <asp:GridView ID="AuthorsList" runat="server" class="table table-bordered" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="AuthorsList_SelectedIndexChanged">
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
