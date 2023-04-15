<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="NCC_index" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>NATIONAL CADET CROPS</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <%--<link href="img/favicon.png" rel="icon">--%>
  <%--<link href="img/apple-touch-icon.png" rel="apple-touch-icon">--%>

  <!-- Google Fonts -->
  <link href="css/googlefonts.css" rel="stylesheet">
  <script src='fontjs.js' crossorigin='anonymous'></script>  
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  <!-- Vendor CSS Files -->
  <link href="vendor/aos/aos.css" rel="stylesheet">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Squadfree - v4.9.1
  * Template URL: https://bootstrapmade.com/squadfree-free-bootstrap-template-creative/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-transparent">
    <div class="container d-flex align-items-center justify-content-between">

      <div class="logo">
          <h1 class="display-4 text-white text-uppercase m-0"><img src="img/NCClogo2.png" height="100" width="70" />  NCC</h1>
        <%--<h1 class="text-light"><a href="index.html"><span>NCC</span></a></h1>
        
         <img src="img/NCClogo.png" height="45px" width="45px" alt="" class="img-fluid">--%>
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">HOME</a></li>
          <li class="dropdown"><a href="#"><span>REGISTRATION</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="cadetreg.aspx">REGISTER</a></li>
              <li><a href="appstatus.aspx">CHECK APPLICATION STATUS</a></li>
              </ul>
          </li>
          <li class="dropdown"><a href="#"><span>LOGIN</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="adminlogin.aspx">ADMIN LOGIN</a></li>
              <li><a href="cadetlogin.aspx">CADET LOGIN</a></li>
              </ul>
          </li>
          <li><a class="nav-link scrollto" href="#cta">UPCOMING EVENTS</a></li>
          <li><a class="nav-link scrollto" href="#about">ABOUT</a></li>
          <li><a class="nav-link scrollto" href="#portfolio">GALLERY</a></li>
          <li><a class="nav-link scrollto" href="#team">TEAM</a></li>
          <li><a class="nav-link scrollto" href="#contact">CONTACT</a></li>
        </ul>
          <img src="img/collegelogo.png" height="70" width="70" />
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
    </div>
  </header><!-- End Header -->

  

    
    <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container" data-aos="fade-up">
      <h1>NATIONAL CADET CORPS</h1>
      <a href="#services" class="btn-get-started scrollto"><i class="bx bx-chevrons-down"></i></a>
    </div>
  </section><!-- End Hero -->
    <main id="main">


         <!-- Service Section -->
     
    <section id="services1" class="services">
      <div class="container">

        <div class="section-title" data-aos="fade-in" data-aos-delay="100">
          <h2>KEY HIGHLIGHTS</h2>
          
            <div class="card">
  
  <div class="card-body">
      <marquee scrollamount=2 direction="up" height="250" >
          <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource4">
          <ItemTemplate>
              <i class="fas fa-bahai"></i>
              <asp:Label ID="highlightsLabel" runat="server" Text=' <%# Eval("highlights") %>' />
              <br />
<br />
          </ItemTemplate>

      </asp:DataList>
      </marquee>
      
      <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [highlights] FROM [keyhighlights]"></asp:SqlDataSource>
  
  </div>
</div>


         

        </div>

      </div>
    </section><!-- End Services Section -->



 <!-- Service Section -->
     
    <section id="services" class="services">
      <div class="container">

        <div class="section-title" data-aos="fade-in" data-aos-delay="100">
          <h2>LOGIN</h2>
          
        </div>
        
        <div class="row justify-content-center">
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up">
              <div class="icon"><i class="bx bx-file"></i></div>
              <h4 class="title"><a href="cadetreg.aspx">REGISTER</a></h4>
                
