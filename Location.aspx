<%@ Page Title="" Language="C#" MasterPageFile="~/Usher.master" AutoEventWireup="true" CodeFile="Location.aspx.cs" Inherits="Location" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title> Location | USHER-Marketing Advisory </title>
    <meta name="description" content="Location" />
    <meta name="keywords" content="map, address" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <section id="smallMap" class="hidden-lg hidden-md hidden-sm">
            <div class="row">
                 <div class="col-xs-12">

                            <div class="row">
                                <figure>
                                    <div id="map-canvas" class="map"></div>
                                </figure>
                            </div>
                            <div class="row location">
                                <div>
                                    <img src="Images/glyphicons_020_home1.png" alt="Address" class="icon-img" />
                                    <span class="sr-only">Address:</span>
                                    <a href="https://www.google.com/maps/place/30%C2%B005'51.6%22N+31%C2%B018'54.7%22E/@30.09766,31.315183,17z/data=!3m1!4b1!4m2!3m1!1s0x0:0x0" target="_blank"> 7 El-Andalus Street, Heliopolis, Cairo, Egypt</a>
                                </div>
                                <div>
                                    <img src="Images/glyphicons_442_earphone.png" alt="Phone Number" class="icon-img" />
                                    <span class="sr-only">Phone Number:</span>
                                    <a href="tel:00201000070013" data-rel="external" target="_blank">+20 100 007 0013</a>  
                                </div>

                            </div>

                        </div>
            </div>
             <footer>
                Powered By <a href="http://www.csharkstudio.com/" target="_blank">CSHARK &#169;</a>
            </footer>
        </section>
</asp:Content>

