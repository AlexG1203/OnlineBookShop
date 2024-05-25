<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Seller/SellerMaster.Master" AutoEventWireup="true" CodeBehind="Selling.aspx.cs" Inherits="OnlineBookShop.Views.Seller.Selling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function PrintBill() {
            var PGrid = document.getElementById('<%=BillList.ClientID%>');
            PGrid.bordr = 0;
            var PWin = window.open('', 'PrintGrid', 'left=100,top=100,width=1024,heigh=768,toolbar = 0,scrollbars=1,status=0,resizable=1');
            PWin.document.write(PGrid.outerHTML);
            PWin.document.close();
            PWin.focus();
            PWin.print();
            PWin.close();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fluid">
        <div class="row">

        </div>

        <div class="row">
            <div class="col-md-5">
                <h3 class="text-center">Book Details</h3>

                <div class="row">
                    <div class="col">
                         <div class="mt-3">
                             <label for="" class="form-label text-primary">Book Name</label>
                             <input type="text" placeholder="Book's Name" autocomplete="off" runat="server" class="form-control" id="BNameTb"/>
                         </div>
                    </div>
                    <div class="col">
                         <div class="mt-3">
                             <label for="" class="form-label text-primary">Book Price</label>
                             <input type="text" placeholder="Price" autocomplete="off" runat="server" class="form-control" id="BPriceTb"/>
                         </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                         <div class="mt-3">
                             <label for="" class="form-label text-primary">Quantity</label>
                             <input type="text" placeholder="Quantity" autocomplete="off" runat="server" class="form-control" id="BQtyTb"/>
                         </div>
                    </div>
                    <div class="col">
                         <div class="mt-3">
                             <label for="" class="form-label text-primary">Billing Date</label>
                             <input type="datetime" runat="server" class="form-control" id="DateTb"/>
                         </div>
                    </div>
                    <div class="row mt-3 mb-3">
                        <div class="col d-grid">
                            <asp:Button Text="Add To Bill" runat="server" ID="AddToBillBtn" class="btn-warning btn-block btn" OnClick="AddToBillBtn_Click"/>
                        </div>
                    </div>
                </div>
                <div class="row mt-5">
                    <h3 class="text-center">Book List</h3>
                    <div class="col">
                         <asp:GridView ID="BooksList" runat="server" class="table table-bordered" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="AuthorsList_SelectedIndexChanged">
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
            <div class="col-md-7">
                <h3 class="text-center">Client's List</h3>
                <div class="col">
                     <asp:GridView ID="BillList" runat="server" class="table table-bordered" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="AuthorsList_SelectedIndexChanged">
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

                    <div class="d-grid">
                        <asp:Label runat="server" ID="GrdTotalTb" class="text-danger text-center"></asp:Label><br />
                        <asp:Button Text="Print" runat="server" ID="PrintBtn" OnClientClick="PrintBill()" class="btn-warning btn-block btn" OnClick="PrintBtn_Click"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
