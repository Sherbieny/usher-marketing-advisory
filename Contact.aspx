<%@ Page Title="" Language="C#" MasterPageFile="~/Usher.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Contact | USHER-Marketing Advisory</title>
    <meta name="description" content="Contact Information" />
    <meta name="keywords" content="Address, Telephone, Directions" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       <section id="contact" class="page1">
            <div class="page_container container">
                <div class="row">
                    <form runat="server">
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">

                            <div class="panel panel-danger panel-push">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Write Us a Message</h3>
                                </div>
                                <div class="panel-body push-up">
                                    <div class="row">
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" name="name" CssClass="form-control" ID="name" type="text" placeholder="Name"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="inputCheck"
                                                ErrorMessage="Name is Required !" ForeColor="Red" ControlToValidate="name"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" name="name" CssClass="form-control" ID="phone" type="text" placeholder="Phone Number"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <asp:CompareValidator ID="txt_phone_num" runat="server" ControlToValidate="phone" Type="Integer" ValidationGroup="inputCheck"
                                                Operator="DataTypeCheck" ErrorMessage="Numbers Only!" />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" name="mail" CssClass="form-control" ID="mail" type="text" placeholder="E-mail"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="inputCheck"
                                                ErrorMessage="Email is Required !" ForeColor="Red" ControlToValidate="mail"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationGroup="inputCheck"
                                                ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="mail" ErrorMessage="Invalid Email Format!"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" name="comment" ID="comment" placeholder="Message"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="inputCheck"
                                                ErrorMessage="Message is Required !" ForeColor="Red" ControlToValidate="comment"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8 input-group">
                                            <span class="input-group-addon" id="basic-addon7">Attachment</span>
                                            <asp:FileUpload ID="email_attachment" MaxLength="400" CssClass="filestyle" data-input="false" data-icon="false" runat="server" aria-describedby="basic-addon7"></asp:FileUpload>
                                        </div>
                                        <div class="col-md-4"></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3 col-md-push-9">
                                            <asp:Button type="submit" runat="server" name="login-submit" ID="passRecover_submit" CssClass="btn btn-danger" Text="Send Now" OnClick="send_Mail" CausesValidation="true" ValidationGroup="inputCheck" />
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>

                        <div class="hidden-xs col-sm-6 col-md-6 col-lg-6 small-push-left">

                            <div class="row">
                                <figure>
                                    <div id="map-canvas" class="map"></div>
                                </figure>
                            </div>
                            <div class="row" style="text-align: left;">
                                <div>                                    
                                    <img src="Images/glyphicons_020_home1.png" alt="Address" class="icon-img" />
                                    <span class="sr-only">Address:</span>
                                    <a href="https://www.google.com/maps/place/30%C2%B005'51.6%22N+31%C2%B018'54.7%22E/@30.09766,31.315183,17z/data=!3m1!4b1!4m2!3m1!1s0x0:0x0" target="_blank">
                                         7 El-Andalus Street, Heliopolis, Cairo, Egypt</a>                         
                                </div>
                                <div>                                   
                                    <img src="Images/glyphicons_442_earphone.png" alt="Phone Number" class="icon-img" />
                                    <span class="sr-only">Phone Number:</span>
                                    <a href="tel:#######">+#########</a>  
                                </div>

                            </div>
                        </div>
                    </form>
                </div>
            </div>            
        </section>    

</asp:Content>

