<%@ Page Title="" Language="C#" MasterPageFile="~/Vidorious.Master" AutoEventWireup="true" CodeBehind="Videos.aspx.cs" Inherits="Vidorious.Videos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section role="main" class="content-body">

        <%-- Start: DataList--%>
        <div class="row">
            <div class="col-md-12">
                <asp:DataList ID="datalistVideos" runat="server" Visible="true" RepeatColumns="2">
                    <ItemTemplate>
                        <%--<a style="height: 300px; width: 300px; display: block" href='<%# Eval("Id", "FileCS.ashx?Id={0}") %>'></a>--%>

                        <div class="col-md-12">
                            <section class="panel">
                                <header class="panel-heading">
                                    <h2 class="panel-title"><%# Eval ("Name") %></h2>
                                </header>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="embed-responsive embed-responsive-4by3">
                                                <video controls class="embed-responsive-item">
                                                    <source src='<%# Eval("Id", "FileCS.ashx?Id={0}") %>' type="video/mp4">
                                                    Your browser does not support the video tag.
                                                </video>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
        <%-- End: DataList --%>

        <%--        <div class="row">
            <div class="owl-carousel" data-plugin-carousel data-plugin-options='{ "items": 6, "itemsDesktop": [1199,4], "itemsDesktopSmall": [979,3], "itemsTablet": [768,2], "itemsMobile": [479,1] }'>
                <div class="item spaced">
                    <a href="#"><img class="img-thumbnail" src="assets/images/projects/project-1.jpg" alt='<%# Eval ("Name") %>'></a>
                </div>
                <div class="item spaced">
                    <img class="img-thumbnail" src="assets/images/projects/project-2.jpg" alt="">
                </div>
                <div class="item spaced">
                    <img class="img-thumbnail" src="assets/images/projects/project-3.jpg" alt="">
                </div>
                <div class="item spaced">
                    <img class="img-thumbnail" src="assets/images/projects/project-4.jpg" alt="">
                </div>
            </div>
        </div>--%>

        <div class="row">
            <div class="col-md-12">
                <asp:Label ID="lblVideoUploadMessage" runat="server" Text="" class="required" Font-Bold="False" Font-Size="Small" ForeColor="Black" Style="vertical-align: sub"></asp:Label>
            </div>
            <div class="col-md-12">
                <section class="panel">
                    <header class="panel-heading">
                        <h2 class="panel-title">Git Setup</h2>
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

            <%--            <div class="col-md-6">
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
            </div>--%>
        </div>
    </section>
</asp:Content>
