<%@ Page Language="C#" AutoEventWireup="true" codefile="employees.aspx.cs" Inherits="employeesjson" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Facebook Meta Tags -->
    <meta property="og:url" content="https://www.taxmanager.in">
    <meta property="og:type" content="website">
    <meta property="og:title" content="Income Tax Filing In India FY22-23 - TaxManager">
    <meta property="og:description"
        content="TaxManager Employee Deatils">
    <meta property="og:image" content="<%= imgurl %>">
    <meta property="og:image:width" content="1002" />
    <meta property="og:image:height" content="375" />
    <link rel="apple-touch-con" href="https://www.taxmanager.in/images/bg13.jpg">
    <!-- Twitter Meta Tags -->
    <meta name="twitter:card" content="summary_large_image">
    <meta property="twitter:domain" content="www.taxmanager.in">
    <meta property="twitter:url" content="https://www.taxmanager.in/income-tax-filing/index.html">
    <meta name="twitter:title" content="Income Tax Filing In India FY22-23 - TaxManager">
    <meta name="twitter:description"
        content="TaxManager Employee Deatils">
    <meta name="twitter:image" content="https://www.taxmanager.in/images/bg13.jpg">
    <title>Income Tax Filing In India FY22-23 - TaxManager</title>
    <meta name="title" content="Income Tax Filing In India FY22-23 - TaxManager">
    <meta name="keywords"
        content="itr filling , Self e filing, hdfc, e filing , form 16 , ITR , CA Assisted e filing , tax filing , capital gains , tax refund , tax credit check , NRI Tax return , Tax Notices , Tax rectification">
    <meta name="description"
        content="TaxManager Employee Deatils">

  
    <!-- end keywords and og tags -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="https://www.taxmanager.in/public/css/styles.css" />

    <!-- <link rel="stylesheet" href="/public/css/example.css" /> -->
    <link rel="icon" type="image/png" href="https://www.TaxManager.in/newsite/images/favicon.ico">
    <!-- my links -->
    <link rel="stylesheet" href="https://www.TaxManager.in/newsite/font/css/font-awesome.min.css">
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500&family=Vazirmatn:wght@300&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer">
    <!-- google font -->
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">
    <!-- Owl Carouse -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css">
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-MS8CR876YK"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());
        gtag('config', 'G-MS8CR876YK');
    </script>
    <style>
        .empolitedbanner {
            padding: 120px 0px 60px;
            background: #00800014 url(/Images/contact-backgroum.webp);
            width: 100%;
            margin: 0;
        }.empolitedbanner h1 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 45px;
            line-height: 45px;
            letter-spacing: 2px;
            font-weight: 800;
            color: #005009;
            font-family: 'Poppins', sans-serif;
        }
        .empolitedbanner ul {
            margin: 0 auto;
            text-align: center;
            display: inline-block;
            position: relative;
            width: auto;
        }
        .empolitedbanner ul li {
            margin: 0;
            padding: 0;
            display: inline-block;
            font-size: 15px;
            font-weight: 400;
        }
        .empolitedbanner ul li a {
            font-weight: 800;
            cursor: pointer;
        }
        .empolitedbanner ul li span {
            margin: 0px 5px;
        }
        .employeesbanners {
            position: relative;
            margin: 0;
            padding: 80px 0px;
            width: 100%;
            display: inline-block;
            background: #f9f9f9;
        }
        .resultsection {
            background: #fcfeff;
            position: relative;
            width: 50%;
            margin: 0 auto;
            display: block;
            padding: 0px 0px 30px;
            border-radius: 5px;
            box-shadow: 0 2px 10px #e5e5e5;
            overflow: hidden;
            border: 1px solid #e3e3e3;
        }.employeesbanners .searchfiled {
            display: flex;
            align-items: center;
            justify-content: space-between;
            position: relative;
            width: 100%;
            gap: 10px;
            margin-bottom: 30px;
            background: #ebebeb;
            padding: 20px 30px;
        }.employeesbanners .searchfiled .searchinputfiled {
            width: 100%;
            height: 40px;
            border: 1px solid #e3e3e3;
            border-radius: 4px;
            padding: 0px 20px;
            color: #000;
            font-size: 14px;
            font-weight: 400;
        }.searchfiled .searcbtn {
            padding: 5px 40px;
            height: 40px;
            background: #008000;
            border: unset;
            border-radius: 4px;
            color: #fff;
            font-size: 14px;
            letter-spacing: 0.5px;
        }.resultsection .employeedidcard,.undifienemid {
            padding: 0;
            border: 1px solid #ededed;
            border-radius: 4px;
            overflow: hidden;
            max-width: 300px;
            margin: 10px auto 30px;
            display: inline-block;
            box-shadow: 0 3px 10px #d5d5d5;
        }.employeelogocard {
            text-align: center;
            margin: 0 auto;
            display: block;
            width: auto;
            padding: 0px 0px 0px;
            position: relative;
            top: 7px;
        }.carbaneidemp {
            position: relative;
            margin: 0;
            padding: 0;
            width: 100%;
            display: block;
            text-align: center;
        }.Employeeprofile {
            background: url(img/id-card-back.png);
            position: relative;
            margin: 0;
            padding: 0;
            width: 100%;
            height: 250px;
            background-repeat: no-repeat;
            background-size: contain;
            background-position: top,center;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
        }.Employeeprofile span {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            background: #fff;
            position: relative;
            display: block;
            overflow: hidden;
            border: 5px solid #fff;
        }.Employeeprofile span img {
            width: 100%;
            height: 100%;
            display: block;
            object-fit: cover;
            object-position: center;
        }.carbaneidemp h2 {
            font-size: 25px;
            font-weight: bold;
            margin: -15px auto 5px;
            padding: 0px 0px 5px;
            width: calc(100% - 50px);
            border-bottom: 2px solid #e5e4e4;
            display: block;
        }.carbaneidemp h5 {
            font-size: 14px;
            color: #222;
            margin: 0px 0px 20px;
            padding: 0;
            line-height: 20px;
            width: calc(100% - 50px);
            display: inline-block;
            letter-spacing: 0.2px;
        }
        .carbaneidemp h4 {
            font-size: 18px;
            font-weight: 700;
            margin: 0px 0px 20px;
            padding: 0;
        }
        .carfootemployeer {
            background: #3a3230;
            padding: 10px 20px 5px;
            color: #fff;
        }.carfootemployeer ul {
            display: inline-block;
            margin: 0;
            padding: 0;
            list-style: none;
        }
        .carfootemployeer ul li {
            margin: 0;
            padding: 0;
            display: flex;
            gap: 10px;
            text-transform: capitalize;
            font-size: 11px;
            margin-bottom: 5px;
            letter-spacing: 0.5px;
        }
        .carfootemployeer ul span {
            background: #fff;
            border-radius: 50%;
            width: 20px;
            height: 20px;
            display: inline-block;
            color: #3a3230;
            text-align: center;
            line-height: 20px;
            font-size: 10px;
        }
        .employeedidcard h6 {
            text-align: center;
            margin: 0 auto;
            padding: 8px 0px;
            font-size: 12px;
            color: #000;
            font-weight: 700;
            letter-spacing: 0.5px;
        }
        #msg h3 {
            font-size: 25px;
            font-weight: 700;
            line-height: 30px;
            text-align: center;
                letter-spacing: 0.8px;
        }
        .undifienemid {
            margin: 0 auto;
            height: 410px;
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 200px;
            background: #ebebeb;
            box-shadow: unset;
            color: #cfcfcf;
            border: 1px solid #d9d9d9;
            position: relative;
        }
        .undifienemid:after {
            content: 'Employee Not found';
            position: absolute;
            top: 0;
            left: 70px;
            font-size: 38px;
            writing-mode: vertical-rl;
            font-weight: 700;
            letter-spacing: 0.5px;
            transform: rotate(215deg) translate(-40px, 28px);
            color: #008000;
            opacity: 0.6;
        }

        @media(max-width:1280px) {
            .resultsection { 
                width: 100%; 
                padding: 0px 0px 30px; 
            }
            .employeesbanners .searchfiled { 
                width: 100%;
                gap: 10px;
                margin-bottom: 30px; 
                padding: 10px 20px;
            }
            .searchfiled .searcbtn {
                padding: 5px 20px;  
                font-size: 13px; 
                height: 35px;
            }
            .employeesbanners .searchfiled .searchinputfiled { 
                height: 35px; 
                padding: 0px 15px; 
                font-size: 13px; 
            }
            .resultsection .employeedidcard {
                padding: 0; 
                margin: 10px auto 30px; 
                box-shadow: unset;
            }
            #msg h3 {
                font-size: 18px; 
            }
            .empolitedbanner h1 { 
                margin-bottom: 10px;
                font-size: 25px;
                line-height: 25px; 
            }
            .empolitedbanner {
                padding: 100px 0px 20px; 
            }
        }
    </style>
    
    
