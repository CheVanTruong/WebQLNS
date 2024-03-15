<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="qlPhongBan.aspx.cs" Inherits="WebQLNS.qlPhongBan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row w-50 m-auto">
        <div class="col-md-12 form-inline mt-3 mb-3 text-center">
            Chọn phòng ban: <asp:DropDownList ID="ddlPhong" runat="server" CssClass="form-control" DataSourceID="dsPhong"
              DataTextField="TenPhong" DataValueField="MaPhong"  ></asp:DropDownList>
        </div>
    </div>

    <asp:GridView ID="gvNhanVien" runat="server" 
        AutoGenerateColumns="False" CssClass="table table-bordered table-hover"
        DataKeyNames="MaNV" 
        DataSourceID="dsNhanVienTheoPhong">
        <Columns>
            <asp:BoundField DataField="MaNV" HeaderText="MaNV" ReadOnly="True" InsertVisible="False" SortExpression="MaNV" />
            <asp:BoundField DataField="HoNV" HeaderText="HoNV" SortExpression="HoNV"  />
            <asp:BoundField DataField="TenNV" HeaderText="TenNV" SortExpression="TenNV"  />
            <asp:CheckBoxField DataField="Phai" HeaderText="Phai" SortExpression="Phai"  />
            <asp:BoundField DataField="NgaySinh" HeaderText="NgaySinh" DataFormatString="{0:dd/MM/yyyy}" />
            <asp:BoundField DataField="NoiSinh" HeaderText="NoiSinh" SortExpression="NoiSinh"  />
            <asp:BoundField DataField="MaPhong" HeaderText="MaPhong" SortExpression="MaPhong" />
        </Columns>
        <HeaderStyle CssClass="bg-secondary text-light" />
        <EmptyDataTemplate>
            <div class="alert alert-warning">
                Không có nhân viên nào thuộc phòng ban này
            </div>
        </EmptyDataTemplate>
    </asp:GridView>

    <asp:SqlDataSource ID="dsPhong" runat="server"
        ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>"
        SelectCommand="SELECT * FROM [PhongBan]">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="dsNhanVienTheoPhong" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" 
        DeleteCommand="DELETE FROM [NhanVien] WHERE [MaNV] = @MaNV" 
        SelectCommand="SELECT * FROM [NhanVien] " 
        >


        <DeleteParameters>
            <asp:Parameter Name="MaNV" Type="Int32" />
        </DeleteParameters>

        <UpdateParameters>
            <asp:ControlParameter ControlID="ddlPhong" Name="MaPhong" PropertyName="SelectedValue" Type="Int32" />
        </UpdateParameters>

    </asp:SqlDataSource>
</asp:content>
