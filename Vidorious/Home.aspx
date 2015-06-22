<%@ Page Title="" Language="C#" MasterPageFile="~/Vidorious.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Vidorious.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section role="main" class="content-body">
        <%--        <div class="row">
            <div class="col-md-12 col-lg-12 col-xl-3">
                <section class="panel">
                    <header class="panel-heading bg-primary" style="background-color: green">
                        <div class="panel-heading-icon">
                            <i class="fa fa-globe"></i>
                            <img src="Content/images/trex icon.png" height="50" alt="Vidorious" />
                        </div>
                    </header>
                    <div class="panel-body text-center">
                        <h3 class="text-semibold mt-sm text-center">Welcome</h3>
                        <p class="text-center">Nullam quiris risus eget urna mollis ornare vel eu leo. Soccis natoque penatibus et magnis dis parturient montes. Soccis natoque penatibus et magnis dis parturient montes.</p>
                    </div>
                </section>
            </div>
        </div>--%>

        <div class="row">
            <div class="col-md-12">
                <section class="panel">
                    <div class="panel-body panel-body-nopadding">
                        <div class="owl-carousel" data-plugin-carousel data-plugin-options='{ "autoPlay": 5000, "items": 1, "autoHeight": true }'>
                            <div class="item">
                                <img alt="" class="img-responsive img-rounded" src="Content/images/asking-questions.jpg" style="height: 400px; width: 100%">
                            </div>
                            <div class="item">
                                <img alt="" class="img-responsive img-rounded" src="Content/images/web-video.jpg" style="height: 400px; width: 100%">
                            </div>
                            <div class="item">
                                <img alt="" class="img-responsive img-rounded" src="Content/images/victory.jpg" style="height: 400px; width: 100%">
                            </div>
                        </div>
                        <div class="p-md">
                            <h4 class="text-semibold mt-none text-center">Welcome</h4>
                            <p class="text-center">
                                All of us needs a bit of help sometimes.  Whether reading or watching a tutorial gets your lightbulb blinking, Vidorious can help you out.  Create your own video and upload or simply checkout our existing videos.  
                                <br />
                                <br />
                                Why Vidorious?  
                                <br />
                                It is a combination between victorious and video.  Our goal is to make you victorious after watching a video.  Don't struggle be Vidorious!
                            </p>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </section>

</asp:Content>