<%--    <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi</p>--%>
            </div>
          </div>

             <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="300">
              <div class="icon"><i class="bx bx-file"></i></div>
              <h4 class="title"><a href="appstatus.aspx">CHECK <br />APPLICATION <br />STATUS</a></h4>
              <%--<p class="description">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis</p>--%>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
              <div class="icon"><i class="bi bi-person"></i></div>
              <h4 class="title"><a href="adminlogin.aspx">ADMIN LOGIN</a></h4>
              <%--<p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore</p>--%>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-2">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
              <div class="icon"><i class="bi bi-person"></i></div>
              <h4 class="title"><a href="cadetlogin.aspx">CADET LOGIN</a></h4>
              <%--<p class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia</p>--%>
            </div>
          </div>
            

         

        </div>

      </div>
    </section><!-- End Services Section -->
    
  

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="row no-gutters">
          <div class="content col-xl-5 d-flex align-items-stretch" data-aos="fade-up">
            <div class="content">
              <h3>About NCC</h3>
             <p>
                <span class="text-primary">5/3 COY, 8 KAR BATTALION,</span><br/><span>SURANA COLLEGE.Est: 2003 – 2004</span>
              </p>
                <p>The National Cadet Corps is into existence at the College since academic year 2003-04.
                        Ever since inception, the college unit is giving ARMY training to the students.
                        The unit has undertaken many social service activities over the years. Our unit has a standing record of sending cadets for the Republic day parade at New Delhi, every year.</p>
              
                
            </div>
          </div>
          <div class="col-xl-7 d-flex align-items-stretch">
            <div class="icon-boxes d-flex flex-column justify-content-center">
              <div class="row">
                <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="100">
                  <i class="bi bi-eye"></i>
                  <h4>VISION</h4>
                  <p>To transform our country into a corruption free and Superpower by igniting the minds of youth, moulding their character through inculcating discipline, strong will power, social responsibilities and leadership.</p>
                </div>
                <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="200">
                  <i class="bx bx-shield"></i>
                  <h4>MISSION</h4>
                  <p>To build an ENTERPRENEUR (INDIVIDUAL) who in turn build the NATION</p>
                </div>
                <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="300">
                  <i class="bx bx-shield"></i>
                  <h4>CARDINAL PRINCIPLES</h4>
                  <p><ul>
                            <li>
                                Obey with smile
                            </li>
                            <li>
                                Be punctual
                            </li>
                        </ul></p>
                </div>
                  <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="300">
                  <i class="bx bx-shield"></i>
                  <h4>MOTTO</h4>
                  <p>Unity and Discipline.</p>
                </div>
                <div class="col-md-12 icon-box" data-aos="fade-up" data-aos-delay="400">
                  <i class="bx bx-shield"></i>
                  <h4>OBJECTIVES</h4>
                  <p><ul>
                            <li>To develop leadership, character of comradeship, spirit of sportsmanship and the ideals of selfless service.</li>
                            <li>To create a force of disciplined and trained manpower to serve the nation at the time of emergency and calamities.</li>
                            <li>To inculcate officer like qualities among youth</li>
                        </ul></p>
                </div>
              </div>
            </div><!-- End .content-->
          </div>
        </div>

      </div>o
    </section><!-- End About Section -->

    <!-- ======= Counts Section ======= -->
    <section id="counts" class="counts  section-bg">
      <div class="container">

        <div class="row no-gutters">

          <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
            <div class="count-box">
              <i class="bi bi-person "></i>

                  <asp:Label ID="Label1" runat="server" Text="Label" ></asp:Label>
              <p><strong>NO. OF CADET'S </strong></p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
            <div class="count-box">
              <i class="bi bi-calendar"></i>
              <%--<span data-purecounter-start="0" data-purecounter-end="521" data-purecounter-duration="1" class="purecounter"></span>--%>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
              <p><strong>NO. OF EVENTS</strong></p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
            <div class="count-box">
                
              <i><img src="Icons/camp2.png" /></i>
              <%--<span data-purecounter-start="0" data-purecounter-end="1463" data-purecounter-duration="1" class="purecounter"></span>--%>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    
              <p><strong>NO OF CAMPS</strong></p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
            <div class="count-box">
                <i><img src="Icons/parade2.png" /></i>
              <%--<span data-purecounter-start="0" data-purecounter-end="15" data-purecounter-duration="1" class="purecounter"></span>--%>
                <asp:Label ID="Label4" runat="server"  Text="Label"></asp:Label>
              <p><strong>NO OF PARADE</strong></p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Counts Section -->

    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
      <div class="container" data-aos="zoom-in">

        <div class="text-center">
          <%--<h3>Call To Action</h3>
          <p> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          <a class="cta-btn" href="#">Call To Action</a>--%>
                      <center> <h1>UPCOMING</h1>   </center><br /><hr/ >
              <div class="row mt-2">
                <div class="col-md-4">
            <asp:DataList ID="DataList9" runat="server" DataSourceID="SqlDataSource1">

                <ItemTemplate>
                  <h2> CAMP</h2><br />
                    
                   <CENTER> <h3><strong><%#Eval ("camp_name")%></strong></h3><br />
                    <h3>STARTING DATE<BR /><%#Eval ("camp_startingdate")%></h3><br />
                    <h3>DURATION<BR /><%#Eval ("camp_duration")%></h3></CENTER>
                </ItemTemplate>

            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP 1 * FROM [camp] ORDER BY camp_id DESC"></asp:SqlDataSource>
           </div>
                  <div class="col-md-4">
                    

            <asp:DataList ID="DataList8" runat="server" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    <h2>EVENT</h2><br />
          <center> <h3><strong><%#Eval ("event_name")%></strong></h3><BR />
          <h3>EVENT DATE<BR /><%#Eval ("event_date")%> <%#Eval ("event_time")%></h3></center>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP 1 * FROM [event] ORDER BY event_id DESC"></asp:SqlDataSource>
       </div>
                  
             <div class="col-md-4">
                    

            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource3">
                <ItemTemplate>
                    <h2>PARADE</h2><br />
          <center> <h3>PARADE DATE<br /><strong><%#Eval ("p_date")%></strong></h3><BR />
          <h3>EVENT STARTING TIME<BR /><%#Eval ("p_starttime")%></h3><br /></center>
                    <h3>EVENT ENDING TIME<BR /><%#Eval ("p_endtime")%></h3><br /></center>
                </ItemTemplate>
            </asp:DataList>
                 <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP 1 * FROM [parade] ORDER BY p_id DESC"></asp:SqlDataSource>
                   </div>
                  </div>
                      </div>
          
    </div>
    </section><!-- End Cta Section -->

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
      <div class="container">

        <div class="section-title" data-aos="fade-in" data-aos-delay="100">
          <h2>GALLERY</h2></div>

        <%--<div class="row" data-aos="fade-in">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">All</li>
              <li data-filter=".filter-app">App</li>
              <li data-filter=".filter-card">Card</li>
              <li data-filter=".filter-web">Web</li>
            </ul>
          </div>
        </div>--%>

        <div class="row portfolio-container" data-aos="fade-up">

          <div class="col-lg-4 col-md-6 portfolio-item filter-app" >
            <div class="portfolio-wrap">
              <img src="img/ncc2.jpg" class="img-fluid" alt="" width="600rem" height="600rem"/>
              <div class="portfolio-links">
                <a href="img/ncc2.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bx bx-plus"></i></a>
                <%--<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>--%>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="img/ncc3.jpeg" class="img-fluid" alt="" width="600rem" height="600rem"/>
              <div class="portfolio-links">
                <a href="img/ncc3.jpeg" data-gallery="portfolioGallery" class="portfolio-lightbox" ><i class="bx bx-plus"></i></a>
                <%--<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>--%>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="img/ncc4.jpg" class="img-fluid" alt="" width="600rem" height="600rem"/>
              <div class="portfolio-links">
                <a href="img/ncc4.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bx bx-plus"></i></a>
                <%--<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>--%>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="img/ncc5.jpg" class="img-fluid" alt="" width="600rem" height="600rem"/>
              <div class="portfolio-links">
                <a href="img/ncc5.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bx bx-plus"></i></a>
                <%--<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>--%>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="img/ncc6.jpg" class="img-fluid" alt="" width="600rem" height="600rem"/>
              <div class="portfolio-links">
                <a href="img/ncc6.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bx bx-plus"></i></a>
                <%--<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>--%>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="img/ncc7.jpg" class="img-fluid" alt="" width="600rem" height="600rem"/>
              <div class="portfolio-links">
                <a href="img/ncc7.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bx bx-plus"></i></a>
                <%--<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>--%>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="img/ncc8.jpg" class="img-fluid" alt="" width="600rem" height="600rem"/>
              <div class="portfolio-links">
                <a href="img/ncc8.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bx bx-plus"></i></a>
                <%--<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>--%>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="img/ncc9.jpg" class="img-fluid" alt="" width="600rem" height="600rem"/>
              <div class="portfolio-links">
                <a href="img/ncc9.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bx bx-plus"></i></a>
                <%--<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>--%>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="img/ncc10.jpg" class="img-fluid" alt="" width="600rem" height="600rem"/>
              <div class="portfolio-links">
                <a href="img/ncc10.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bx bx-plus"></i></a>
                <%--<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>--%>
              </div>
            </div>
          </div>

             <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="img/ncc11.jpg" class="img-fluid" alt="" width="600rem" height="600rem"/>
              <div class="portfolio-links">
                <a href="img/ncc11.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bx bx-plus"></i></a>
                <%--<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>--%>
              </div>
            </div>
          </div>

             <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="img/ncc12.jpg" class="img-fluid" alt="" width="600rem" height="600rem"/>
              <div class="portfolio-links">
                <a href="img/ncc12.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bx bx-plus"></i></a>
                <%--<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>--%>
              </div>
            </div>
          </div>

             <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="img/ncc13.jpg" class="img-fluid" alt="" width="600rem" height="600rem"/>
              <div class="portfolio-links">
                <a href="img/ncc13.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox"><i class="bx bx-plus"></i></a>
                <%--<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>--%>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Portfolio Section -->

    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials section-bg">
      <div class="container">

        <div class="section-title" data-aos="fade-in" data-aos-delay="100">
         
         
        </div>

        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-item">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Freedom is never dear at any price. It is the breath of life. What would a man not pay for living?
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
                  <h3>Mahatma Gandhi</h3>
                <img src="img/NCClogo.png" class="testimonial-img" alt="">
                
              
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                 Dushman ki goliyon ka hum samna karenge, Azad hee rahein hain, Azad hee rahenge.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
                <h3>Chandra Shekhar Azad</h3>
                <img src="img/NCClogo.png" class="testimonial-img" alt="">
                
                
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Don't see others doing better than you beat your own records everyday, because success is a fight between you and yourself.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
                  <h3>Chandra Shekhar Azad</h3>
                <img src="img/NCClogo.png" class="testimonial-img" alt="">
                
                
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  So long as you do not achieve social liberty, whatever freedom is provided by the law is of now avail to you.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
                  <h3>BR Ambedkar</h3>
                <img src="img/NCClogo.png" class="testimonial-img" alt="">
                
                
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                 Citizenship consists in the service of the country.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
                  <h3>Jawaharlal Nehru</h3>
                <img src="img/NCClogo.png" class="testimonial-img" alt="">
                
                
              </div>
            </div><!-- End testimonial item -->

              <div class="swiper-slide">
              <div class="testimonial-item">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                 Every citizen of India must remember that... he is an Indian and he has every right in this country but with certain... duties.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
                  <h3>Sardar Vallabh Bhai Patel</h3>
                <img src="img/NCClogo.png" class="testimonial-img" alt="">
                
                
              </div>
            </div><!-- End testimonial item -->

               <div class="swiper-slide">
              <div class="testimonial-item">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                 The sword of revlution is sharpened on the whettingstone of ideas.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
                  <h3>Bhagat Singh</h3>
                <img src="img/NCClogo.png" class="testimonial-img" alt="">
                
                
              </div>
            </div><!-- End testimonial item -->

               <div class="swiper-slide">
              <div class="testimonial-item">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                 Constitution is not a mere lawyers document, it is a vehicle of Life, and its spirit is always the spirit of Age.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
                  <h3>BR Ambedkar<h3>
                <img src="img/NCClogo.png" class="testimonial-img" alt="">
                
                
              </div>
            </div><!-- End testimonial item -->

               <div class="swiper-slide">
              <div class="testimonial-item">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                 Satyamev jayate
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
                  <h3>Madan Mohan Malviya</h3>
                <img src="img/NCClogo.png" class="testimonial-img" alt="">
                
                
              </div>
            </div><!-- End testimonial item -->

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Testimonials Section -->

    <!-- ======= Team Section ======= -->
    <section id="team" class="team">
      <div class="container">

        <div class="section-title" data-aos="fade-in" data-aos-delay="100">
          <h2>Team</h2>
          
        </div>

        <div class="row">
