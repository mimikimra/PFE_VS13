﻿<%@ Page Title="Nouvelle Commande" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Injection_Sponsoring_FE._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h4><%: Title %>.</h4>

    <div class="row">
        <div class="col-md-6">
            <section>
                <div class="form-horizontal">

                    <div class="form-group">
                        <label class="col-md-4 control-label">ID Commande</label>
                        <div class="col-md-4">
                            <input class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label">Description</label>
                        <div class="col-md-6">
                            <textarea class="form-control" rows="3"></textarea>
                        </div>
                    </div>

                </div>
            </section>
        </div>



        <div class="col-md-6">
            <section>
                <div class="form-horizontal">
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Dated" CssClass="col-md-2 control-label">Date début</asp:Label>
                        <div class="col-md-6">
                            <asp:TextBox runat="server" ID="Dated" CssClass="form-control" TextMode="Date" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Dated"
                                CssClass="text-danger" ErrorMessage="The date field is required." />
                            <asp:CompareValidator runat="server"
                                ID="CompareValidator1"
                                ControlToValidate="Dated"
                                CssClass="text-danger"
                                ErrorMessage="The date must be on or after current date"
                                Operator="GreaterThanEqual"
                                Type="Date"></asp:CompareValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Datef" CssClass="col-md-2 control-label">Date fin</asp:Label>
                        <div class="col-md-6">
                            <asp:TextBox runat="server" ID="Datef" CssClass="form-control" TextMode="Date" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Datef"
                                CssClass="text-danger" ErrorMessage="The date field is required." />
                            <asp:CompareValidator runat="server"
                                ID="CompareValidator2"
                                ControlToCompare="DateD"
                                ControlToValidate="Datef"
                                CssClass="text-danger"
                                ErrorMessage="The expiry date must be on or after start date"
                                Operator="GreaterThanEqual"
                                Type="Date"></asp:CompareValidator>

                        </div>
                    </div>

                </div>
            </section>
        </div>

        <hr />
        <div class="col-md-10">
            <section>
                <div class="form-horizontal">
                    <div class="form-group">
                        <asp:Label runat="server" ID="myLabel" CssClass="col-lg-2 control-label">Action</asp:Label>
                        <div class="col-md-10">
                            <div class="radio">
                                <label>
                                    <asp:RadioButtonList ID="typeSaisie" runat="server" RepeatDirection="Vertical" RepeatLayout="Table">
                                        <asp:ListItem Text="Saisir" Selected="True" Value="saisie"></asp:ListItem>
                                        <asp:ListItem Text="Charger&nbsp;Excel" Value="excel"></asp:ListItem>
                                    </asp:RadioButtonList>
                                </label>
                            </div>
                        </div>
                        <div class="col-md-offset-2 col-md-10">
                            <asp:FileUpload runat="server" Text="Upload" ID="uploadFile" OnLoad="uploadFile_Load"></asp:FileUpload>
                            <asp:Button ID="uploadButton" runat="server" Text="Upload" OnClick="uploadButton_Click" />

                        </div>
                    </div>

                    <asp:GridView ID="gridView" runat="server" CssClass="table table-striped table-bordered table-hover" AllowPaging="true"
                        OnPageIndexChanging="gridView_PageIndexChanging">
                        <Columns>
                            <asp:TemplateField HeaderText="Colonne 1" InsertVisible="true">
                                <ItemTemplate>
                                    <asp:TextBox ID="TextBoxColonne1" runat="server" Visible="true" Text='<%# Bind("Afifa") %>'></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" Text="Annuler" CssClass="btn btn-default" />
                            <asp:Button runat="server" OnClick="launch" Text="Lancer" CssClass="btn btn-danger" />
                        </div>
                    </div>
                </div>

            </section>
        </div>


    </div>


</asp:Content>
