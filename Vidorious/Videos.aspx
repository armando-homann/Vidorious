<%@ Page Title="" Language="C#" MasterPageFile="~/Vidorious.Master" AutoEventWireup="true" CodeBehind="Videos.aspx.cs" Inherits="Vidorious.Videos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section role="main" class="content-body">

        <%-- Start: Video Upload --%>
        <div class="row">
            <div class="col-md-12 col-lg-12 col-xl-3">
                <section class="panel">
                    <header class="panel-heading bg-primary" style="background-color: green">
                        <div class="panel-heading-icon">
                            <asp:LinkButton ID="btnShowVideoUpload" runat="server" ToolTip="Upload Videos" CausesValidation="false" ForeColor="White" OnClick="btnShowVideoUpload_Click"><i class="fa fa-film"></i></asp:LinkButton>
                        </div>
                        <h3 class="text-semibold mt-sm text-center">Upload Videos</h3>
                        
                    </header>
                    <div id="uploadPanel" runat="server" class="panel-body text-center">
                        <div class="form-group">
                            <div class="col-md-12">
                                <asp:Label ID="lblMessage" runat="server" Text="" class="required" Font-Bold="False" Font-Size="Small" ForeColor="Black" Style="vertical-align: sub"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="fileupload fileupload-new" data-provides="fileupload" style="text-align: center">
                                    <div class="input-append">
                                        <div class="uneditable-input">
                                            <span class="fileupload-preview"></span>
                                        </div>
                                        <span class="btn btn-default btn-file">
                                            <span class="fileupload-exists">Change</span>
                                            <span class="fileupload-new">Browse</span>
                                            <asp:FileUpload ID="fileUpload" runat="server" Height="27px" />
                                        </span>
                                        <a href="#" class="btn btn-default fileupload-exists" data-dismiss="fileupload">Clear</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 text-right">
                                <asp:LinkButton ID="btnVideoUpload" runat="server" class="btn btn-primary" ToolTip="Upload Video" CausesValidation="false" OnClick="btnVideoUpload_Click">Upload</asp:LinkButton>
                                <button class="btn btn-default modal-dismiss">Cancel</button>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <%-- End: Video Upload --%>

        <div class="row">
            <div class="col-md-12">
                <asp:Label ID="lblVideoUploadMessage" runat="server" Text="" class="required" Font-Bold="False" Font-Size="Small" ForeColor="Black" Style="vertical-align: sub"></asp:Label>
            </div>
            <div class="col-md-6">
                <section class="panel">
                    <header class="panel-heading">
                        <h2 class="panel-title">Git Setup</h2>
                        <p class="panel-subtitle">Allow browsers to determine video or slideshow dimensions based on the width of their containing block by creating an intrinsic ratio that will properly scale on any device.</p>
                    </header>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="embed-responsive embed-responsive-4by3">
                                    <video controls class="embed-responsive-item">
                                        <source src="Content/videos/small.mp4" type="video/mp4">
                                        Your browser does not support the video tag.
                                    </video>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>

            <div class="col-md-6">
                <section class="panel">
                    <header class="panel-heading">
                        <h2 class="panel-title">GitLab</h2>
                        <p class="panel-subtitle">Allow browsers to determine video or slideshow dimensions based on the width of their containing block by creating an intrinsic ratio that will properly scale on any device.</p>
                    </header>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="embed-responsive embed-responsive-4by3">
                                    <video controls class="embed-responsive-item">
                                        <source src="Content/videos/small.mp4" type="video/mp4">
                                        Your browser does not support the video tag.
                                    </video>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>

    </section>
</asp:Content>