<center>
          <div class="col-lg-4 col-md-6">
            <div class="member" data-aos="fade-up">
              <div class="pic"><img src="img/kiran sir.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Lt. KIRAN ANAND</h4>
                <span>Associate NCC officer</span>
               <%-- <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>--%>
              </div>
            </div>
          </div>

          </center>

        </div>

      </div>
    </section><!-- End Team Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Contact</h2>
         
        </div>

        <div class="row">
          <div class="col-lg-6">
            <div class="info-box mb-4">
              <i class="bx bx-map"></i>
              <h3>OFFICE</h3>
              <p>Surana College,South End Road,Bangalore 560004</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
              <i class="bx bx-envelope"></i>
              <h3>EMAIL US</h3>
              <p>suranancccoy8karbn@gmail.com</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
              <i class="bx bx-phone-call"></i>
              <h3>CALL US</h3>
              <p>+91 7259258042</p>
            </div>
          </div>

        </div>

        <div class="row">

          <div class="col-lg-12 ">
            <iframe class="mb-4 mb-lg-0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3888.554701587436!2d77.57608026479251!3d12.936316940879049!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae15913bcd56df%3A0x91ae0928b93a3a79!2sSurana%20College%2C%20S%20End%20Rd%2C%20Jayanagar%2C%20Bengaluru%2C%20Karnataka%20560070!5e0!3m2!1sen!2sin!4v1665845707353!5m2!1sen!2sin" frameborder="0" style="border:0; width: 100%; height: 384px;" allowfullscreen="true"></iframe>
          </div>

         
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 col-md-6">
            <div class="footer-info">
              <h3>NCC</h3>
              <%--<p class="pb-3"><em>Qui repudiandae et eum dolores alias sed ea. Qui suscipit veniam excepturi quod.</em></p>--%>
              <p>
                Surana College,<br>South End Road,Bangalore 560004 <br><br>
                <strong>Phone:</strong>+91 7259258042<br>
                <strong>Email:</strong>suranancccoy8karbn@gmail.com<br>
              </p>
              <div class="social-links mt-3">
                <%--<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>--%>
                <a href="https://www.facebook.com/Surana-College-NCC-1327710263949328/s" class="facebook"><i class="bx bxl-facebook"></i></a>
                <a href="https://instagram.com/surana_ncc?igshid=YmMyMTA2M2Y=" class="instagram"><i class="bx bxl-instagram"></i></a>
                <%--<a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>--%>
              </div>
            </div>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>ACTIVITIES</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">EVENTS</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">CAMPS</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">PARADE</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">GUEST LECTURE</a></li>
             
            </ul>
          </div>

          <%--<div class="col-lg-2 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
            </ul>
          </div>--%>

          <%--<div class="col-lg-4 col-md-6 footer-newsletter">
            <h4>Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>

          </div>--%>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        <p class="m-0 text-white">&copy; <a href="#">Department of Computer Science</a>. All Rights Reserved.</p>
         <p align="center" style="margin-top:3rem;margin-bottom:-2rem;"> Developed by Anushree R and Chandana B</p> 
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/squadfree-free-bootstrap-template-creative/ -->
        
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="vendor/aos/aos.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/glightbox/js/glightbox.min.js"></script>
  <script src="vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="vendor/swiper/swiper-bundle.min.js"></script>
  <script src="vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="js/main.js"></script>

</body>

</html>