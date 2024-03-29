﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ThemNhanVien.aspx.cs" Inherits="WebQLNS.ThemNhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row mt-3 mb-2">
        <div class="col-md-2">Họ Nhân Viên</div>
        <div class="col-md-10">
            <asp:TextBox ID="txtHo" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="row mt-3 mb-2">
        <div class="col-md-2">Tên Nhân Viên</div>
        <div class="col-md-10">
            <asp:TextBox ID="txtTen" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2">Giới Tính</div>
        <div class="col-md-10">
            <asp:RadioButton ID="rdNam" runat="server" Checked="true" Text="Nam" GroupName="GT" />
            <asp:RadioButton ID="rdNu" runat="server" Text="Nữ" GroupName="GT" />
        </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2">Ngày Sinh</div>
        <div class="col-md-10">
            <asp:TextBox ID="txtNgaySinh" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
        </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2">Nơi Sinh</div>
        <div class="col-md-10">
            <asp:TextBox ID="txtNoiSinh" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
</div>
    <div class="row mb-2">
        <div class="col-md-2">Phòng</div>
        <div class="col-md-10">
            <asp:DropDownList ID="ddlPhong" runat="server" CssClass="form-control"
               DataSourceID="dsPhong" DataTextField="TenPhong" DataValueField="MaPhong" ></asp:DropDownList>
        </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2"></div>
        <div class="col-md-10">
            <asp:Button ID="btSave" runat="server" Text="Lưu" CssClass="btn btn-primary" OnClick="btSave_Click" />
            <asp:Label ID="lbThongBao" runat="server" Text="" ForeColor="#cc3300"></asp:Label>
        </div>
    </div>


    <asp:SqlDataSource ID="dsPhong" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>"   
        SelectCommand="SELECT * FROM [PhongBan]" >
</asp:SqlDataSource>

</asp:Content>
