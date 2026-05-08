<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TaxCalculator2021.aspx.cs" Inherits="TaxCalculator2021" %>

    <html class="js flexbox rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent gr__taxmanager_in">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width">
        <meta name="description" content=" TaxManager.in is a website which helps to your prepare and file your tax returns online in a secured and digital way. Step by Step onscreen instructions and experts help at all levels along with interactive interface. TaxManager.in ">
        <meta name="keywords" content=" Tax Returns, Income Tax Returns, Income Tax, Tax Deductions, eFiling, E return, Life Insurance, Tax Planning, Form 1, Form 2, ITR, ITR Forms, TaxManager.in, Incometaxindiaefiling.gov.in, Incometaxindia.gov.in, Tax Benefits, IT Returns, Online Tax Returns, Tax Filing Taxmanager.in">
        <meta name="keywords" content="Income Tax, Income Tax Returns, Efiling, Efile Tax Returns, IncomeTaxIndiaEfiling, Tax Refund, Income Tax Planning, Tax Savings, Income Tax Return Filing, Tax Filing Information, Tax Returns Services, income tax guide, individual tax filing, income tax department India, income tax calculator">
        <title>Tax Calculator 23-24 - TaxManager</title>

        <link rel="icon" type="image/png" href="https://www.TaxManager.in/htmlcode/images/favicon.ico" />

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/header-style.css">
        <link rel="stylesheet" type="text/css" href="css/responsive.css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <link href="css/animate.css" rel="stylesheet" type="text/css">
        <!-- <link href="css/tablet.css" rel="stylesheet" type="text/css"> -->
        <!-- <link href="css/iphone.css" rel="stylesheet" type="text/css"> -->
        <!-- <link href="css/ipad.css" rel="stylesheet" type="text/css"> -->
        <!-- <link href="css/signin.css" rel="stylesheet" type="text/css"> -->
        <!-- <link rel="stylesheet" type="text/css" href="hover.css"> -->


        <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="js/tinynav.min.js"></script>

        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap" rel="stylesheet">

        <script type="text/javascript">
            function fvalidation() {

                if (document.getElementById("D1").selectedIndex == 0) {
                    alert('Please Select Age');
                    document.getElementById("Text4").value = "0";
                    document.getElementById("Text5").value = "0";
                    document.getElementById("Text4").value = "0";
                    document.getElementById("TResult").value = "0";
                    return false;
                }
                if (document.getElementById("D1").selectedIndex != 0) {
                    //alert(document.getElementById("D1").selectedIndex);

                }


                CalTax();
                CalTaxOld();

                document.getElementById("mcontact").style.display = "block";

            }
        </script>

        <script>
            $(function() {
                $('#nav').tinyNav({});
            });
        </script>

        <script type="text/javascript">
            $(document).ready(function() {

                $(".signin").click(function(e) {
                    e.preventDefault();
                    $("fieldset#signin_menu").toggle();
                    $(".signin").toggleClass("menu-open");
                });

                $("fieldset#signin_menu").mouseup(function() {
                    return false
                });
                $(document).mouseup(function(e) {
                    if ($(e.target).parent("a.signin").length == 0) {
                        $(".signin").removeClass("menu-open");
                        $("fieldset#signin_menu").hide();
                    }
                });

            });
        </script>
        <script type="text/javascript" language="javascript">
            <!--
            function LoginCheck() {
                if (document.frm.txtUserId.value == "") {
                    alert("Enter User Id");
                    document.frm.txtUserId.focus();
                    return false;
                }

                if (document.frm.txtPassword.value == "") {
                    alert("Enter Password");
                    document.signin.frm.focus();
                    return false;
                }
                //document.frm.submit();
                return true;
            }
            //-->
        </script>
        <script type="text/javascript">
            function f1() {
                if (document.getElementById("div3").style.display == "block")
                    document.getElementById("div3").style.display = "none";
                else
                    document.getElementById("div3").style.display = "block";
                document.getElementById("div2").style.display = "none";
            }

            function f2() {
                document.getElementById("div1").style.display = "none";
                document.getElementById("div2").style.display = "block";
            }
        </script>
        <script type="text/javascript">
            function view1() {
                document.getElementById("divtop").style.display = "block";
            }

            function CalTaxOld2() {
                document.getElementById("Text1").value = document.getElementById("T3").value;
                CalTaxOld3();
            }

            function CalTaxOld3() {

                document.getElementById("Text3").value = document.getElementById("T3").value - document.getElementById("Text2").value;
            }

            function CalTaxOld() {
                document.getElementById("Text3").value = document.getElementById("T3").value - document.getElementById("Text2").value;
                document.getElementById("Text1").value = document.getElementById("T3").value;
                // alert(document.getElementById("Text3").value);

                var T27 = document.getElementById("Text3").value;
                var age = document.getElementById("D1").selectedIndex;
                var functionReturnValue = 0;
                var NetSal = T27;
                var Tax = 0;
                var Cess = 0;
                var Surcharge = 0;
                var A = 0;
                var B = 0;
                var C = 0;
                var D = 0;
                var Limit = 250000;
                //var age = 0;

                if (age == 1) {
                    Limit = 250000;
                }

                if (age == 2) {
                    Limit = 300000;
                }
                if (age == 3) {
                    Limit = 500000;
                }
                if (NetSal > 0) {
                    if (NetSal > Limit) {
                        if (NetSal <= 300000) {
                            Tax = 0; {
                                if (Tax <= 0)
                                    Tax = 0;
                            }
                        } else if (NetSal >= 300000 && NetSal <= 350000) {
                            Tax = (NetSal - Limit) / 100 * 0;
                            Tax = Tax - 2500; {
                                if (Tax <= 0)
                                    Tax = 0;
                            }
                        } else if (NetSal >= 350000 && NetSal <= 700000) {
                            Tax = (NetSal - Limit) / 100 * 0;

                            {
                                if (Tax <= 0)
                                    Tax = 0;
                            }
                        } else if (NetSal > 500000) {
                            if (NetSal <= 1000000) {
                                A = Limit;
                                B = 500000;
                                C = NetSal - B;
                                Tax = Tax + ((B - A) / 100 * 5);
                                Tax = Tax + ((C / 100) * 20);
                            } else if (NetSal > 1000000) {
                                A = Limit;
                                B = 500000;
                                C = 1000000 - B;
                                D = NetSal - (B + C);
                                Tax = Tax + ((B - A) / 100 * 5);
                                Tax = Tax + ((C / 100) * 20);
                                Tax = Tax + ((D / 100) * 30);
                            }
                        }
                    }

                    document.getElementById("T13").value = (Tax);

                    document.getElementById("T14").value = 0;
                }

                //alert(document.getElementById("T13").value);
                var tot = (document.getElementById("T13").value - 0) + (document.getElementById("T14").value - 0);
                //alert(tot + " tot");
                var perc = (tot / 100) * 4;
                //alert(perc + "perc");

                document.getElementById("T15").value = (perc - 0);

                //alert((perc - 0) + (tot - 0));

                //alert(document.getElementById("T15").value);
                document.getElementById("T17").value = (perc - 0) + (tot - 0);
                //alert(document.getElementById("T17").value + "Total Tax");



                document.getElementById("Text4").value = Math.round(document.getElementById("T17").value);




                if (Math.round(document.getElementById("Text4").value) < Math.round(document.getElementById("Text5").value)) {

                    document.getElementById("regimeold").style.display = "block";
                    document.getElementById("TResult").value = document.getElementById("Text5").value - document.getElementById("Text4").value;
                    document.getElementById("regimenew").style.display = "none";

                } else {
                    document.getElementById("regimenew").style.display = "block";
                    document.getElementById("TResult").value = document.getElementById("Text4").value - document.getElementById("Text5").value;
                    document.getElementById("regimeold").style.display = "none";
                }
            }

            function caltaxold1() {


                var age = document.getElementById("D1").selectedIndex;
                document.getElementById("Text3").value = document.getElementById("T3").value - document.getElementById("Text2").value;

                //alert(document.getElementById("Text3").value);

                var t1 = 0;
                var t2 = 0;
                var t4 = 0;
                var t5 = 0;
                var t6 = 0;
                var t7 = 0;
                var t8 = 0;
                var t3 = document.getElementById("Text3").value;
                var t44 = document.getElementById("Text4");
                var tax1 = 0;
                var tax2 = 0;
                var tax3 = 0;
                var tax4 = 0;
                var tax5 = 0;

                if (age == 1) {
                    if (t3 < 250000) {
                        // nil
                        document.getElementById("Text4").value = 0;
                    }
                    if (t3 > 250001 && t3 < 500000) {

                        t1 = t3 - 250000;

                        t2 = t1 * (5 / 100);

                        t4 = t2 * (4 / 100);



                        document.getElementById("Text4").value = Math.round(t4);

                    }

                    //done
                    if (t3 >= 500001 && t3 < 1000000) {

                        //t1  12500 + 20/100
                        t1 = t3 - 500000;

                        //t2  5/100
                        t2 = 500000 - 250000;

                        //t3  0
                        t5 = 250000;

                        tax1 = t1 * (20 / 100);
                        tax1 = tax1 + 12500;

                        tax2 = tax1 * (4 / 100);
                        document.getElementById("Text4").value = Math.round(tax1 + tax2);


                    }

                    if (t3 > 1000000) {
                        t1 = t3 - 1000000;

                        //t2  --- 20% 12500
                        t2 = 1000000 - 500000;

                        //t4  -- 5/100
                        t4 = 500000 - 250000;

                        tax1 = t4 * (5 / 100);

                        tax2 = t2 * (20 / 100);

                        tax3 = tax2 + 12500;

                        tax4 = t1 * (30 / 100);

                        tax4 = tax4 + 112500;
                        document.getElementById("Text4").value = tax4;

                    }
                }

                if (age == 2) {
                    if (t3 < 300000) {
                        document.getElementById("Text4").value = 0;
                    }

                    if (t3 > 300000 && t3 < 500000) {
                        t1 = t3 - 300000;

                        tax1 = t1 * (5 / 100);

                        tax2 = tax1 * (4 / 100);

                        document.getElementById("Text4").value = Math.round(tax1 + tax2);

                    }

                    if (t3 > 500000 && t3 < 1000000) {
                        // 20/100
                        t1 = t3 - 500000;

                        //t2  5/100
                        t2 = 500000 - 300000;

                        //0
                        t4 = 300000;

                        tax1 = t2 * (5 / 100);

                        tax2 = t1 * (20 / 100);

                        tax3 = tax2 * (4 / 100);

                        tax3 = tax3 + tax1;

                        document.getElementById("Text4").value = Math.round(tax3);

                    }

                    if (t3 > 1000000) {
                        //t1  30/100
                        t1 = t3 - 1000000;

                        // t2  20/100
                        t2 = 1000000 - 500000;

                        //t4 5/100
                        t4 = 500000 - 300000;

                        // t5 0
                        t5 = 300000;

                        tax1 = t1 * (30 / 100);

                        tax5 = tax1 * (4 / 100);

                        tax2 = t2 * (20 / 100);

                        tax3 = t4 * (5 / 100);

                        document.getElementById("Text4").value = Math.round(tax2 + tax5 + tax3);

                    }

                }

            }

            function CalTax() {
                document.getElementById("Text3").value = document.getElementById("T3").value - document.getElementById("Text2").value;
                document.getElementById("Text1").value = document.getElementById("T3").value;
                //  alert(document.getElementById("Text3").value);

                var T27 = document.getElementById("Text1").value;
                var age = document.getElementById("D1").selectedIndex;
                var functionReturnValue = 0;
                var NetSal = T27;
                var Tax = 0;
                var Cess = 0;
                var Surcharge = 0;
                var A = 0;
                var B = 0;
                var C = 0;
                var D = 0;
                var Limit = 50000;
                //var age = 0;

                // age less then 61
                if (age == 1 || age == 2 || age == 3) {
                    Limit = 50000;
                    NetSal = NetSal - Limit;
                    if (NetSal > Limit) {
                        if (NetSal <= 300000) {
                            Tax = 0; {
                                if (Tax <= 0)
                                    Tax = 0;
                            }
                        } else if (NetSal <= 600000) {
                            Tax = (NetSal - 300000) / 100 * 5; {
                                if (Tax <= 0)
                                    Tax = 0;
                            }
                        } else if (NetSal <= 900000) {

                            Tax = (300000 / 100 * 5) + ((NetSal - 600000) / 100 * 10); {
                                if (Tax <= 0)
                                    Tax = 0;
                            }

                        } else if (NetSal <= 1200000) {
                            Tax = (300000 / 100 * 5) + (300000 / 100 * 10) + ((NetSal - 900000) / 100 * 15); {
                                if (Tax <= 0)
                                    Tax = 0;
                            }
                        } else if (NetSal <= 1500000) {
                            Tax = (300000 / 100 * 5) + (300000 / 100 * 10) + (300000 / 100 * 15) + ((NetSal - 1200000) / 100 * 20); {
                                if (Tax <= 0)
                                    Tax = 0;
                            }
                        } else if (NetSal >= 1500001) {
                            Tax = (300000 / 100 * 5) + (300000 / 100 * 10) + (300000 / 100 * 15) + (300000 / 100 * 20) + ((NetSal - 1500000) / 100 * 30); {
                                if (Tax <= 0)
                                    Tax = 0;
                            }
                        }
                    }
                }
                // //age 60 to 80
                // if (age == 2) {
                //     Limit = 50000;
                //     NetSal = NetSal - Limit;
                //     if (NetSal > Limit) {
                //         if (NetSal <= 300000) {
                //             Tax = 0; {
                //                 if (Tax <= 0)
                //                     Tax = 0;
                //             }
                //         } else if (NetSal <= 500000) {
                //             Tax = (NetSal - 300000) / 100 * 5; {
                //                 if (Tax <= 0)
                //                     Tax = 0;
                //             }
                //         } else if (NetSal <= 1000000) {

                //             Tax = (200000 / 100 * 5) + ((NetSal - 500000) / 100 * 20); {
                //                 if (Tax <= 0)
                //                     Tax = 0;
                //             }

                //         } else if (NetSal > 1000000) {
                //             Tax = (200000 / 100 * 5) + (500000 / 100 * 20) + ((NetSal - 1000000) / 100 * 30); {
                //                 if (Tax <= 0)
                //                     Tax = 0;
                //             }
                //         }
                //     }
                // }
                // //age above 80
                // if (age == 3) {
                //     Limit = 50000;
                //     NetSal = NetSal - Limit;
                //     if (NetSal <= 500000) {
                //         Tax = 0; {
                //             if (Tax <= 0)
                //                 Tax = 0;
                //         }
                //     } else if (NetSal <= 1000000) {
                //         Tax = (NetSal - 500000) / 100 * 20; {
                //             if (Tax <= 0)
                //                 Tax = 0;
                //         }
                //     } else if (NetSal > 1000000) {
                //         Tax = (500000 / 100 * 20) + ((NetSal - 1000000) / 100 * 30); {
                //             if (Tax <= 0)
                //                 Tax = 0;
                //         }
                //     }
                // }



                document.getElementById("T13").value = (Tax);

                document.getElementById("T14").value = 0;


                //alert(document.getElementById("T13").value);
                var tot = (document.getElementById("T13").value - 0) + (document.getElementById("T14").value - 0);
                //alert(tot + " tot");
                var perc = (tot / 100) * 4;
                //alert(perc + "perc");

                document.getElementById("T15").value = (perc - 0);

                //alert((perc - 0) + (tot - 0));

                //alert(document.getElementById("T15").value);
                document.getElementById("T17").value = (perc - 0) + (tot - 0);
                //alert(document.getElementById("T17").value + "Total Tax");

                document.getElementById("Text5").value = Math.round(document.getElementById("T17").value);
            }
        </script>
        <style type="text/css">
            .style5 {
                color: #0000CC;
            }
            
            .style7 {
                color: #0000FF
            }
            
            .style8 {
                color: #003300;
                font-weight: bold;
            }
            
            .style9 {
                font-size: 14px;
                font-weight: bold;
                color: #003300;
            }
            
            .style4 {
                color: #006600;
                font-weight: bold;
                font-size: 30px;
                font-family: Verdana, Arial, Helvetica, sans-serif;
            }
            
            .style2 {
                font-size: 16px
            }
            
            #success_message {
                display: none;
            }
            
            .well {
                min-height: 20px;
                padding: 40px;
                margin-bottom: 40px;
                background-color: #337ab70d;
                border: 1px solid #a1a9b114;
                border-radius: 4px;
                -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .05);
                box-shadow: inset 0 1px 1px rgba(0, 0, 0, .05);
            }
            
            .btn-warning {
                color: #fff;
                background-color: #0d2da9;
                border-color: #0a2cab;
                width: 100%;
            }
            
            .btn-warning:hover {
                color: #fff;
                background-color: #1d7e33;
                border-color: #1d7e33;
            }
            
            .mobilecontact1 {
                position: fixed;
                bottom: 0;
                background: #337ab7;
                width: 100%;
                padding: 5px;
                text-align: center;
                z-index: 999;
            }
            
            .mobilecontact1 .btn {
                width: 100% !important;
                border: none !important;
            }
            
            .btn-primary {
                color: #fff;
                background-color: #337ab7;
                border-color: #2e6da4;
            }
        </style>

        <style type="text/css">
            #D1 {
                margin-left: 0px;
            }
            
            #div2 {
                margin-left: 164px;
                width: 74%;
            }
            
            .form-horizontal .control-label {
                padding-top: 7px;
                margin-bottom: 0;
                text-align: left;
                color: #3e3b3b;
                font-family: 'Source Sans Pro', sans-serif;
                font-size: 15px;
            }
            
            .input-group .form-control,
            .input-group-addon,
            .input-group-btn {
                display: table-cell;
                text-align: right;
            }
            
            .hero-banner__heading__file-yourself {
                margin-left: 0px;
                padding: 6px;
            }
            
            .hero-banner__heading__file-yourself p {
                border-radius: 5px;
            }
            
            .hero-banner__heading__efile p {
                border-radius: 5px;
            }
            
            .hero-banner__heading__efile {
                display: inline-block;
                margin: 0 20px;
                padding: 6px;
            }
            
            .hero-banner__heading__file-yourself p {
                height: 32px;
                width: 183px;
                padding: 6px;
                background-color: #34bf49;
                color: #fff;
                text-align: center;
                font-size: 14px;
            }
            
            .hero-banner__heading__file-yourself .back2 {
                background-color: #ff8d01;
            }
            
            .hero-banner__heading__efile p {
                height: 34px;
                width: 181px;
                padding: 8px;
                background-color: #019feb;
                color: #fff;
                text-align: center;
                font-size: 14px;
            }
            
            .hero-banner__heading {
                margin-bottom: 6px;
                margin-top: 6px;
            }
            
            .hero-banner__heading h1 {
                text-align: center;
                font-size: 23px;
                font-weight: bolder;
                color: #0d6f23;
            }
        </style>
    </head>

    <body data-gr-c-s-loaded="true">
        <!-- HEADER SECTION -->
        <section id="new_header">

            <header>
                <div class="col-md-1">
                    <a href="https://www.TaxManager.in/index.html"><img src="https://www.TaxManager.in/images/logo.png"></a>
                </div>
                <nav id="primary_nav_wrap" class="navbar-right">
                    <ul>
                        <li><a href="https://www.TaxManager.in/index.html">Home</a></li>
                        <li><a href="#">Tax e-Filing<span class="caret"></span></a>
                            <ul>
                                <li><a href="https://www.TaxManager.in/UserAc/Register.aspx?From=TaxM&amp;Product=Basic">Basic - Self eFiling</a></li>
                                <li><a href="https://www.TaxManager.in/Efile/efile2.aspx">CA Assisted e-Filing - Let our CA e-File your Taxes</a></li>
                                <li><a href="https://www.TaxManager.in/Efile/itr4.aspx">ITR 4 - Individual Business/ Professionals</a></li>
                                <li><a href="https://www.TaxManager.in/efile/nriefile.aspx">NRI Returns</a></li>
                                <li><a href="https://www.TaxManager.in/tax-refund.html">Tax Refund</a></li>
                                <li><a href="https://www.TaxManager.in/efileITR4.html">ITR V and 26 AS Tax Credit Check</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Tax Management <span class="caret"></span></a>
                            <ul>
                                <li><a href="https://www.TaxManager.in/taxadvisory.html">Tax Advisory</a></li>
                                <li><a href="https://www.TaxManager.in/asp.html">Annual Subscription Package</a></li>
                                <li><a href="https://www.TaxManager.in/ctc-optimiser.html">CTC Optimizer</a></li>
                                <li><a href="https://www.TaxManager.in/itr-rectification.html">Tax Return Rectification</a></li>
                                <li><a href="https://www.TaxManager.in/itr-notice.html">IT Demand/ Notice</a></li>
                                <li><a href="https://www.TaxManager.in/taxhistory.html">Know your Tax History</a></li>
                                <li><a href="https://www.TaxManager.in/pan-apply.html">PAN Application</a></li>
                                <li><a href="https://www.TaxManager.in/digital-signature.html">Digital Signature</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Investments<span class="caret"></span></a>
                            <ul>
                                <li><a href="https://www.TaxManager.in/planyourtaxsavings.html">Plan You Tax Savings</a></li>
                                <li><a href="https://www.TaxManager.in/planyourtaxsavings.html">Start Investing<span class="caret"></span></a></li>
                                <li>
                                    <a href="https://www.TaxManager.in/invest/mutualfunds/invest_mf.html"> <img src="https://www.TaxManager.in/career/images/mutul1.png" style="margin-top:-6px;"> Mutual Funds</a>
                                </li>
                                <li>
                                    <a href="https://www.TaxManager.in/invest/LifeInsurance/invest_li.html"><img src="https://www.TaxManager.in/career/images/life.png" style="margin-top:-2px;"> Life Insurance</a>
                                </li>
                                <li>
                                    <a href="https://www.TaxManager.in/invest/healthinsurance/invest_hi.html"><img src="https://www.TaxManager.in/career/images/health.png" style="margin-top:-6px;"> Health Insurance</a>
                                </li>
                                <li>
                                    <a href="https://www.TaxManager.in/invest/ppf/invest_ppf.html"><img src="https://www.TaxManager.in/career/images/public.png" style="margin-top:6px;"> Public Provident Fund</a>
                                </li>
                                <li>
                                    <a href="https://www.TaxManager.in/invest/nsc/invest_nsc.html"> <img src="https://www.TaxManager.in/career/images/national.png" style="margin-top:-6px;"> National Savings Certificates</a>
                                </li>
                                <li>
                                    <a href="https://www.TaxManager.in/invest/nps/invest_nps.html"><img src="https://www.TaxManager.in/career/images/nps.png" style="margin-top:-6px;"> NPS</a>
                                </li>
                                <li>
                                    <a href="https://www.TaxManager.in/invest/others/invest_others.html"> <img src="https://www.TaxManager.in/career/images/other.png" style="margin-top:-6px;"> Other's</a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="#">NRIs <span class="caret"></span></a>
                            <ul>
                                <li><a href="https://www.TaxManager.in/nri_returns.html">NRI Tax Returns</a></li>
                                <li><a href="https://www.TaxManager.in/nri_taxmanagement.html">NRI Tax Management</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Business<span class="caret"></span></a>
                            <ul>
                                <li><a href="https://www.TaxManager.in/corporate-plan.html">Employee Care e-Form 16 and Payrolls</a></li>
                                <li><a href="https://www.TaxManager.in/gst-services.html">GST Services</a></li>
                                <li><a href="https://www.TaxManager.in/startup-program.html">Startup Program</a></li>
                                <li><a href="https://www.TaxManager.in/accounting-management.html">Accounting Management</a></li>
                                <li><a href="https://www.TaxManager.in/tds-taxmanagement.html">TDS and Tax Management</a></li>
                                <li><a href="https://www.TaxManager.in/compliancemgmt.html">Compliance Management</a></li>
                                <li><a href="https://www.TaxManager.in/companyregistration.html">Company Registration</a></li>
                            </ul>
                        </li>
                        <li><a href="https://www.TaxManager.in/KnowledgeBank/index.html">Knowledge Bank<span class="caret"></span></a></li>
                        <li style="background-color: #1D7E33 !important;"><a style="color:#fff;" href="https://www.TaxManager.in/career/index.html">We're Hiring<span class="caret"></span></a></li>
                        <li style="background-color: #337ab7!important;"><a style="color:#fff;" href="https://www.TaxManager.in/Login/Login.aspx">Login / Register</a></li>
                    </ul>
                </nav>
                <!--  mobile responsive -->
                <nav class="navbar  mn">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#game-navbar-collapse" aria-expanded="false">
                            <span class="icon-bar" style="background: #212121"></span>
                            <span class="icon-bar" style="background: #212121"></span>
                            <span class="icon-bar" style="background: #212121"></span>
                        </button>
                        </div>
                        <div class="collapse navbar-collapse" id="game-navbar-collapse" aria-expanded="false">
                            <ul class="nav navbar-nav">
                                <li class="active">
                                    <a href="../index.html"><img src="https://www.TaxManager.in/images/home.png">&nbsp;&nbsp;Home</a>
                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><img src="https://www.TaxManager.in/images/file.png">&nbsp;&nbsp;Tax-eFiling
                                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="https://www.TaxManager.in/UserAc/Register.aspx?From=TaxM&amp;Product=Basic">Basic - Self eFiling</a></li>
                                        <li><a href="https://www.TaxManager.in/Efile/efile2.aspx">CA Assisted e-Filing - Let our CA e-File your Taxes</a></li>
                                        <li><a href="https://www.TaxManager.in/Efile/itr4.aspx">ITR 4 - Individual Business/ Professionals</a></li>
                                        <li><a href="https://www.TaxManager.in/efile/nriefile.aspx">NRI Returns</a></li>
                                        <li><a href="https://www.TaxManager.in/tax-refund.html">Tax Refund</a></li>
                                        <li><a href="https://www.TaxManager.in/efileITR4.html">ITR V and 26 AS Tax Credit Check</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><img src="https://www.TaxManager.in/images/manager1.png">&nbsp;&nbsp;Tax Management<span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="https://www.TaxManager.in/taxadvisory.html">Tax Advisory</a></li>
                                        <li><a href="https://www.TaxManager.in/asp.html">Annual Subscription Package</a></li>
                                        <li><a href="https://www.TaxManager.in/ctc-optimiser.html">CTC Optimizer</a></li>
                                        <li><a href="https://www.TaxManager.in/itr-rectification.html">Tax Return Rectification</a></li>
                                        <li><a href="https://www.TaxManager.in/itr-notice.html">IT Demand/ Notice</a></li>
                                        <li><a href="https://www.TaxManager.in/taxhistory.html">Know your Tax History</a></li>
                                        <li><a href="https://www.TaxManager.in/pan-apply.html">PAN Application</a></li>
                                        <li><a href="https://www.TaxManager.in/digital-signature.html">Digital Signature</a></li>
                                    </ul>
                                </li>

                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><img src="https://www.TaxManager.in/images/earnings.png">&nbsp;&nbsp;Investment<span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="https://www.TaxManager.in/planyourtaxsavings.html">Plan You Tax Savings</a></li>
                                        <li><a href="https://www.TaxManager.in/planyourtaxsavings.html">Start Investing<span class="caret"></span></a></li>
                                        <li><a href="https://www.TaxManager.in/invest/mutualfunds/invest_mf.html">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="https://www.TaxManager.in/career/images/mutul1.png" style="margin-top:-6px;"> &nbsp;Mutual Funds</a></li>
                                        <li><a href="https://www.TaxManager.in/invest/LifeInsurance/invest_li.html">  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="https://www.TaxManager.in/career/images/life.png" style="margin-top:-2px;"> &nbsp; Life Insurance</a></li>
                                        <li><a href="https://www.TaxManager.in/invest/healthinsurance/invest_hi.html">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="https://www.TaxManager.in/career/images/health.png" style="margin-top:-6px;"> &nbsp;Health Insurance</a></li>
                                        <li><a href="https://www.TaxManager.in/invest/ppf/invest_ppf.html">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="https://www.TaxManager.in/career/images/public.png" style="margin-top:6px;">&nbsp; Public Provident Fund</a></li>
                                        <li><a href="https://www.TaxManager.in/invest/nsc/invest_nsc.html">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img src="https://www.TaxManager.in/career/images/national.png" style="margin-top:-6px;">&nbsp;  National Savings Certificates</a></li>
                                        <li><a href="https://www.TaxManager.in/invest/nps/invest_nps.html">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="https://www.TaxManager.in/career/images/nps.png" style="margin-top:-6px;">&nbsp; NPS</a></li>
                                        <li><a href="https://www.TaxManager.in/invest/others/invest_others.html">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img src="https://www.TaxManager.in/career/images/other.png" style="margin-top:-6px;">&nbsp; Othres</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><img src="https://www.TaxManager.in/images/fc.png">&nbsp;&nbsp;NRIs
                                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="https://www.TaxManager.in/nri_returns.html">NRI Tax Returns</a></li>
                                        <li><a href="https://www.TaxManager.in/nri_taxmanagement.html">NRI Tax Management</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><img src="https://www.TaxManager.in/images/group.png">&nbsp;&nbsp;Business
                                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="https://www.TaxManager.in/corporate-plan.html">Employee Care e-Form 16 and Payrolls</a></li>
                                        <li><a href="https://www.TaxManager.in/gst-services.html">GST Services</a></li>
                                        <li><a href="https://www.TaxManager.in/startup-program.html">Startup Program</a></li>
                                        <li><a href="https://www.TaxManager.in/accounting-management.html">Accounting Management</a></li>
                                        <li><a href="https://www.TaxManager.in/tds-taxmanagement.html">TDS and Tax Management</a></li>
                                        <li><a href="https://www.TaxManager.in/compliancemgmt.html">Compliance Management</a></li>
                                        <li><a href="https://www.TaxManager.in/companyregistration.html">Company Registration</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="https://www.TaxManager.in/KnowledgeBank/index.html"><img src="https://www.TaxManager.in/images/manager1.png">&nbsp;&nbsp;Knowledge Bank<span class="caret"></span></a>
                                </li>
                                <li style="background-color: #1D7E33 !important;">
                                    <a href="https://www.TaxManager.in/career/index.html" style="color:#fff;">&nbsp;&nbsp;We're Hiring<span class="caret"></span></a>
                                </li>
                                <li style="background-color: #337ab7 !important;">
                                    <a href="../Login/login.html" style="color:#fff;"><img src="https://www.TaxManager.in/images/sign.png">&nbsp;&nbsp;Login / Register</a>
                                </li>
                            </ul>

                        </div>
                    </div>
                </nav>

                <!--  mobile responsive  end here-->
            </header>

            <!-- support div bottom -->
            <div class="container mobilecontact1" id="mcontact" style="width: 100%;padding: 6px;display:none;">

                <div class="dropup">
                    <div class="row">
                        <div class="hero-banner__heading">


                        </div>
                        <div class="col-md-4" id="div1"> </div>

                        <div class="col-md-4 " id="yourself">
                            <div class="hero-banner__heading__file-yourself">

                                <p style="float: center;"> <a href="https://www.taxmanager.in/efile/aspsubscribe.aspx">Save Max Tax 23-24?</a>

                                </p>


                                <div class="tag-line" style="padding-top: 0px;">

                                </div>
                            </div>
                        </div>



                        <div class="col-md-4" id="div2"></div>

                    </div>

                </div>
            </div>


            <!-- support us -->

        </section>

        <!-- /HEADER SECTION -->

        <section class="sec-breadcrumb" style="height:auto;">
            <div class="container-row">
                <div class="col-md-12">

                    <h1 class="taxadvisory-title" style="padding-top: 45px;    padding-bottom: 25px;"><span class="style4">Tax  <span style="color: #0d30a9;">Calculator </span></span>
                    </h1>
                    <h6 align="center" style="padding-bottom: 45px;color:#0d30a9">Comparison IT Calculator Financial Year 2023 - 24</h6>

                </div>


            </div>

            <ul id="social_side_links">
                <li>
                    <a style="background-color: #3c5a96;" href="https://www.facebook.com/efileitr" target="_blank"><img src="images/facebook-icon.png" alt="" /></a>
                </li>
                <li>
                    <a style="background-color: #1dadeb;" href="https://mobile.twitter.com/taxmanagerindia" target="_blank"><img src="images/twitter-icon.png" alt="" /></a>
                </li>
                <li>
                    <a style="background-color: #1178b3;" href="https://www.linkedin.com/company/taxmanager-in/mycompany/?viewAsMember=true" target="_blank"><img src="images/linkedin-icon.png" alt="" /></a>
                </li>
                <li>
                    <a style="background-color: #CC2020;" href="#" target="_blank"><img src="images/youtube-icon.png" alt="" /></a>
                </li>


            </ul>



            <div class="clr"></div>
        </section>


        <section id="" style="width:100%;margin-bottom: 0px;">

            <div class="container">

                <div class="row">

                    <div class="col-md-2">


                    </div>

                    <div class="col-md-8">

                        <div class="">

                            <form class="well form-horizontal">
                                <fieldset>



                                    <div class="form-group">
                                        <label class="col-md-5 control-label">Age</label>
                                        <div class="col-md-6 selectContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                <select name="D1" id="D1" class="form-control selectpicker">
      <option  selected  value=""  >Select Age</option>
    <option value="below 60">Below 60 Years (Normal Citizen)</option>
							<option value="More than 60" >Between 60 Years to 79 Years (Senior Citizen)</option>
							<option > Above 79 Years (Super Senior Citizen)</option>
     
    </select>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Text input-->

                                    <div class="form-group">
                                        <label class="col-md-5 control-label">Estimated Annual Income #</label>
                                        <div class="col-md-6 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-rupee"></i></span>
                                                <input type="text" name="T3" id="T3" size="20" value="0" onfocusout="CalTaxOld2()" onkeypress='return event.charCode >= 48 && event.charCode <= 57' class="form-control" />
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-5 control-label">Less:- Exemptions / Deductions*</label>
                                        <div class="col-md-6 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-rupee"></i></span>
                                                <input type="text" name="T3" id="Text2" onfocusout="CalTaxOld3()" size="20" value="0" onkeypress='return event.charCode >= 48 && event.charCode <= 57' class="form-control" />
                                            </div>
                                        </div>
                                    </div>


                                    <!-- Text input-->

                                    <div class="form-group">
                                        <label class="col-md-5 control-label">Net Taxable Income as per Old Regime</label>
                                        <div class="col-md-6 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-rupee"></i></span>
                                                <input type="text" name="T3" id="Text3" size="20" value="0" onkeypress='return event.charCode >= 48 && event.charCode <= 57' class="form-control" />
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Text input-->
                                    <a name="C4"></a>
                                    <div class="form-group">
                                        <label class="col-md-5 control-label">Net Taxable Income as per New Regime</label>
                                        <div class="col-md-6 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-rupee"></i></span>
                                                <input type="text" name="T3" id="Text1" size="20" value="0" onkeypress='return event.charCode >= 48 && event.charCode <= 57' placeholder="" class="form-control" />
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Text input-->

                                    <div class="form-group">
                                        <label class="col-md-2 control-label"></label>
                                        <div class="col-md-7">
                                            <a href="#C4">
                                                <input type="button" onClick="return fvalidation(); " value="Compare Tax Under Old & New Regime" class="btn btn-warning" style="margin-top: 23px;margin-bottom: 23px;font-weight: 900;">
                                            </a>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-5 control-label">Tax Payble as per Old Regime</label>
                                        <div class="col-md-6 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-rupee"></i></span>
                                                <input type="text" name="T3" id="Text4" size="20" value="0" onkeypress='return event.charCode >= 48 && event.charCode <= 57' placeholder="" class="form-control" />
                                            </div>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-md-5 control-label">Tax Payble as per New Regime</label>
                                        <div class="col-md-6 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-rupee"></i></span>
                                                <input type="text" name="T3" id="Text5" size="20" value="0" onkeypress='return event.charCode >= 48 && event.charCode <= 57' class="form-control" />
                                            </div>
                                        </div>
                                    </div>






                                    <!-- Button -->



                                    <div class="form-group">
                                        <label class="col-md-5 control-label">Your Tax Benefit as per <div id="regimeold" style="display:none;"> 
      <asp:Label runat="server" ID="lblold" Text="Old Regime is"></asp:Label> </div><div id="regimenew" style="display:none;"> <asp:Label runat="server" ID="lblnew" Text="New Regime is"></asp:Label> </div></label>

                                        <div class="col-md-6 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-rupee"></i></span>
                                                <input type="text" id="TResult" name="TResult" class="form-control" onkeypress='return event.charCode >= 48 && event.charCode <= 57' />
                                            </div>
                                        </div>


                                    </div>


                                    <div class="form-group">
                                        <label class="col-md-5 control-label">No Surcharge is considered for Tax Calculation</label>



                                    </div>
                        </div>
                    </div>
                    </fieldset>
                    </form>
                </div>





            </div>


            <div class="col-md-2">


            </div>

            </div>


            </div>




        </section>


        <!-- /CONTENT SECTION -->
        <!-- FOOTER SECTION -->
        <section class="footer">
            <footer>
                <div class="container-fluid">
                    <div class=row>
                        <div class="container" style="border-top: 5px solid #cdcfda;">
                            <div class="row">
                                <!--  service  link start here -->

                                <div class="col-md-3 col-sm-3 col-lg-3 ">
                                    <div class="footer__services-list">
                                        <h4>Services</h4>
                                        <ul>

                                            <li><a href="https://www.TaxManager.in/Individuals-Plan.html">eFile Tax Returns</a></li>
                                            <li><a href="https://www.TaxManager.in/tap.html">Tax Assessment Protect</a></li>
                                            <li><a href="https://www.TaxManager.in/mytaxquery.html">Tax Consulting</a></li>
                                            <li><a href="https://www.TaxManager.in/home.html">Tax Refund</a></li>
                                            <li><a href="https://www.TaxManager.in/itr_rectification.html">Tax Rectification</a></li>
                                            <li><a href="https://www.TaxManager.in/home.html">Tax Intimations</a></li>
                                            <li><a href="https://www.TaxManager.in/home.html">ITR V Request</a></li>
                                            <li><a href="https://www.TaxManager.in/home.html">26 AS (Tax Credit)</a></li>
                                            <li><a href="https://www.TaxManager.in/asp.html">Tax Planning</a></li>
                                            <li><a href="https://www.TaxManager.in/ctcoptimiser.html">CTC Optimizer</a></li>
                                            <li><a href="https://www.TaxManager.in/panapply.html">PAN/ TAN Request</a></li>
                                            <li><a href="https://www.TaxManager.in/asp.html">Annual Subscription Package</a></li>
                                            <li><a href="https://www.TaxManager.in/digital_signature.html">Digital Signature</a></li>

                                        </ul>

                                    </div>

                                </div>

                                <!--  service  link end here -->

                                <!--  I am ........ start here -->
                                <div class="col-md-3 col-sm-3 col-lg-3">

                                    <div class="footer__services-list">
                                        <h4>I am...</h4>
                                        <ul>
                                            <li> <a href="https://www.TaxManager.in/tms_sc.html">Salaried Individual</a></li>
                                            <li> <a href="https://www.TaxManager.in/tms_hni.html">High Net Worth Individual</a></li>
                                            <li> <a href="https://www.TaxManager.in/tms_business_class.html">Proprietor</a></li>
                                            <li> <a href="https://www.TaxManager.in/tms_nri.html">Non Resident Indian</a></li>
                                            <li> <a href="https://www.TaxManager.in/TaxManager-eFilingGateway.html">CA/ Tax Professional</a></li>
                                            <li> <a href="https://www.TaxManager.in/Corporate-Plan.html">Corporate Company</a></li>

                                        </ul>

                                    </div>

                                </div>

                                <!--  I am ........ end  here -->

                                <!--  tools start here -->
                                <div class="col-md-3 col-sm-3 col-lg-3">

                                    <div class="footer__services-list">
                                        <h4>Tools</h4>
                                        <ul>
                                            <li>Knowledge Bank</li>
                                            <li>Tax Estimator Calculator</li>
                                            <li>Refund Status</li>
                                            <li>Refund Status</li>
                                            <li>ITRV Status</li>
                                            <li>Tax Return Process</li>
                                            <li>Frequently Asked </li>
                                            <li>Questions </li>

                                        </ul>

                                    </div>

                                </div>

                                <!--  tools end here -->

                                <!--  Solutions start here -->
                                <div class="col-md-3 col-sm-3 col-lg-3">

                                    <div class="footer__services-list">
                                        <h4>Solutions</h4>
                                        <ul>
                                            <li>Tax Returns - Basic - Self efiling</li>
                                            <li>Tax Returns - Professional Help</li>
                                            <li>Tax Returns - Complete Solutions</li>
                                            <li>Tax Returns - Efile by Email</li>
                                            <li>Tax Returns - ITR 4 Self Employed</li>
                                            <li>Tax Returns - NRI</li>
                                            <li>CTC Optimizer </li>
                                            <li>Tax Packages </li>

                                        </ul>

                                    </div>

                                </div>

                                <!--  Solutions end here -->

                            </div>

                        </div>

                    </div>

                </div>

                <!-- footer bottam  start here-->

                <div class="container-fluid" style="margin-bottom: 100px;">
                    <div class="row">
                        <div class="container">
                            <div class="row">
                                <div class="footer-bottom col-md-12">

                                    <ul class="socials">
                                        <li>Follow us on:</li>
                                        <li>
                                            <a href="#"><img src="images/icon-facebook.png" width="20" height="20" alt=""></a>
                                        </li>
                                        <li>
                                            <a href="#"><img src="images/icon-twitter.png" width="20" height="20" alt=""></a>
                                        </li>
                                        <li>
                                            <a href="#"><img src="images/icon-linkedin.png" width="20" height="20" alt=""></a>
                                        </li>
                                        <li>
                                            <a href="#"><img src="images/icon-youtube.png" width="20" height="20" alt=""></a>
                                        </li>
                                    </ul>

                                </div>

                                <div class="col-md-10">
                                    <ul class="footer-links">
                                        <li><a href="index.html">Home</a></li>
                                        <li><span>|</span></li>
                                        <li><a href="https://www.TaxManager.in/About_Us.html">About Us</a></li>
                                        <li><span>|</span></li>
                                        <li><a href="https://www.TaxManager.in/Privacy-Policy.html">Privacy Policy</a></li>
                                        <li><span>|</span></li>
                                        <li><a href="https://www.TaxManager.in/Inmedia.html">In the Media</a></li>
                                        <li><span>|</span></li>
                                        <li><a href="https://www.TaxManager.in/Legal_Disclaimer.html">Legal Disclaimer</a></li>
                                        <li><span>|</span></li>
                                        <li><a href="https://www.TaxManager.in/FAQs.html">FAQs</a></li>
                                        <li><span>|</span></li>
                                        <li><a href="https://www.TaxManager.in/Terms_Conditions.html">Terms &amp; Conditions</a></li>
                                        <li><span>|</span></li>
                                        <li><a href="https://www.TaxManager.in/home.html">Site Map</a></li>
                                        <li><span>|</span></li>
                                        <li><a href="https://www.TaxManager.in/home.html">Security</a></li>
                                    </ul>

                                    <p class="Copyrights">Copyright @ <span>Rising Advisory Services Private Limited.</span></p>
                                </div>

                                <div class="col-md-2">

                                    <ul class="cards">
                                        <li>
                                            <a target="_blank" href="ereturn_letter.pdf"><img src="images/E_Return.png" alt="Efiling Intermediary" width="51" height="51" border="0"></a>
                                        </li>
                                        <li></li>
                                    </ul>

                                </div>
                            </div>

                        </div>

                    </div>

                </div>

                <!-- footer bottom  start here-->

                </div>

            </footer>

        </section>
        <!-- /FOOTER SECTION -->
        <input type="text" style="display:none;" name="T13" id="T13" size="20" value="0" onchange="otherchange()" style="background-color:#F0F0F0;border:none; font-weight: 700; font-size: 10pt;text-align:right; font-weight: 700; " value="0 " onkeypress='return event.charCode >= 48 && event.charCode <= 57'>

        <input type="text " style="display:none; " name="T14" id="T14" size="20 " onchange="otherchange() " style="background-color:#F0F0F0;border:none; font-weight: 700; font-size: 10pt;text-align:right;  font-weight: 700; " value="0 " value="0 " style="text-align:right; "
            onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
        <input type="text " style="display:none; " name="T15" id="T15" onchange="fillother() " size="20 " style="background-color:#F0F0F0;border:none; font-weight: 700; font-size: 10pt;text-align:right; font-weight: 700; " value="0 " value="0 " style="text-align:right; "
            onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
        <input type="text " style="display:none; " name="T17" id="T17" size="20 " style="background-color:#F0F0F0;border:none; font-weight: 700; font-size: 10pt;text-align:right; font-weight: 700; " value="0 " onkeypress='return event.charCode >= 48 && event.charCode <= 57'>

    </body>



    <script type="text/javascript ">
        $('.Show').click(function() {
            $('#target').show(500);
            $('.Show').hide(0);
            $('.Hide').show(0);
        });
        $('.Hide').click(function() {
            $('#target').hide(500);
            $('.Show').show(0);
            $('.Hide').hide(0);
        });
        $('.toggle').click(function() {
            $('#target').toggle('slow');
        });
    </script>

    <script type="text/javascript ">
        function hide(target) {
            document.getElementById(target).style.display = 'none';
        }
    </script>

    </html>