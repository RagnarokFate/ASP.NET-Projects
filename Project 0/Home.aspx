<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageVis.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <span class="auto-style9" style="font-size: xx-large; color: #993300;">
    <em><strong>Home Page</strong></em></span> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <span style="color: #993300"><span style="font-size: x-large"><strong>Congratulation</strong></span><strong> :<br />
    </strong>
    <br />
    <span class="auto-style18"><span class="auto-style19">Last Releases :-</span><br />
    </span></span><br style="color: #993300" />
&nbsp;<br style="color: #993300" />
    <table>
        <tr>
          <td class="auto-style23"> 
              <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 232px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
    .auto-style18 {
        text-decoration: underline;
    }
    .auto-style19 {
        font-size: large;
    }
    .auto-style21 {
        font-size: x-large;
        width: 384px;
        height: 698px;
    }
    .auto-style22 {
        width: 128px;
        height: 128px;
    }
    .auto-style23 {
        width: 447px;
        height: 698px;
    }
</style>
</head>
<body>

<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">Area21 - Happy</div>
  <img src="ReleaseIMGs/1.jpg" style="width:100%">
  <div class="text">Area21 - Happy</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">Martin Garrix ft.Dua Lipa - Scared To Be Lonely</div>
  <img src="ReleaseIMGs/25.jpg" style="width:100%">
  <div class="text">Martin Garrix ft.Dua Lipa - Scared To Be Lonely</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">Martin Garrix & Brooks - Byte</div>
  <img src="ReleaseIMGs/24.jpg" style="width:100%">
  <div class="text">Martin Garrix & Brooks - Byte</div>
</div>
    <div class="mySlides fade">
  <div class="numbertext">CMC$ ft.Jenny March - Love Prade</div>
  <img src="ReleaseIMGs/4.jpg" style="width:100%">
  <div class="text">CMC$ ft.Jenny March - Love Prade</div>
</div>
    <div class="mySlides fade">
  <div class="numbertext">Martin Garrix ft. Troye Sivan - There For You</div>
  <img src="ReleaseIMGs/23.jpg" style="width:100%">
  <div class="text">Martin Garrix ft. Troye Sivan - There For You</div>
</div>
    <div class="mySlides fade">
  <div class="numbertext">Martin Garrix & David Guetta Ft.Jaime Scott & Romy Dya (Remixes I & II)</div>
  <img src="ReleaseIMGs/7.jpg" style="width:100%">
  <div class="text">Martin Garrix & David Guetta Ft.Jaime Scott & Romy Dya (Remixes I & II)</div>
</div>
        <div class="mySlides fade">
  <div class="numbertext">Salvatore Ganacci - Imagine</div>
  <img src="ReleaseIMGs/8.jpg" style="width:100%">
  <div class="text">Salvatore Ganacci - Imagine</div>
</div>
    
<div class="mySlides fade">
  <div class="numbertext">Conro & Disero feat. Alice France - Like You Love Me</div>
  <img src="ReleaseIMGs/22.jpg" style="width:100%">
  <div class="text">Conro & Disero feat. Alice France - Like You Love Me</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">Blinders - Snakecharmer</div>
  <img src="ReleaseIMGs/13.jpg" style="width:100%">
  <div class="text">Blinders - Snakecharmer</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">Bad Decisions - Chills</div>
  <img src="ReleaseIMGs/14.jpg" style="width:100%">
  <div class="text">Bad Decisions - Chills</div>
</div>
    <div class="mySlides fade">
  <div class="numbertext">Martin Garrix & Matisse & Sadko - Forever</div>
  <img src="ReleaseIMGs/16.jpg" style="width:100%">
  <div class="text">Martin Garrix & Matisse & Sadko - Forever</div>
</div>
    <div class="mySlides fade">
  <div class="numbertext">Brooks & GRX - Boomerang</div>
  <img src="ReleaseIMGs/17.jpg" style="width:100%">
  <div class="text">Brooks & GRX - Boomerang</div>
</div>
    <div class="mySlides fade">
  <div class="numbertext">13</div>
  <img src="ReleaseIMGs/20.jpg" style="width:100%">
  <div class="text">Martin Garrix - Pizza</div>
</div>
        <div class="mySlides fade">
  <div class="numbertext">CMC$ & Conor Maynard - Understand Me</div>
  <img src="ReleaseIMGs/21.jpg" style="width:100%">
  <div class="text">CMC$ & Conor Maynard - Understand Me</div>
</div>

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>

<script>
    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        if (n > slides.length) { slideIndex = 1 }
        if (n < 1) { slideIndex = slides.length }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
    }
</script>

 <br /> <br />
                                <br /> <br /> <br /> <br /><span class="auto-style18"><strong>New Release Every Friday
            </strong>
            </span>
            </td>  

            <td class="auto-style21">
                <br />
                Follow Our News in soical Media Apps:-<br />
                <br />
                <table class="auto-style15">
                    <tr>
                        <td>Facebook</td>
                        <td>Youtube</td>
                        <td>Instgram</td>
                        <td>Twitter</td>
                    </tr>
                    <tr>
                        <td><a href="https://www.facebook.com/STMPDRCRDS/‏">
                            <img alt="" class="auto-style22" src="Djs%20full%20sets%20pictures/FacebookSTMPD.png" />
                            </a>

                        </td>
                        <td>
                            <a href="https://www.youtube.com/channel/UCB-7IEpKGIdXkgGUObE5D5A">
                                                                                 
                            <img alt="" class="auto-style22" src="Djs%20full%20sets%20pictures/YoutubeSTMPD.png" />
                             </a>
                        </td>
                        <td>
                            <a href="https://www.instagram.com/stmpdrcrds/">
                            <img alt="" class="auto-style22" src="Djs%20full%20sets%20pictures/InstgramSTMPD.png" />
                            </a>
                            </td>
                          <td>
                              <a href="https://twitter.com/stmpdrcrds">
                            <img alt="" class="auto-style22" src="Djs%20full%20sets%20pictures/TwitterSTMPD.png" />
                                  </a>
                                  </td>
                    </tr>
                </table>
            </td>
</tr>
    </table>
    <br style="color: #993300" />
    <br style="color: #993300" />

    <span style="color: #993300"> 
    <br />
</span> 
    <br />
</asp:Content>

