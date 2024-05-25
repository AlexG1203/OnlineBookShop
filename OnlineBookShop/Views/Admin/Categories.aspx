<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="OnlineBookShop.Views.Admin.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
     <div class="container-fluid">
         <div class="row">
             <div class="col">
                 <h2 class="text-center">Manage Categories</h2>
             </div>
         </div>
         <div class="row">
             <div class="col-md-4">
                 <div class="mb-4">
                      <label for="" class="form-label text-primary">Category Name</label>
                      <input type="text" placeholder="Title" autocomplete="off" class="form-control" runat="server" id="CatNameTb"/>
                 </div>

                 <div class="mb-4">
                      <label for="" class="form-label text-primary">Category Description</label>
                     <input type="text" placeholder="Description" autocomplete="off" class="form-control" runat="server" id="DescriptionTb"/>
                 </div>

                 <div class="row">
                     <asp:Label runat="server" ID="ErrMsg" class="text-danger text-center"></asp:Label>
                     <div class="col d-grid"><asp:Button Text="Update" runat="server" ID="EditBtn" class="btn-warning btn-block btn" OnClick="EditBtn_Click"/></div>
                     <div class="col d-grid"><asp:Button Text="Save" runat="server" ID="savebtn" class="btn-primary btn-block btn" OnClick="savebtn_Click"/></div>
                     <div class="col d-grid"><asp:Button Text="Delete" runat="server" ID="deleteBtn" class="btn-danger btn-block btn" OnClick="deleteBtn_Click"/></div>
                 </div>

             </div>
             <div class="col-md-8">
                 <asp:GridView ID="CategoriesList" runat="server" class="table table-bordered" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="AuthorsList_SelectedIndexChanged">
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