</head>

<body >
    <!-- start of head -->
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top">
            <div class="container-fluid pe-0">
                <a aria-label="Twitter" class="navbar-brand" href="https://www.TaxManager.in">
                    <img
                        src="https://www.TaxManager.in/newsite/images/logo.png" alt="taxmanager in logo"></a>
                <div class="togglenav" onclick="togglemenue(this)">
                    <div class="bar1"></div>
                    <div class="bar2"></div>
                    <div class="bar3"></div>
                </div>

                <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample"
                    aria-labelledby="offcanvasExampleLabel">
                    <div class="login-sign-up-sm">
                        <div class="login1">
                            <i class="fa fa-lock" aria-hidden="true"></i>&nbsp;<a
                                aria-label="Twitter" href="https://www.TaxManager.in/Login/Login.aspx">login</a>
                        </div>
                        <div class="signup1">
                            <i class="fa fa-user" aria-hidden="true"></i>&nbsp;<a
                                aria-label="Twitter" href="https://www.TaxManager.in/Login/Login.aspx">Register</a>
                        </div>
                    </div>
                    <div>
                        <ul class="navbar-nav NavArea">
                            <li class="nav-item blue-hover">
                                <a aria-label="Twitter" class="nav-link active" aria-current="page"
                                    href="https://www.taxmanager.in/home">
                                    <span><i class="fa fa-home" aria-hidden="true"></i>Home</span>
                                </a>
                            </li>
                            <li class="nav-item blue-hover">
                                <a aria-label="Twitter" class="nav-link"
                                    href="https://www.taxmanager.in/individuals/index">
                                    <span><i class="fa fa-book" aria-hidden="true"></i>Individuals</span>
                                </a>
                                <div class="plus-minus individuals">
                                    <div class="plus"></div>
                                    <div class="minus minus1"></div>
                                </div>
                                <ul class="animate slideIn sub-menue-sub" aria-labelledby="navbarDropdownMenuLink"
                                    id="individuals-maishow">
                                    <li class="dropdown-submenu dropdown-toggle  e-filing">
                                        <span aria-label="Twitter" class="dropdown-item">Tax e-Filing<i
                                            class="fa fa-caret-down" aria-hidden="true"></i></span>
                                        <ul class="dropdown-menu show-efiling" style="display: block;">
                                            <!-- New Resident -->
                                            <h4 class="nav_title_header">Resident</h4>
                                            <li><a aria-label="Twitter" class="dropdown-item"
                                                href="https://www.taxmanager.in/efile/CAAssistedSalary.aspx">Salary</a>
                                            </li>
                                            <li><a aria-label="Twitter" class="dropdown-item"
                                                href="https://www.taxmanager.in/efile/CAAssistedSalary50Lakhs.aspx">Salary
                                    over Rs 50 Lakhs</a></li>
                                            <li><a aria-label="Twitter" class="dropdown-item"
                                                href="https://www.taxmanager.in/efile/CAAssistedCG.aspx">Capital
                                    Gains (Equity &amp; MF Sale)</a></li>
                                            <li><a aria-label="Twitter" class="dropdown-item"
                                                href="https://www.taxmanager.in/efile/CAAssistedCG_PS.aspx">Capital
                                    Gains (Property Sale)</a></li>
                                            <li><a aria-label="Twitter" class="dropdown-item"
                                                href="https://www.taxmanager.in/efile/itr4.aspx">Professional/Self
                                    Employed </a></li>
                                            <li><a aria-label="Twitter" class="dropdown-item"
                                                href="https://www.taxmanager.in/efile/ResidentwithForeignIncome.aspx">Foreign
                                    Income</a></li>

                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu dropdown-toggle
                    Tax-Management">
                                        <a aria-label="Twitter" class="dropdown-item">&nbsp;Tax
                            Management<i class="fa
                            fa-caret-down"
                                aria-hidden="true"></i></a>
                                        <ul class="dropdown-menu
                        show-Tax-Management">
                                            <li><a aria-label="Twitter" class="dropdown-item"
                                                href="https://www.taxmanager.in/efile/aspsubscribe.aspx">Tax
                                    Advisory</a></li>
                                            <li><a aria-label="Twitter" class="dropdown-item"
                                                href="https://www.taxmanager.in/efile/aspsubscribe.aspx">Annual
                                    Subscription Package</a></li>
                                            <li><a aria-label="Twitter" class="dropdown-item"
                                                href="https://www.taxmanager.in/efile/ctcoptimizer.aspx">CTC
                                    Optimizer</a></li>
                                            <li><a aria-label="Twitter" class="dropdown-item"
                                                href="https://www.taxmanager.in/efile/taxnoticeservice.aspx">Tax
                                    Return Rectification</a></li>
                                            <li><a aria-label="Twitter" class="dropdown-item"
                                                href="https://www.taxmanager.in/efile/taxnoticeservice.aspx">IT
                                    Demand/ Notice</a></li>
                                            <li><a aria-label="Twitter" class="dropdown-item"
                                                href="https://www.taxmanager.in/efile/taxhistoryservice.aspx">Know
                                    your Tax History</a></li>
                                            <li><a aria-label="Twitter" class="dropdown-item"
                                                href="https://www.taxmanager.in/efile/taxquery.aspx">Tax
                                    Query</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu dropdown-toggle
                    Investments">
                                        <span aria-label="Twitter" class="dropdown-item">Investments
                            <i class="fa fa-caret-down" aria-hidden="true"></i></span>
                                        <ul class="dropdown-menu
                        show-Investments">
                                            <li><a aria-label="Twitter" class="dropdown-item"
                                                href="https://www.taxmanager.in/planyourtaxsavings.html">Plan
                                    You Tax Savings</a></li>
                                            <li><a aria-label="Twitter" class="dropdown-item" href="#">Start
                                    Investing<span class="caret"></span></a></li>
                                            <li><a aria-label="Twitter" class="dropdown-item"
                                                href="https://www.taxmanager.in/invest/mutualfunds/invest_mf.html">&nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp;<img
                                        src="https://www.TaxManager.in/newsite/images/mutul1.png"
                                        alt="Mutual Funds" style="margin-top: -6px;">&nbsp;Mutual
                                    Funds</a></li>
                                            <li><a aria-label="Twitter" class="dropdown-item"
                                                href="https://www.taxmanager.in/invest/LifeInsurance/invest_li.html">&nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp;<img
                                        src="https://www.TaxManager.in/newsite/images/life.png"
                                        alt="Life Insurance" style="margin-top: -6px;">&nbsp;Life
                                    Insurance</a></li>
                                            <li><a aria-label="Twitter" class="dropdown-item"
                                                href="https://www.taxmanager.in/invest/healthinsurance/invest_hi.html">&nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp;<img
                                        src="https://www.TaxManager.in/newsite/images/health.png"
                                        alt="Health Insurance" style="margin-top: -6px;">&nbsp;Health
                                    Insurance</a></li>
                                            <li><a aria-label="Twitter" class="dropdown-item"
                                                href="https://www.taxmanager.in/invest/ppf/invest_ppf.html">&nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp;<img
                                        src="https://www.TaxManager.in/newsite/images/public.png"
                                        alt="Public Provident
                                    Fund"
                                        style="margin-top: 6px;">&nbsp;Public
                                    Provident Fund</a></li>
                                            <li><a aria-label="Twitter" class="dropdown-item"
                                                href="https://www.taxmanager.in/invest/nsc/invest_nsc.html">&nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp;<img
                                        src="https://www.TaxManager.in/newsite/images/national.png"
                                        alt="National Savings
                                    Certificates"
                                        style="margin-top: -6px;">&nbsp;National
                                    Savings Certificates</a></li>
                                            <li><a aria-label="Twitter" class="dropdown-item"
                                                href="https://www.taxmanager.in/invest/others/invest_others.html">&nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp;<img
                                        src="https://www.TaxManager.in/newsite/images/other.png"
                                        alt="Other's" style="margin-top: -6px;">&nbsp;Other's</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a aria-label="Twitter" class="dropdown-item"
                                        href="https://www.taxmanager.in/individuals/cryptotax">&nbsp;Crypto
                            Tax</a></li>
                                    <li><a aria-label="Twitter" class="dropdown-item"
                                        href="https://www.taxmanager.in/individuals/taxonpropertysale">&nbsp;Tax
                            Treatment on Property Sale</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown blue-hover"><a aria-label="Twitter"
                                class="nav-link dropdown-toggle" href="https://www.taxmanager.in/nri/index"><i
                                    class="fa-solid fa-business-time"></i>NRI </a>
                                <div class="plus-minus Business">
                                    <div class="plus"></div>
                                    <div class="minus minus2"></div>
                                </div>
                                <ul class="animate slideIn sub-menue-sub" aria-labelledby="navbarDropdownMenuLink"
                                    id="Business-maishow" style="display: none;">
                                    <li>Tax e-Filing </li>
                                    <li><a aria-label="Twitter" class="dropdown-item"
                                        href="https://www.taxmanager.in/efile/nri_FD.aspx">Other Income
                            – FD Interest etc </a></li>
                                    <li><a aria-label="Twitter" class="dropdown-item"
                                        href="https://www.taxmanager.in/efile/NRI_Equity.aspx">Capital
                            Gains (Equity &amp; MF Sale)</a></li>
                                    <li><a aria-label="Twitter" class="dropdown-item"
                                        href="https://www.taxmanager.in/efile/NRI_PS.aspx">Capital
                            Gains (Property Sale)</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown blue-hover">
                                <a aria-label="Twitter" class="nav-link"
                                    href="https://www.taxmanager.in/business/index">
                                    <i class="fa-solid fa-business-time"></i>Business
                                </a>
                                <div class="plus-minus Business">
                                    <div class="plus"></div>
                                    <div class="minus minus2"></div>
                                </div>
                                <ul class="animate slideIn sub-menue-sub" aria-labelledby="navbarDropdownMenuLink"
                                    id="Business-maishow">
                                    <li><a aria-label="Twitter" class="dropdown-item"
                                        href="https://www.taxmanager.in/corporate-plan.html">Employee
                            Care e-Form 16 and Payrolls</a></li>
                                    <li><a aria-label="Twitter" class="dropdown-item"
                                        href="https://www.taxmanager.in/gst-services.html">GST
                            Services</a></li>
                                    <li><a aria-label="Twitter" class="dropdown-item"
                                        href="https://www.taxmanager.in/Startup-program.html">Startup
                            Program</a></li>
                                    <li><a aria-label="Twitter" class="dropdown-item"
                                        href="https://www.taxmanager.in/accounting-management.html">Accounting
                            Management</a></li>
                                    <li><a aria-label="Twitter" class="dropdown-item"
                                        href="https://www.taxmanager.in/tds-taxmanagement.html">TDS
                            and Tax Management</a></li>
                                    <li><a aria-label="Twitter" class="dropdown-item"
                                        href="https://www.taxmanager.in/compliancemgmt.html">Compliance
                            Management</a></li>
                                    <li><a aria-label="Twitter" class="dropdown-item"
                                        href="https://www.taxmanager.in/companyregistration.html">Company
                            Registration</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown blue-hover">
                                <a aria-label="Twitter" class="nav-link"
                                    href="https://www.taxmanager.in/Startups/index">
                                    <i class="fa-solid fa-hand-holding-dollar"></i>StartUps
                                </a>
                                <div class="plus-minus StartUps">
                                    <div class="plus"></div>
                                    <div class="minus minus3"></div>
                                </div>
                                <ul class="animate slideIn sub-menue-sub" aria-labelledby="navbarDropdownMenuLink"
                                    id="StartUps-maishow">
                                    <li><a aria-label="Twitter" class="dropdown-item"
                                        href="https://www.taxmanager.in/launchyourStartup">Launch
                            your Startup</a></li>
                                    <li><a aria-label="Twitter" class="dropdown-item"
                                        href="https://www.taxmanager.in/manageyourStartup">Manage your Startup</a></li>
                                    <li><a aria-label="Twitter" class="dropdown-item"
                                        href="https://www.taxmanager.in/growyourStartup">Grow your Startup</a></li>
                                </ul>
                            </li>
                            <li class="nav-item blue-hover">
                                <a aria-label="Twitter" class="nav-link active" aria-current="page"
                                    href="https://www.taxmanager.in/KnowledgeBank/index"><i
                                        class="fa-solid fa-building-columns"></i>Knowledge
                    Bank</a>
                            </li>
                            <li class="nav-item blue-hover">
                                <a aria-label="Twitter" class="nav-link active color-active"
                                    style="color: #04051c !important;" aria-current="page"
                                    href="https://www.taxmanager.in/career/index"><i
                                        class="fa-solid fa-person-hiking"></i>We're
                    Hiring</a>
                            </li>
                            <br>
                            <br>
                            <div class="login-sign-up-sm sm-contact">
                                <div class="login1">
                                    <i class="fa fa-mobile" aria-hidden="true"></i>&nbsp;<a
                                        aria-label="Twitter" href="tel:+919555331122"> +919555331122</a>
                                </div>
                                <div class="signup1">
                                    <i class="fa fa-envelope-o " aria-hidden="true"></i>&nbsp;<a
                                        aria-label="Twitter"
                                        href="mailto:Support@Taxmanager.in">Support@TaxManager.in</a>
                                </div>
                            </div>

                        </ul>
                    </div>
                </div>
                <!-- desktop nav -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <div class="me-auto"></div>
                    <ul class="navbar-nav NavArea">
                        <li class="nav-item blue-hover">
                            <a aria-label="Twitter" class="nav-link active" aria-current="page"
                                href="https://www.taxmanager.in/home">Home</a>
                        </li>
                        <li class="nav-item dropdown blue-hover">
                            <a aria-label="Twitter" class="nav-link dropdown-toggle"
                                href="https://www.taxmanager.in/individuals/index">Individuals <i class="fa fa-caret-down" aria-hidden="true"></i>
                            </a>
                            <ul class="dropdown-menu animate slideIn" aria-labelledby="navbarDropdownMenuLink">
                                <li class="dropdown-submenu dropdown-toggle">
                                    <span aria-label="Twitter" class="dropdown-item">Tax e-Filing</span>
                                    <ul class="dropdown-menu">
                                        <!-- New Resident -->
                                        <h4 class="nav_title_header">Resident</h4>
                                        <li><a aria-label="Twitter" class="dropdown-item"
                                            href="https://www.taxmanager.in/efile/CAAssistedSalary.aspx">Salary</a>
                                        </li>
                                        <li><a aria-label="Twitter" class="dropdown-item"
                                            href="https://www.taxmanager.in/efile/CAAssistedSalary50Lakhs.aspx">Salary
                                over Rs 50 Lakhs</a></li>
                                        <li><a aria-label="Twitter" class="dropdown-item"
                                            href="https://www.taxmanager.in/efile/CAAssistedCG.aspx">Capital
                                Gains (Equity &amp; MF Sale)</a></li>
                                        <li><a aria-label="Twitter" class="dropdown-item"
                                            href="https://www.taxmanager.in/efile/CAAssistedCG_PS.aspx">Capital
                                Gains (Property Sale)</a></li>
                                        <li><a aria-label="Twitter" class="dropdown-item"
                                            href="https://www.taxmanager.in/efile/itr4.aspx">Professional/Self
                                Employed </a></li>
                                        <li><a aria-label="Twitter" class="dropdown-item"
                                            href="https://www.taxmanager.in/efile/ResidentwithForeignIncome.aspx">Foreign
                                Income</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown-submenu
                    dropdown-toggle">
                                    <span aria-label="Twitter" class="dropdown-item">Tax
                        Management</span>
                                    <ul class="dropdown-menu">
                                        <li><a aria-label="Twitter" class="dropdown-item"
                                            href="https://www.taxmanager.in/efile/aspsubscribe.aspx">Tax
                                Advisory</a></li>
                                        <li><a aria-label="Twitter" class="dropdown-item"
                                            href="https://www.taxmanager.in/efile/aspsubscribe.aspx">Annual
                                Subscription Package</a></li>
                                        <li><a aria-label="Twitter" class="dropdown-item"
                                            href="https://www.taxmanager.in/efile/ctcoptimizer.aspx">CTC
                                Optimizer</a></li>
                                        <li><a aria-label="Twitter" class="dropdown-item"
                                            href="https://www.taxmanager.in/efile/taxnoticeservice.aspx">Tax
                                Return Rectification</a></li>
                                        <li><a aria-label="Twitter" class="dropdown-item"
                                            href="https://www.taxmanager.in/efile/taxnoticeservice.aspx">IT
                                Demand/ Notice</a></li>
                                        <li><a aria-label="Twitter" class="dropdown-item"
                                            href="https://www.taxmanager.in/efile/taxhistoryservice.aspx">Know
                                your Tax History</a></li>
                                        <li><a aria-label="Twitter" class="dropdown-item"
                                            href="https://www.taxmanager.in/efile/taxquery.aspx">Tax Query</a>
                                        </li>

                                    </ul>
                                </li>
                                <li class="dropdown-submenu
                    dropdown-toggle">
                                    <span aria-label="Twitter" class="dropdown-item">Investments</span>
                                    <ul class="dropdown-menu">
                                        <li><a aria-label="Twitter" class="dropdown-item"
                                            href="https://www.taxmanager.in/planyourtaxsavings.html">Plan
                                You Tax Savings</a></li>
                                        <li><a aria-label="Twitter" class="dropdown-item" href="#">Start
                                Investing<span class="caret"></span></a></li>
                                        <li><a aria-label="Twitter" class="dropdown-item"
                                            href="https://www.taxmanager.in/invest/mutualfunds/invest_mf.html">&nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp;<img
                                    src="https://www.TaxManager.in/newsite/images/mutul1.png"
                                    alt="Mutual Funds" style="margin-top: -6px;">&nbsp;Mutual
                                Funds</a></li>
                                        <li><a aria-label="Twitter" class="dropdown-item"
                                            href="https://www.taxmanager.in/invest/LifeInsurance/invest_li.html">&nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp;<img
                                    src="https://www.TaxManager.in/newsite/images/life.png"
                                    alt="Life Insurance" style="margin-top: -6px;">&nbsp;Life
                                Insurance</a></li>
                                        <li><a aria-label="Twitter" class="dropdown-item"
                                            href="https://www.taxmanager.in/invest/healthinsurance/invest_hi.html">&nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp;<img
                                    src="https://www.TaxManager.in/newsite/images/health.png"
                                    alt="Health Insurance" style="margin-top: -6px;">&nbsp;Health
                                Insurance</a></li>
                                        <li><a aria-label="Twitter" class="dropdown-item"
                                            href="https://www.taxmanager.in/invest/ppf/invest_ppf.html">&nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp;<img
                                    src="https://www.TaxManager.in/newsite/images/public.png" alt="Public Provident
                                    Fund"
                                    style="margin-top: 6px;">&nbsp;Public
                                Provident Fund</a></li>
                                        <li><a aria-label="Twitter" class="dropdown-item"
                                            href="https://www.taxmanager.in/invest/nsc/invest_nsc.html">&nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp;<img
                                    src="https://www.TaxManager.in/newsite/images/national.png" alt="National Savings
                                    Certificates"
                                    style="margin-top: -6px;">&nbsp;National
                                Savings Certificates</a></li>
                                        <li><a aria-label="Twitter" class="dropdown-item"
                                            href="https://www.taxmanager.in/invest/nps/invest_nps.html">&nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp;<img
                                    src="https://www.TaxManager.in/newsite/images/nps.png" alt="NPS"
                                    style="margin-top: -6px;">&nbsp;NPS</a></li>
                                        <li><a aria-label="Twitter" class="dropdown-item"
                                            href="https://www.taxmanager.in/invest/others/invest_others.html">&nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp;<img
                                    src="https://www.TaxManager.in/newsite/images/other.png"
                                    alt="Other's" style="margin-top: -6px;">&nbsp;Other's</a></li>
                                    </ul>
                                </li>
                                <li><a aria-label="Twitter" class="dropdown-item"
                                    href="https://www.taxmanager.in/individuals/cryptotax.html">Crypto Tax</a>
                                </li>
                                <li><a aria-label="Twitter" class="dropdown-item"
                                    href="https://www.taxmanager.in/individuals/taxonpropertysale.html">Tax
                        Treatment on
                        Property Sale</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown blue-hover">
                            <a aria-label="Twitter" class="nav-link dropdown-toggle"
                                href="https://www.taxmanager.in/nri/index">NRI
                <i class="fa fa-caret-down" aria-hidden="true"></i>
                            </a>
                            <!-- New NRI --->
                            <ul class="dropdown-menu animate slideIn" aria-labelledby="navbarDropdownMenuLink">

                                <h4 class="nav_title_header">Tax e-Filing </h4>
                                <li class="dropdown-submenu  dropdown-toggle">
                                    <a aria-label="Twitter" class="dropdown-item"
                                        href="https://www.taxmanager.in/efile/nri_FD.aspx">Other Income – FD Interest etc
                                    </a>
                                </li>
                                <li class="dropdown-submenu  dropdown-toggle">
                                    <a aria-label="Twitter" class="dropdown-item"
                                        href="https://www.taxmanager.in/efile/NRI_Equity.aspx">Capital Gains (Equity &amp; MF Sale)
                                    </a>
                                </li>
                                <li class="dropdown-submenu  dropdown-toggle">
                                    <a aria-label="Twitter" class="dropdown-item"
                                        href="https://www.taxmanager.in/efile/NRI_PS.aspx">Capital Gains (Property Sale)
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown blue-hover">
                            <a aria-label="Twitter" class="nav-link dropdown-toggle"
                                href="https://www.taxmanager.in/business/index.html">Business <i class="fa fa-caret-down" aria-hidden="true"></i>
                            </a>
                            <ul class="dropdown-menu animate slideIn" aria-labelledby="navbarDropdownMenuLink"
                                target="_blank">
                                <li><a aria-label="Twitter" class="dropdown-item"
                                    href="https://www.taxmanager.in/corporate-plan.html"
                                    target="_blank">Employee
                        Care e-Form 16 and Payrolls</a></li>
                                <li><a aria-label="Twitter" class="dropdown-item"
                                    href="https://www.taxmanager.in/gst-services.html" target="_blank">GST
                        Services</a></li>
                                <li><a aria-label="Twitter" class="dropdown-item"
                                    href="https://www.taxmanager.in/Startup-program.html"
                                    target="_blank">Startup
                        Program</a></li>
                                <li><a aria-label="Twitter" class="dropdown-item"
                                    href="https://www.taxmanager.in/accounting-management.html">Accounting
                        Management</a></li>
                                <li><a aria-label="Twitter" class="dropdown-item"
                                    href="https://www.taxmanager.in/tds-taxmanagement.html">TDS
                        and Tax Management</a></li>
                                <li><a aria-label="Twitter" class="dropdown-item"
                                    href="https://www.taxmanager.in/compliancemgmt.html">Compliance
                        Management</a></li>
                                <li><a aria-label="Twitter" class="dropdown-item"
                                    href="https://www.taxmanager.in/companyregistration.html">Company
                        Registration</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown blue-hover">
                            <a aria-label="Twitter" class="nav-link dropdown-toggle"
                                href="https://www.taxmanager.in/Startups/index.html">StartUps <i class="fa fa-caret-down" aria-hidden="true"></i>
                            </a>
                            <ul class="dropdown-menu animate slideIn" aria-labelledby="navbarDropdownMenuLink">
                                <li><a aria-label="Twitter" class="dropdown-item"
                                    href="https://www.taxmanager.in/launchyourStartup">Launch
                        your Startup</a></li>
                                <li><a aria-label="Twitter" class="dropdown-item"
                                    href="https://www.taxmanager.in/manageyourStartup">Manage your Startup</a></li>
                                <li><a aria-label="Twitter" class="dropdown-item"
                                    href="https://www.taxmanager.in/growyourStartup">Grow your Startup</a></li>
                            </ul>
                        </li>
                        <li class="nav-item blue-hover">
                            <a aria-label="Twitter" class="nav-link active" aria-current="page"
                                href="https://www.taxmanager.in/KnowledgeBank/index">Knowledge
                Bank</a>
                        </li>
                        <li class="nav-item blue-hover">
                            <a aria-label="Twitter" class="nav-link active" aria-current="page"
                                href="https://www.taxmanager.in/career/index.html">We're
                Hiring</a>
                        </li>
                        <li class="nav-item blue-hover login-active">
                            <a aria-label="Twitter" class="nav-link active login-color" aria-current="page"
                                href="https://www.taxmanager.in/Login/Login.aspx">Login / Register</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <!-- Banner Top -->
    <div class="empolitedbanner">
        <div class="container">
            <div class="row">
                <h1>Employees</h1>
                <ul>
                    <li><a href="/">Home</a> <span><i class="fas fa-long-arrow-alt-right"></i></span></li>
                    <li>About Us</li>
                </ul>
            </div>
        </div>
    </div>


    <!-- Form -->
    <form id="form1" runat="server">
        <div class="employeesbanners">
            <div class="container">
                <div class="resultsection">

                    <div class="row">
                        <div class="searchfiled">
                            <asp:TextBox runat="server" ID="txt1" placeholder="Please Enter Employee ID" CssClass="searchinputfiled"></asp:TextBox>
                            <asp:Button runat="server" CssClass="searcbtn" ID="btnsubmit" Text="Submit" OnClick="btnsubmit_Click" />
                        </div>
                        <div id="msgload" runat="server" visible="false">
                            <div class="undifienemid">
                                <i class="fa-solid fa-question"></i>
                            </div>
                        </div>
                        <div id="msg" runat="server" visible="false" >
                            <span style="color:red;padding:20px;"><h3>Please Enter Valid Employee ID</h3></span>
                        </div>
                        <div class="employeedidcard" runat="server" id="d1">
                            <div class="employeelogocard" >
                                <img src="img/logo.png" />
                            </div>
                            <div class="carbaneidemp">
                                <div class="Employeeprofile">
                                    <span>
                                        <img src="img/<%= TaxProImg %>" alt="<%= TaxName %>" />
                                    </span>
                                </div>
                                <h2><%= TaxName %></h2>
                                <h5><%= TaxPos %></h5>
                                <h4>ID: <%= TaxEmpId %></h4>
                            </div>
                            <div class="carfootemployeer">
                                <ul>
                                    <li><span><i class="far fa-envelope"></i></span><%= TaxEmailId %></li>
                                    <li><span><i class="fas fa-phone-alt"></i></span><%= TaxPhoneNo %></li>
                                </ul>
                            </div>
                            <h6>www.TaxManager.in </h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>


    <!-- footer -->
    <div class=" container-fluid m-0 leader-ship" style="overflow-x: hidden; margin: 0px !important;">
        <!-- start of footer -->
        <footer class="col pb-2 ">
            <div class="row footerCol ">
                <div class="col-sm-2 "></div>
                <div class="col-sm-9 p-3 row text-light ">
                    <div class="col-lg-3 col-md-6 pt-3 ">
                        <h5>Individuals</h5>
                        <ul>
                            <li><a aria-label="Twitter "
                                href="https://www.taxmanager.in/UserAc/Register.aspx?From=TaxM&Product=Basic "
                                class="yellow-hover ">Tax Returns –
                        Self eFiling</a></li>
                            <li><a aria-label="Twitter " href="https://www.taxmanager.in/Efile/efile2.aspx "
                                class="yellow-hover ">Tax Returns –
                        CA Assisted</a></li>

                            <li><a aria-label="Twitter " href="https://www.taxmanager.in/Efile/itr4.aspx "
                                class="yellow-hover ">Tax Returns –
                        Individual Business/ Professionals</a></li>
                            <li><a aria-label="Twitter " href="https://www.taxmanager.in/efile/nriefile.aspx "
                                class="yellow-hover ">Tax Returns –
                        NRI Returns</a></li>

                            <li><a aria-label="Twitter " href="https://www.taxmanager.in/tax-refund.html "
                                class="yellow-hover ">Tax
                        Returns –Tax Refund</a></li>

                            <li><a aria-label="Twitter " href="https://www.taxmanager.in/efileITR4.html "
                                class="yellow-hover ">Tax
                        Returns – ITR V and 26 AS Tax Credit
                        Check</a></li>

                            <li><a aria-label="Twitter " href="https://www.taxmanager.in/efile/aspsubscribe.aspx "
                                class="yellow-hover ">Tax
                        Management – Tax Advisory</a></li>
                            <li><a aria-label="Twitter " href="https://www.taxmanager.in/efile/aspsubscribe.aspx "
                                class="yellow-hover ">Tax
                        Management
                        – Annual Subscription Package</a></li>
                            <li><a aria-label="Twitter " href="https://www.taxmanager.in/efile/ctcoptimizer.aspx "
                                class="yellow-hover ">Tax
                        Management
                        – CTC Optimizer</a></li>

                            <li><a aria-label="Twitter "
                                href="https://www.taxmanager.in/efile/taxnoticeservice.aspx "
                                class="yellow-hover ">Tax
                        Management
                        – Tax Return Rectification</a></li>
                            <li><a aria-label="Twitter "
                                href="https://www.taxmanager.in/efile/taxnoticeservice.aspx "
                                class="yellow-hover ">Tax
                        Management
                        – IT Notice/ Demandt</a></li>

                            <li><a aria-label="Twitter "
                                href="https://www.taxmanager.in/efile/taxhistoryservice.aspx "
                                class="yellow-hover ">Tax
                        Management
                        – Know your Tax History</a></li>
                            <li><a aria-label="Twitter " href="https://www.taxmanager.in/pan-apply.html "
                                class="yellow-hover ">Tax
                        Management – PAN Application</a></li>
                            <li><a aria-label="Twitter " href="https://www.taxmanager.in/digital-signature "
                                class="yellow-hover ">Tax Management
                        – Digital Signature</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-6 pt-3 contetn-taxt">
                        <div>
                            <h5>Business</h5>
                            <ul>
                                <li><a aria-label="Twitter " href="https://www.taxmanager.in/corporate-plan.html "
                                    class="yellow-hover ">Employee
                            Care – Bulk Tax Returns/
                            Payrolls</a></li>
                                <li><a aria-label="Twitter " href="https://www.taxmanager.in/gst-services.html "
                                    class="yellow-hover ">GST
                            Services</a></li>
                                <li><a aria-label="Twitter " href="https://www.taxmanager.in/Startup-program.html "
                                    class="yellow-hover ">Startups
                            - Launch/ Manage your Startup</a></li>
                                <li><a aria-label="Twitter "
                                    href="https://www.taxmanager.in/accounting-management.html "
                                    class="yellow-hover ">Accounting
                            Management</a></li>
                                <li><a aria-label="Twitter "
                                    href="https://www.taxmanager.in/tds-taxmanagement.html "
                                    class="yellow-hover ">TDS
                            Management</a></li>
                                <li><a aria-label="Twitter " href="https://www.taxmanager.in/compliancemgmt.html "
                                    class="yellow-hover ">ROC
                            and Compliance Management</a></li>
                                <li><a aria-label="Twitter "
                                    href="https://www.taxmanager.in/companyregistration.html "
                                    class="yellow-hover ">Company
                            Incorporation</a></li>
                            </ul>
                        </div>
                        <div>
                            <h5>NRI</h5>
                            <ul>
                                <li><a aria-label="Twitter " href="https://www.taxmanager.in/efile/nriefile.aspx "
                                    class="yellow-hover ">NRI Tax
                            Returns</a></li>
                                <li><a aria-label="Twitter " href="https://www.taxmanager.in/efile/nritaxmgmt.aspx "
                                    class="yellow-hover ">NRI Tax
                            Management</a></li>
                            </ul>
                        </div>
                        <div>
                            <h5>StartUps</h5>
                            <ul>
                                <li><a aria-label="Twitter " href="https://www.taxmanager.in/launchyourStartup "
                                    class="yellow-hover ">Launch your
                            Startup</a></li>
                                <li><a aria-label="Twitter " href="https://www.taxmanager.in/manageyourStartup "
                                    class="yellow-hover ">Manage
                            your Startup</a></li>
                                <li><a aria-label="Twitter " href="https://www.taxmanager.in/growyourStartup "
                                    class="yellow-hover ">Grow your
                            Startup</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 pt-3 ">
                        <div>
                            <h5>Tools</h5>
                            <ul>
                                <li><a aria-label="Twitter "
                                    href="https://www.taxmanager.in/calculator/2223/taxcalculator2223.aspx "
                                    class="yellow-hover ">Tax
                            Estimator Calculator FY 22-23</a></li>
                                <li><a aria-label="Twitter "
                                    href="https://www.taxmanager.in/Calculator/Hra/Hra.aspx "
                                    class="yellow-hover ">HRA
                            Calculator</a></li>
                                <li><a aria-label="Twitter " href="https://www.taxmanager.in/KnowledgeBank/index "
                                    class="yellow-hover ">Knowledge
                            Bank</a></li>
                                <li><a aria-label="Twitter "
                                    href="https://www1.incometaxindiaefiling.gov.in/e-FilingGS/Services/ITRStatusLink.html "
                                    class="yellow-hover " target="_blank ">ITR V Status</a></li>
                                <li><a aria-label="Twitter "
                                    href="https://tin.tin.nsdl.com/oltas/refund-status-pan.html "
                                    target="_blank " class="yellow-hover ">Refund
                            Status</a></li>
                                <li><a aria-label="Twitter " href="# " class="yellow-hover ">CTC
                            Calculator</a></li>
                            </ul>
                        </div>
                        <div>
                            <h5>Tax Professionals</h5>
                            <ul>
                                <li><a aria-label="Twitter " href="TaxProfessionals/eFilingGateway.html "
                                    class="yellow-hover ">E-Filing
                            Gateway</a></li>
                                <li><a aria-label="Twitter " href="TaxProfessionals/ClientsManagement.html "
                                    class="yellow-hover ">Clients
                            Tax Management Online</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 pt-3 myclass ">
                        <h5><a aria-label="Twitter " href="https://www.taxmanager.in/Inmedia">In
                    The Media</a></h5>
                        <h5><a aria-label="Twitter " href="https://www.taxmanager.in/blogs/ ">Blogs</a></h5>
                        <h5><a aria-label="Twitter " href="https://www.taxmanager.in/KnowledgeBank/index ">Knowledge
                    Bank</a></h5>
                        <h5><a aria-label="Twitter " href="https://www.taxmanager.in/Contact.html ">Contact
                    Us</a>
                        </h5>
                        <h5><a aria-label="Twitter " href="https://www.TaxManager.in/About_Us.html ">About
                    Us</a></h5>
                        <h5><a aria-label="Twitter "
                            href="https://www.TaxManager.in/Leadership.html ">Leadership</a>
                        </h5>
                    </div>
                </div>
                <div class="col-sm-1 "></div>
            </div>
            <div class="row ">
                <div class="col-sm-2 "></div>
                <div class="col-sm-8 p-4 row ">
                    <div class="col-sm-4 links ">
                        <ul class="footer-end ">
                            <li><a aria-label="Twitter "
                                href="https://www.TaxManager.in/Privacy-Policy.html ">Privacy
                        Policy</a></li>
                            <li><a aria-label="Twitter " href="https://www.TaxManager.in ">Security</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-4 links ">
                        <ul class="footer-end ">
                            <li><a aria-label="Twitter "
                                href="https://www.TaxManager.in/Legal_Disclaimer.html ">Legal
                        Disclaimer</a></li>
                            <li><a aria-label="Twitter " href="https://www.TaxManager.in/FAQs.html ">FAQs</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-4 links ">
                        <ul class="footer-end ">
                            <li><a aria-label="Twitter "
                                href="https://www.TaxManager.in/Terms_Conditions.html ">Terms
                        and Conditions</a></li>
                            <li><a aria-label="Twitter " href="https://www.TaxManager.in ">Site
                        Map</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2 "></div>
            </div>
            <div class="row ">
                <div class="col-sm-2 "></div>
                <div class="col-sm-8 row d-flex " id="flexreverse ">
                    <div class="row col-md-6 ">
                        <h6 class="mb-0 ">Copyrights © Rising Advisory Services Private Limited.</h6>
                        <div class="d-flex copyright " id="center ">
                            <span><a aria-label="Twitter " href="https://www.taxmanager.in/ereturn_letter.pdf "
                                target="_blank ">
                                <img src="https://www.taxmanager.in/newsite/images/return.jpg "
                                    alt=" "></a></span>
                            <span><a aria-label="Twitter " href="# ">
                                <img
                                    src="https://www.taxmanager.in/newsite/images/ssllogo.png "
                                    alt=" "></a></span>
                            <span><a aria-label="Twitter " href="# ">
                                <img
                                    src="https://www.taxmanager.in/newsite/images/isologo.png "
                                    alt=" "></a></span>
                        </div>
                    </div>
                    <div class="row col-md-3 "></div>
                    <div class="row col-md-3 d-flex flex-column ">
                        <h6>Follow us</h6>
                        <div class="d-flex gap-3 followUs " id="center1 ">
                            <a aria-label="Twitter " target="_blank " class="text-light "
                                href="https://www.facebook.com/efileitr "><span><i class="fa fa-facebook "
                                    aria-hidden="true "></i></span></a>
                            <a aria-label="Twitter " target="_blank " class="text-light "
                                href="https://twitter.com/taxmanagerindia "><span><i class="fa fa-twitter "
                                    aria-hidden="true "></i></span></a>
                            <a aria-label="Twitter " target="_blank " class="text-light "
                                href="https://in.linkedin.com/company/taxmanager-in "><span><i
                                    class="fa fa-linkedin " aria-hidden="true "></i></span></a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-2 "></div>
            </div>
        </footer>
    </div>

    <!-- script part start now -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://kit.fontawesome.com/cc33d9671e.js" crossorigin="anonymous"></script>
    <!-- Owl Carouse -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js"></script>
    <script src="https://www.taxmanager.in/public/js/script.js"></script>

</body>
</html>

