<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TaxCalculator1920.aspx.cs" Inherits="TaxCalculator" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <meta charset="UTF-8">

        <script type="text/javascript">

            function IsNumeric(strString)
            //  check for valid numeric strings	
            {
                var strValidChars = "0123456789";
                var strChar;
                var blnResult = true;
                strChar = strString.charAt(0);
                if (strChar != "9" && strChar != "8" && strChar != "7") {
                    return false;
                }

                /*strChar = strString.charAt(1);
                if (strChar == "1") {
                  //  return false
                }*/

                if (strString.length == 0) return false;

                //  test strString consists of valid characters listed above
                for (i = 0; i < strString.length && blnResult == true; i++) {
                    strChar = strString.charAt(i);
                    if (strValidChars.indexOf(strChar) == -1) {
                        blnResult = false;
                    }
                }
                return blnResult;
            }
            b1 = true;
            function validate1() {
                var c1 = document.getElementById("T1");

                if (c1.value == "") {

                    alert("Please enter your complete Name ");
                    var textbox = document.getElementById("T1");
                    textbox.focus();
                    b1 = false;
                    return false;
                }


                var c1 = document.getElementById("T2");
                //var l1 = document.getElementById("VT1");

                if (c1.value == "") {

                    alert("Please enter Mobile Number");
                    var textbox = document.getElementById("T2");
                    textbox.focus();
                    b1 = false;
                    return false;
                }

                if (c1.value.length < 10) {
                    alert("Please enter valid 10 digits mobile no.");
                    var textbox = document.getElementById("T2");
                    textbox.focus();
                    b1 = false;
                    return false;
                }

                if (!IsNumeric(c1.value)) {
                    alert("Please enter valid 10 digits mobile no. Mobile number should start with 9 or 8 or 7");
                    var textbox = document.getElementById("T2");
                    textbox.focus();
                    b1 = false;
                    return false;
                }

                var c1 = document.getElementById("T20");
                //var l1 = document.getElementById("VT1");

                if (c1.value == "") {

                    alert("Please enter EMail");
                    var textbox = document.getElementById("T20");
                    textbox.focus();
                    b1 = false;
                    return false;
                }


                if (!checkEmail()) {
                    b1 = false;
                    return false;
                }

                var c1 = document.getElementById("D1");

                if (c1.value == "Select Age") {

                    alert("Please choose Age");
                    b1 = false;
                    return false;
                }

                document.getElementById("panel").style.display = "block";


            }

        </script>
        <script type="text/javascript">

            function fill() {

                var txt1 = document.getElementById("T3").value - 0;

                var txt2 = document.getElementById("T4").value - 0;

                var txt3 = document.getElementById("T5").value - 0;

                var txt4 = document.getElementById("T6").value - 0;

                var txt5 = document.getElementById("T7").value - 0;


                document.getElementById("T8").value = txt1 + txt2 + txt3 + txt4 + txt5;

                if (document.getElementById("T8").value == "0") {
                    alert("One of the Income Source is required, Income cannot be NIL")

                    return;

                }

                document.getElementById("T27").value = document.getElementById("T8").value;

            }
            function fillanother() {



                var txt1 = document.getElementById("T19").value;

                if (txt1 >= 150000) {
                    txt1 = document.getElementById("T19").value = 150000;

                }

                var txt2 = document.getElementById("T28").value - 0;


                if (txt2 >= 200000) {
                    txt2 = document.getElementById("T28").value = 200000;
                }

                var txt3 = document.getElementById("T21").value - 0;

                document.getElementById("T22").value = Number(+txt1) + Number(+txt2) + Number(+txt3);

                document.getElementById("T27").value = document.getElementById("T8").value - document.getElementById("T22").value;


                if (document.getElementById("T27").value < 0)
                    document.getElementById("T27").value = 0;

            }

            function netfill() {

                fillanother();

                if (document.getElementById("T27").value == 0) {
                    alert("One of the Income Source is required, Income cannot be NIL");

                    return false;

                }

                return true;
            }

            function otherchange() {
                var tot = document.getElementById("T13").value + document.getElementById("T14").value - 0;

                var perc = (3 * tot) / 100;


                document.getElementById("T17").value = perc + tot - 0;
            }
        </script>
        <script>

            function CalTax(T27, age) {

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
                ///var age = 0;

                if (age == 1) { Limit = 250000; }

                if (age == 2) { Limit = 300000; }
                if (age == 3) { Limit = 500000; }
                if (NetSal > 0) {
                    if (NetSal > Limit) {
                        if (NetSal <= 300000) {
                            Tax = 0;
                            {
                                if (Tax <= 0)
                                    Tax = 0;
                            }
                        }
                        else if (NetSal >= 300000 && NetSal <= 350000) {
                            Tax = (NetSal - Limit) / 100 * 0;
                            Tax = Tax - 2500;
                            {
                                if (Tax <= 0)
                                    Tax = 0;
                            }
                        }
                        else if (NetSal >= 350000 && NetSal <= 500000) {
                            Tax = (NetSal - Limit) / 100 * 0;

                            {
                                if (Tax <= 0)
                                    Tax = 0;
                            }
                        }
                        else if (NetSal > 500000) {
                            if (NetSal <= 1000000) {
                                A = Limit;
                                B = 500000;
                                C = NetSal - B;
                                Tax = Tax + ((B - A) / 100 * 5);
                                Tax = Tax + ((C / 100) * 20);
                            }
                            else if (NetSal > 1000000) {
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

                    document.getElementById("T13").value = Math.round(Tax);
                    //alert(Tax + "Tax");
                    //alert(NetSal);

                    if (NetSal < 5000000)

                        Surcharge = 0;
                    else if (NetSal > 5000000 && NetSal < 10000000) {
                        Surcharge = (Tax / 100) * 10;
                        // alert(Surcharge + "Surcharge");
                    }
                    else if (NetSal > 10000000) {
                        Surcharge = (Tax / 100) * 15;
                        //alert(Surcharge + "Surcharge");


                    }

                    document.getElementById("T14").value = Math.round(Surcharge);
                    //alert(Surcharge + "Surcharge");

                }


                var tot = (document.getElementById("T13").value - 0) + (document.getElementById("T14").value - 0);
                //alert(tot + " tot");
                var perc = (tot / 100) * 4;
                //alert(perc + "perc");

                document.getElementById("T15").value = (perc - 0);

                document.getElementById("T17").value = (perc - 0) + (tot - 0);
                //alert(document.getElementById("T17").value + "Total Tax");

                document.getElementById("T15").value = Math.round(document.getElementById("T15").value);
                document.getElementById("T17").value = Math.round(document.getElementById("T17").value);

            }


            function hideview3() {

                if (document.getElementById("T27").value == "0") {
                    var textbox = document.getElementById("T19");
                    textbox.focus();

                    return false;

                }
                if (document.getElementById("T27").value == "0") {
                    return false;

                }
                else {
                    //document.getElementById("div4").style.display = "block";
                    //var d2 = document.getElementById("div4");

                    //if (d2.style.display == "none") {
                    //    d2.style.display = "block";

                    //}
                    //else {
                    //    d2.style.display = "none";

                    //}

                }



                var txtamt = document.getElementById("T27").value;

                var age = document.getElementById("D1").selectedIndex;

                CalTax(txtamt, age);
                document.getElementById("panel2").style.display = "block";
                var Name = document.getElementById("T1").value;
                var Mobile = document.getElementById("T2").value;
                var eMail = document.getElementById("T20").value;
                var Age = document.getElementById("D1").value;

                var Salary = document.getElementById("T3").value;
                var HP = document.getElementById("T4").value;
                var BP = document.getElementById("T5").value;
                var CG = document.getElementById("T6").value;
                var OtherSrc = document.getElementById("T7").value;
                var GTI = document.getElementById("T8").value;
                var Ded80C = document.getElementById("T19").value;
                var IntHP = document.getElementById("T28").value;
                var Ded80Others = document.getElementById("T21").value;
                var TotDed = document.getElementById("T22").value;
                var NTI = document.getElementById("T27").value;
                var BasTax = document.getElementById("T13").value;
                var SC = document.getElementById("T14").value;
                var EC = document.getElementById("T15").value;
                var TotTax = document.getElementById("T17").value;

                fields = Name + "',''," + Mobile + ",'" + eMail + "','" + Age + "'," + Salary + "," + HP + "," + BP + "," + CG + "," + OtherSrc + "," + GTI + "," +
                    Ded80C + "," + IntHP + "," + Ded80Others + "," + TotDed + "," + NTI + "," + BasTax + "," + SC + "," +
                    EC + "," + TotTax;

                if (document.getElementById("txtlbl").value != "") {
                    fields = fields + "," + document.getElementById("txtlbl").value;
                    PageMethods.UpdateData(fields, aftersuccess, afterfail);
                }
                if (document.getElementById("txtlbl").value == "") {

                    PageMethods.Process(fields, onsuccess, onfail);
                }



            }

            function onsuccess(msg) {
                alert("Thankyou for using TaxManager Tax Calculator. Your records have been updated with us");
                document.getElementById("txtlbl").value = msg;


                window.scrollBy(0, 800);

                var textbox = document.getElementById("T1");
                textbox.focus();

            }

            function onfail(err) {
                alert(err);
            }
            function aftersuccess(msg) {
                alert(msg);

            }

            function afterfail(err) { alert(err); }
        </script>

        <script>

            function hideview2() {

                if (document.getElementById("T8").value == "0") {
                    var textbox = document.getElementById("T3");
                    textbox.focus();
                    return false;

                }
                if (document.getElementById("T8").value == "0") {
                    return false;

                }

                document.getElementById("panel1").style.display = "block";
            }
        </script>


        <script>
            function checkEmail() {

                var email = document.getElementById('T20');
                var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

                if (!filter.test(email.value)) {
                    alert('Please provide a valid email address');
                    email.focus;
                    // alert("Not a valid Email");
                    return false;
                }

                return true;
            }
        </script>

        <title>Tax Calculator</title>
        <link rel="icon" type="image/png" href="http://www.taxmanager.in/images/favicon.ico" />
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="Multifolder/bootstrap/css/custom.css" />
        <link rel="stylesheet" href="Multifolder/css/career.css" />
        <link rel="stylesheet" href="Multifolder/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" href="Multifolder/bootstrap/js/custom.js" />
        <link rel="stylesheet" href="Multifolder/font/css/font-awesome.min.css" />


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

        <script src="Multifolder/bootstrap/js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function () {


                $("#flip").click(function () {
                    $("#panel").slideToggle("slow");
                });
            });

            $(document).ready(function () {
                $("#flip1").click(function () {
                    $("#panel1").slideToggle("slow");
                });
            });

            $(document).ready(function () {
                $("#flip2").click(function () {
                    $("#panel2").slideToggle("slow");
                });
            });




        </script>

        <style type="text/css">
            .popover {

                color: #fff;
                font-weight: bold;
                background-color: #03A9F4;

            }

            .popover.top>.arrow:after {

                border-top-color: #03A9F4;

            }

            .popover.top {
                left: 50px !important;
            }

            #panel {
                padding: 50px;
                display: none;
            }

            #panel1 {
                padding: 50px;
                display: none;
            }

            #panel2 {
                padding: 50px;
                display: none;
            }
        </style>

    </head>

    <body>
        <form name="form1" method="post" action="Login.aspx" id="form1">
            <div>
                <input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
                <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
                    value="/wEPDwUKMTc1MDI2ODMxNGQYAQUeX19Db250cm9sc1JlcXVpcmVQb3N0QmFja0tleV9fFgEFCUNoZWNrQm94Mf6Xjnph1aYKeIgehANyZavyK9dg" />
            </div>

            <script type="text/javascript">
                //<![CDATA[
                var theForm = document.forms['form1'];
                if (!theForm) {
                    theForm = document.form1;
                }
                function __doPostBack(eventTarget, eventArgument) {
                    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
                        theForm.__EVENTTARGET.value = eventTarget;
                        theForm.__EVENTARGUMENT.value = eventArgument;
                        theForm.submit();
                    }
                }
                //]]>
            </script>


            <script
                src="/WebResource.axd?d=l6t4mvcwPzkeTT9YsIzKi0Zx6YY-J_Z3TxKR35RVLhz1EouUwQkcT9nyjSn_9ekaQPEUp-tlftKWckaEKw2OvqRjmns1&amp;t=636271869501517547"
                type="text/javascript"></script>


            <script
                src="/WebResource.axd?d=GCdFGDjaitlknj0xNWbvhKpNGAk8yfSyB2k6E1vjoH5kBuFYa9dYFZbfAIrsWwEQLm0szDOXuCuLgYPmWdP6tU_CaO81&amp;t=636271869501517547"
                type="text/javascript"></script>
            <div>

                <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="1806D926" />
                <input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
                <input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
                <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
                    value="/wEWBQKbro22BgKz8dy8BQK1qbSRCwKC5Ne7CQKM54rGBlXGZ2a/wPOmaVfywOhPhOWxCMdz" />
            </div>


            <!-- Header - part   -->
            <header>
                <div class="col-md-1">
                    <a href="index.html"><img src="http://www.taxmanager.in/images/logo.png"></a>
                </div>
                <nav id="primary_nav_wrap" class="navbar-right">
                    <ul>
                        <li><a href="http://www.taxmanager.in/index.html">Home</a></li>
                        <li><a href="#">Tax e-Filing<span class="caret"></span></a>
                            <ul>
                                <li><a href="http://www.taxmanager.in/UserAc/Register.aspx?From=TaxM&Product=Basic">Basic
                                        - Self eFiling</a></li>
                                <li><a href="http://www.taxmanager.in/Efile/efile2.aspx">CA Assisted e-Filing - Let our
                                        CA e-File your Taxes</a></li>
                                <li><a href="http://www.taxmanager.in/Efile/itr4.aspx">ITR 4 - Individual Business/
                                        Professionals</a></li>
                                <li><a href="http://www.taxmanager.in/efile/nriefile.aspx">NRI Returns</a></li>
                                <li><a href="http://www.taxmanager.in/tax-refund.html">Tax Refund</a></li>
                                <li><a href="http://www.taxmanager.in/efileITR4.html">ITR V and 26 AS Tax Credit
                                        Check</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Tax Management <span class="caret"></span></a>
                            <ul>
                                <li><a href="http://www.taxmanager.in/taxadvisory.html">Tax Advisory</a></li>
                                <li><a href="http://www.taxmanager.in/asp.html">Annual Subscription Package</a></li>
                                <li><a href="http://www.taxmanager.in/ctc-optimiser.html">CTC Optimizer</a></li>
                                <li><a href="http://www.taxmanager.in/itr-rectification.html">Tax Return
                                        Rectification</a></li>
                                <li><a href="http://www.taxmanager.in/itr-notice.html">IT Demand/ Notice</a></li>
                                <li><a href="http://www.taxmanager.in/taxhistory.html">Know your Tax History</a></li>
                                <li><a href="http://www.taxmanager.in/pan-apply.html">PAN Application</a></li>
                                <li><a href="http://www.taxmanager.in/digital-signature.html">Digital Signature</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Investments<span class="caret"></span></a>
                            <ul>
                                <li><a href="http://www.taxmanager.in/planyourtaxsavings.html">Plan You Tax Savings</a>
                                </li>
                                <li><a href="../TaxProfessionals/eFilingGateway.html">Start Investing<span
                                            class="caret"></span></a></li>
                                <li><a href="http://www.taxmanager.in/invest/mutualfunds/invest_mf.html">&nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp;<img src="Multifolder/images/mutul1.png"
                                            style="margin-top:-6px;"> &nbsp;Mutual Funds</a></li>
                                <li><a href="http://www.taxmanager.in/invest/LifeInsurance/invest_li.html">&nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp;<img src="Multifolder/images/life.png"
                                            style="margin-top:-2px;"> &nbsp;Life Insurance</a></li>
                                <li><a href="http://www.taxmanager.in/invest/healthinsurance/invest_hi.html">&nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp;<img src="Multifolder/images/health.png"
                                            style="margin-top:-6px;"> &nbsp;Health Insurance</a></li>
                                <li><a href="http://www.taxmanager.in/invest/ppf/invest_ppf.html">&nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp;<img src="Multifolder/images/public.png"
                                            style="margin-top:6px;">&nbsp; Public Provident Fund</a></li>
                                <li><a href="http://www.taxmanager.in/invest/nsc/invest_nsc.html">&nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; <img src="Multifolder/images/national.png"
                                            style="margin-top:-6px;">&nbsp; National Savings Certificates</a></li>
                                <li><a href="http://www.taxmanager.in/invest/nps/invest_nps.html">&nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp;<img src="Multifolder/images/nps.png"
                                            style="margin-top:-6px;">&nbsp; NPS</a></li>
                                <li><a href="http://www.taxmanager.in/invest/others/invest_others.html">&nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; <img src="Multifolder/images/other.png"
                                            style="margin-top:-6px;">&nbsp; Othres</a></li>
                            </ul>
                        </li>
                        <li><a href="#">NRIs <span class="caret"></span></a>
                            <ul>
                                <li><a href="http://www.taxmanager.in/nri_returns.html">NRI Tax Returns</a></li>
                                <li><a href="http://www.taxmanager.in/nri_taxmanagement.html">NRI Tax Management</a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="#">Business<span class="caret"></span></a>
                            <ul>
                                <li><a href="http://www.taxmanager.in/corporate-plan.html">Employee Care e-Form 16 and
                                        Payrolls</a></li>
                                <li><a href="http://www.taxmanager.in/gst-services.html">GST Services</a></li>
                                <li><a href="http://www.taxmanager.in/startup-program.html">Startup Program</a></li>
                                <li><a href="http://www.taxmanager.in/accounting-management.html">Accounting
                                        Management</a></li>
                                <li><a href="http://www.taxmanager.in/tds-taxmanagement.html">TDS and Tax Management</a>
                                </li>
                                <li><a href="http://www.taxmanager.in/compliancemgmt.html">Compliance Management</a>
                                </li>
                                <li><a href="http://www.taxmanager.in/companyregistration.html">Company Registration</a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="http://www.taxmanager.in/knowledgebank/index.html">Knowledge Bank<span
                                    class="caret"></span></a></li>
                        <li><a style="color:#fff;" href="http://www.taxmanager.in/career/index.html">We're Hiring<span
                                    class="caret"></span></a></li>
                        <li><a style="color:#fff;" href="http://www.taxmanager.in/Login/Login.aspx">Login / Register</a>
                        </li>
                    </ul>
                </nav>
                <nav class="navbar  mn">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse"
                                data-target="#game-navbar-collapse" aria-expanded="false">
                                <span class="icon-bar" style="background: #212121"></span>
                                <span class="icon-bar" style="background: #212121"></span>
                                <span class="icon-bar" style="background: #212121"></span>
                            </button>
                        </div>
                        <div class="collapse navbar-collapse" id="game-navbar-collapse" aria-expanded="false">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="../index.html"><img
                                            src="Multifolder/images/home.png">&nbsp;&nbsp;Home</a></li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><img
                                            src="Multifolder/images/file.png">&nbsp;&nbsp;Tax-eFiling
                                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a
                                                href="http://www.taxmanager.in/UserAc/Register.aspx?From=TaxM&Product=Basic">Basic
                                                - Self eFiling</a></li>
                                        <li><a href="http://www.taxmanager.in/Efile/efile2.aspx">CA Assisted e-Filing -
                                                Let our CA e-File your Taxes</a></li>
                                        <li><a href="http://www.taxmanager.in/Efile/itr4.aspx">ITR 4 - Individual
                                                Business/ Professionals</a></li>
                                        <li><a href="http://www.taxmanager.in/efile/nriefile.aspx">NRI Returns</a></li>
                                        <li><a href="http://www.taxmanager.in/tax-refund.html">Tax Refund</a></li>
                                        <li><a href="http://www.taxmanager.in/efileITR4.html">ITR V and 26 AS Tax Credit
                                                Check</a></li>>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><img
                                            src="Multifolder/images/manager1.png">&nbsp;&nbsp;Tax Management<span
                                            class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="http://www.taxmanager.in/taxadvisory.html">Tax Advisory</a></li>
                                        <li><a href="http://www.taxmanager.in/asp.html">Annual Subscription Package</a>
                                        </li>
                                        <li><a href="http://www.taxmanager.in/ctc-optimiser.html">CTC Optimizer</a></li>
                                        <li><a href="http://www.taxmanager.in/itr-rectification.html">Tax Return
                                                Rectification</a></li>
                                        <li><a href="http://www.taxmanager.in/itr-notice.html">IT Demand/ Notice</a>
                                        </li>
                                        <li><a href="http://www.taxmanager.in/taxhistory.html">Know your Tax History</a>
                                        </li>
                                        <li><a href="http://www.taxmanager.in/pan-apply.html">PAN Application</a></li>
                                        <li><a href="http://www.taxmanager.in/digital-signature.html">Digital
                                                Signature</a></li>
                                    </ul>
                                </li>

                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><img
                                            src="Multifolder/images/earnings.png">&nbsp;&nbsp;Investment<span
                                            class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="http://www.taxmanager.in/planyourtaxsavings.html">Plan You Tax
                                                Savings</a></li>
                                        <li><a href="../TaxProfessionals/eFilingGateway.html">Start Investing<span
                                                    class="caret"></span></a></li>
                                        <li><a href="http://www.taxmanager.in/invest/mutualfunds/invest_mf.html">&nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp;<img src="Multifolder/images/mutul1.png"
                                                    style="margin-top:-6px;"> &nbsp;Mutual Funds</a></li>
                                        <li><a href="http://www.taxmanager.in/invest/LifeInsurance/Invest_li.html">&nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp;<img src="Multifolder/images/life.png"
                                                    style="margin-top:-2px;"> &nbsp;Life Insurance</a></li>
                                        <li><a href="http://www.taxmanager.in/invest/healthinsurance/invest_hi.html">&nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp;<img src="Multifolder/images/health.png"
                                                    style="margin-top:-6px;"> &nbsp;Health Insurance</a></li>
                                        <li><a href="http://www.taxmanager.in/invest/ppf/invest_ppf.html">&nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp;<img src="Multifolder/images/public.png"
                                                    style="margin-top:6px;">&nbsp; Public Provident Fund</a></li>
                                        <li><a href="http://www.taxmanager.in/invest/nsc/invest_nsc.html">&nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; <img src="Multifolder/images/national.png"
                                                    style="margin-top:-6px;">&nbsp; National Savings Certificates</a>
                                        </li>
                                        <li><a href="http://www.taxmanager.in/invest/nps/invest_nps.html">&nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp;<img src="Multifolder/images/nps.png"
                                                    style="margin-top:-6px;">&nbsp; NPS</a></li>
                                        <li><a href="http://www.taxmanager.in/invest/others/invest_others.html">&nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; <img src="Multifolder/images/other.png"
                                                    style="margin-top:-6px;">&nbsp; Othres</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><img
                                            src="Multifolder/images/fc.png">&nbsp;&nbsp;NRIs
                                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="http://www.taxmanager.in/nri_returns.html">NRI Tax Returns</a></li>
                                        <li><a href="http://www.taxmanager.in/nri_taxmanagement.html">NRI Tax
                                                Management</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><img
                                            src="Multifolder/images/group.png">&nbsp;&nbsp;Business
                                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="http://www.taxmanager.in/corporate-plan.html">Employee Care e-Form
                                                16 and Payrolls</a></li>
                                        <li><a href="http://www.taxmanager.in/gst-services.html">GST Services</a></li>
                                        <li><a href="http://www.taxmanager.in/startup-program.html">Startup Program</a>
                                        </li>
                                        <li><a href="http://www.taxmanager.in/accounting-management.html">Accounting
                                                Management</a></li>
                                        <li><a href="http://www.taxmanager.in/tds-taxmanagement.html">TDS and Tax
                                                Management</a></li>
                                        <li><a href="http://www.taxmanager.in/compliancemgmt.html">Compliance
                                                Management</a></li>
                                        <li><a href="http://www.taxmanager.in/companyregistration.html">Company
                                                Registration</a></li>
                                    </ul>
                                </li>
                                <li><a href="http://www.taxmanager.in/KnowledgeBank/index.html"><img
                                            src="Multifolder/images/investment.png">&nbsp;&nbsp;Knowledge Bank<span
                                            class="caret"></span></a></li>
                                <li><a href="http://www.taxmanager.in/career/index.html"><img
                                            src="Multifolder/images/hiring.png">&nbsp;&nbsp;We're Hiring<span
                                            class="caret"></span></a></li>
                                <li><a href="../Login/login.html"><img
                                            src="Multifolder/images/sign.png">&nbsp;&nbsp;Login / Register</a></li>
                            </ul>

                        </div>
                    </div>
                </nav>

            </header>


            <!-- /Header - part   -->

            <!-- Second Header-->

            <!-- End Second Header-->

            <!-- part1   -->

            <div class="container" style="padding-top:80px; padding-bottom:100px;">
                <div class="col-md-12">
                    <div class="col-md-6 col-xs-6 center">
                        <center>
                            <img src="Multifolder/images/44c.png" style="width:50px;">
                            <br>
                            &nbsp
                            <p>Income Tax Calculator FY 19-20</p>
                    </div>

                    <div class="col-md-6 col-xs-6 center">
                        <center>
                            <img src="Multifolder/images/33c.png" style="width:50px;">
                            <br>
                            &nbsp
                            <p><a href="http://www.taxmanager.in/calculator/hra.aspx">HRA Calculator</a></p>
                    </div>

                </div>

                <!-- Text head-->
                <div class="container-fulid" style="padding-top:100px;">
                    <div class="col-md-12 center1" style="background-color:#f8f8f8;">
                        <h3 class="blink_me">Income Tax Calculator Financial Year 2019-20</h3>
                    </div>
                </div>
                <!-- End Text Head-->

            </div><!-- End Main Div-->

            <!-- Link Area-->
            <div class="mb" style="padding-top:40px; width:70%; margin:0 auto;">
                <div class="col-md-12 col-sm-12 col-xs-12 bg-frm">
                    <h4>Personal Details</h4>
                </div>
                <form class="form-inline" action="">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="T1">Name:</label>
                            <input type="text" class="form-control" id="T1" placeholder="Enter Your Name" name="T1">
                        </div>
                    </div>
                    <!--end Col-->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="T2">Mobile:</label>
                            <input type="text" class="form-control" id="T2" placeholder="Enter Mobile Number" name="T2">
                        </div>
                    </div>
                    <!--End Col-->

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="T20">Email:</label>
                            <input type="email" class="form-control" id="T20" placeholder="Enter Email" name="T20">
                        </div>
                    </div>
                    <!--end Col-->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="D1">Age:</label>
                            <select class="form-control" id="D1" name="D1">
                                <option>Select Age</option>
                                <option>Less than 60</option>
                                <option>More than 60</option>
                                <option> More than 80</option>

                            </select>
                        </div>
                    </div>
                    <!--End Col-->


                    <div class="col-md-12" style="padding-bottom:30px;">
                        <tr>
                            <td height="40" class="auto-style9">&nbsp;</td>
                            <td height="40">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <div align="right" id="div3">

                                    <input type="button" value="Next" onclick="validate1()" id="btnnext"
                                        style="margin-right:30px; background-color:#1d7e33;color:white ;height:35px;width:100px;border:none;" />

                                </div>
                            </td>
                        </tr>
                    </div>
                </form>
            </div>

            <!-- End Link Area-->




            <!-- Link Area-->

            <div class="mb" style="width:70%; margin:0 auto;">
                <div class="col-md-12 col-sm-12 col-xs-12 bg-frm" id="flip">
                    <h4>Income Details</h4>
                </div>

                <div id="panel" style="background-color: #f6f6f6; /* For browsers that do not support gradients */
  background-image: linear-gradient(to bottom right, #f6f6f6, #dcdcdc;)">

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="T3">Income from Salary (Taxable)</label>
                            <input type="text" class="form-control" id="T3" value="0" onchange="fill();"
                                style="text-align:right;" placeholder="0" name="T3"
                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                        </div>
                    </div>
                    <!--end Col-->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="T4">Income from House Property (Rental Income)</label>
                            <input type="text" class="form-control" id="T4" value="0" onchange="fill()"
                                style="text-align:right;" placeholder="0" name="T4"
                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                        </div>
                    </div>
                    <!--end Col-->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="T5">Income from Business and Profession</label>
                            <input type="text" class="form-control" id="T5" onchange="fill()" value="0"
                                style="text-align:right;" placeholder="0" name="T5"
                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                        </div>
                    </div>
                    <!--end Col-->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="T6">Income from Sale of Assets (Capital Gains)</label>
                            <input type="text" class="form-control" id="T6" value="0" onchange="fill()"
                                style="text-align:right;" placeholder="0" name="T6"
                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                        </div>
                    </div>
                    <!--end Col-->
                    <!--end Col-->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="T7">Income from Bank Interest and Others</label>
                            <input type="text" class="form-control" id="T7" onchange="fill()" value="0"
                                style="text-align:right;" placeholder="0" name="T7"
                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                        </div>
                    </div>
                    <!--end Col-->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="T8">Total Earned Income</label>
                            <input type="text" class="form-control" id="T8" value="0" onchange="fill()"
                                style="text-align:right;" placeholder="0" name="T8" readonly="readonly"
                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                        </div>
                    </div>
                    <!--end Col-->

                    <tr>
                        <td>
                            <div align="right">

                                <input type="button" value="Next" id="Button1" onclick=" fill(); hideview2();"
                                    style="background-color:#1d7e33;color:white ;height:35px;width:100px;border:none; margin-top:20px;" />

                            </div>
                        </td>
                    </tr>



                </div>
            </div>


            <!-- End Link Area-->




            <!-- Link Area 2-->
            <div class="mb" style="width:70%; margin:0 auto;">
                <div class="col-md-12 col-sm-12 col-xs-12 bg-frm" id="flip1" style="margin-top:50px;">
                    <h4>Deductions</h4>
                </div>


                <div id="panel1" style="background-color: #f6f6f6; /* For browsers that do not support gradients */
  background-image: linear-gradient(to bottom right, #f6f6f6, #dcdcdc;)">

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="T19">Total Investments done u/s 80C, 80CCC</label>
                            <input type="text" class="form-control" id="T19" value="0" onchange="fillanother()"
                                style="text-align:right;" placeholder="0" name="T19"
                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                        </div>
                    </div>
                    <!--end Col-->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="T28">Interest benefit from house property</label>
                            <input type="text" class="form-control" id="T28" onchange="fillanother()" value="0"
                                style="text-align:right;" placeholder="0" name="T28"
                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                        </div>
                    </div>
                    <!--end Col-->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="T21">Expenditures u/s 80D and others like Medical Insurance</label>
                            <input type="text" class="form-control" id="T21" onchange="fillanother()" value="0"
                                style="text-align:right;" placeholder="0" name="T21"
                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                        </div>
                    </div>
                    <!--end Col-->

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="T22">Total Deductions</label>
                            <input type="text" class="form-control" id="T22" value="0" onchange="fillanother()"
                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'
                                style="text-align:right;" placeholder="0" name="T22" readonly="readonly">
                        </div>
                    </div>
                    <!--end Col-->

                    <!--end Col-->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="T27">Net Taxable Income</label>
                            <input type="text" class="form-control" id="T27" onchange="fill();fillanother();" value="0"
                                style="text-align:right;" placeholder="0" name="T27" readonly="readonly">
                        </div>
                    </div>
                    <!--end Col-->


                    <tr>
                        <td>
                            <div align="right">

                                <input type="button" value="Next" id="btnnext1"
                                    onclick=" fill(); netfill(); hideview3(); "
                                    style="background-color:#1d7e33;color:white ;height:35px;width:100px;border:none; margin-top:24px;" />
                                <input type="text" readonly="readonly" border="0" id="txtlbl" style="display:none;"
                                    runat="server" />
                            </div>
                        </td>
                    </tr>
                </div>
            </div>


            <!-- End Link Area-->

            <!-- Link Area 3-->
            <div class="mb" style="width:70%; margin:0 auto;">
                <div class="col-md-12 col-sm-12 col-xs-12 bg-frm" id="flip2"
                    style="margin-top:50px; margin-bottom:50px;">
                    <h4>Tax Computation - on the basis of current IT Rules</h4>
                </div>


                <div id="panel2" style="background-color: #f6f6f6; /* For browsers that do not support gradients */
  background-image: linear-gradient(to bottom right, #f6f6f6, #dcdcdc;)">

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="T13">Basic Tax on Total Income</label>
                            <input type="text" class="form-control" id="T13" onchange="otherchange()" value="0"
                                style="text-align:right;" placeholder="0" name="T13" readonly="readonly"
                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                        </div>
                    </div>
                    <!--end Col-->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="T14">Surcharge</label>
                            <input type="text" class="form-control" onchange="otherchange()"
                                onkeypress='return event.charCode >= 48 && event.charCode <= 57' id="T14" value="0"
                                style="text-align:right;" placeholder="0" name="T14" readonly="readonly">
                        </div>
                    </div>
                    <!--end Col-->
                    <!--end Col-->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="T15">Education Cess @ 4%</label>
                            <input type="text" class="form-control" id="T15" onchange="fillother()" value="0"
                                style="text-align:right;" placeholder="0" name="T15" readonly="readonly"
                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                        </div>
                    </div>
                    <!--end Col-->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="T17">Total Taxes to be Paid</label>
                            <input type="text" class="form-control" id="T17" value="0" style="text-align:right;"
                                placeholder="0" name="T17" readonly="readonly"
                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                        </div>
                    </div>
                    <!--end Col-->
                    <!--Start-->

                    <div class="" style="padding-top:40px;">



                        <div class="col-md-12" style="background-color:#f8f8f8;">
                            <div class="col-md-3 col-xs-6 center">
                                <center>
                                    <br /><br /><br /><br /><br />
                                    <img src="http://www.TaxManager.in/images/icon-01.png"
                                        style="width:75px; height:75px;">
                                    <br>

                                    <p><a href="http://www.TaxManager.in/login/login.aspx">Prepare Income Tax Return Do
                                            it yourself</a></p>
                            </div>
                            <div class="col-md-3 col-xs-6 center">
                                <center><br /><br /><br /><br /><br />
                                    <img src="http://www.TaxManager.in/images/icon-02.png"
                                        style="width:75px; height:75px;">
                                    <br>
                                    <p><a href="http://www.TaxManager.in/efile/hdfcefile.aspx">CA Assisted ITR
                                            e-Filing-Let our CA e-File your Taxes</a></p>
                            </div>
                            <div class="col-md-3 col-xs-6 center">
                                <center><br /><br /><br /><br /><br />
                                    <img src="http://www.TaxManager.in/images/icon-03.png"
                                        style="width:75px; height:75px;">
                                    <br>
                                    <p><a href="http://www.TaxManager.in/efile/taxnoticeservice.aspx?Item=1">Tax
                                            Rectification or Notice Reply to Tax Notices</a></p>
                            </div>
                            <div class="col-md-3 col-xs-6 center">
                                <center><br /><br /><br /><br /><br />
                                    <img src="http://www.TaxManager.in/images/icon-05.png"
                                        style="width:75px; height:75px;">
                                    <br>
                                    <p><a href="http://www.TaxManager.in/efile/aspsubscribe.aspx">Annual Subscription
                                            Package-Complete Tax Solutions</a></p>
                            </div>
                            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                        </div>
                    </div><!-- End Main Div-->


                </div>

            </div>

            <!-- End Link Area-->



            <!-- footer  -->
            <footer style="display:none;">
                <div class="col-md-12 footer-top">
                    <div class="container">
                        <div class="col-md-3" style="margin-top: 50px; margin-bottom: 50px;">
                            <h4>Individuals</h4>
                            <li><a href="http://www.tdsmanager.in/tm/TaxFiling/SelfeFiling.html">Tax Returns – Self
                                    eFiling</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/TaxFiling/CAAssistedeFiling.html">Tax Returns – CA
                                    Assisted</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/TaxFiling/ITR4.html">Tax Returns – Individual
                                    Business/ Professionals</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/TaxFiling/NRIReturn.html">Tax Returns – NRI
                                    Returns</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/TaxFiling/TaxRefund.html">Tax Returns –Tax
                                    Refund</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/TaxFiling/ITRV.html">Tax Returns – ITR V and 26 AS
                                    Tax Credit Check</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/TaxManagement/TaxAdvisory.html">Tax Management –
                                    Tax Advisory</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/TaxManagement/AnnualSubscriptionPackage.html">Tax
                                    Management – Annual Subscription Package</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/TaxManagement/CtcOptimizer.html">Tax Management –
                                    CTC Optimizer</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/TaxManagement/TaxReturnRectification.html">Tax
                                    Management – Tax Return Rectification</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/TaxManagement/ITNotice.html">Tax Management – IT
                                    Notice/ Demandt</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/TaxManagement/TaxHistory.html">Tax Management –
                                    Know your Tax History</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/TaxManagement/PANApplication.html">Tax Management –
                                    PAN Application</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/TaxManagement/DigitalSignature.html">Tax Management
                                    – Digital Signature</a></li>
                        </div>

                        <div class="col-md-3" style="margin-top: 50px; margin-bottom: 50px;">
                            <h4>Corporate</h4>
                            <li><a href="http://www.tdsmanager.in/tm/Corporate/EmployeeCare.html">Employee Care – Bulk
                                    Tax Returns</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/Corporate/eForm16.html">E Form 16 Digital
                                    Signature/ PayRolls</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/Corporate/CorporateTaxManagement.html">Corporate
                                    Tax Management</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/Corporate/AccountingManagement.html">Accounting
                                    Management</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/Corporate/TdsManagement.html">TDS Management</a>
                            </li>
                            <li><a href="http://www.tdsmanager.in/tm/Corporate/ComplianceManagement.html">Compliance
                                    Management</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/Corporate/CompanyIncorporation.html">Company
                                    Incorporation</a></li>
                        </div>

                        <div class="col-md-3" style="margin-top: 50px; margin-bottom: 50px;">
                            <h4>Tax Professionals</h4>
                            <li><a href="http://www.tdsmanager.in/tm/TaxProfessionals/eFilingGateway.html">E-Filing
                                    Gateway </a></li>
                            <li><a href="#">Clients Tax Management Online</a></li>
                        </div>


                        <div class="col-md-3" style="margin-top: 50px; margin-bottom: 50px;">
                            <h4>Tools</h4>
                            <li><a href="http://www.tdsmanager.in/tm/Tools/TaxEstimatorCalculator.html">Tax Estimator
                                    Calculator</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/Tools/HRACalculator.html">HRA Calculator</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/Tools/KnowledgeBank.html">Knowledge Bank</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/Tools/ITRVStatus.html">ITR V Status</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/Tools/TaxReturnProcess.html">Tax Return Process</a>
                            </li>
                            <li><a href="http://www.tdsmanager.in/tm/Tools/RefundStatus.html">Refund Status</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/Tools/CtcCalculator.html">CTC Calculator</a></li>
                            <li><a href="http://www.tdsmanager.in/tm/Tools/FAQs.html">FAQs</a></li>
                        </div>


                    </div>
                </div>

                <div class="col-md-12 footer-bottom">
                    <div class="container">
                        <div class="col-md-3" style="margin-top: 20px;">
                            <h4>Follow Us On</h4>

                            <i class="fa fa-facebook"></i>
                            &nbsp;
                            <i class="fa fa-twitter"></i>
                            &nbsp;
                            <i class="fa fa-linkedin"></i>
                            &nbsp;
                            <i class="fa fa-youtube"></i>
                        </div>
                        <div class="col-md-3 fb-nav" style="margin-top: 20px;">


                            <li><a href="index.html">Home</a></li>
                            <li><a href="AboutUs/AboutUs.html">About Us</a></li>
                            <li><a href="AboutUs/PrivacyPolicy.html">Privacy Policy</a></li>

                        </div>

                        <div class="col-md-3 fb-nav" style="margin-top: 20px;">

                            <li><a href="AboutUs/InTheMedia.html">In the Media</a></li>
                            <li><a href="AboutUs/LegalDisclaimer.html">Legal Disclaimer</a></li>
                            <li><a href="AboutUs/FAQs.html">FAQs</a></li>

                        </div>
                        <div class="col-md-3 fb-nav" style="margin-top: 20px;">


                            <li><a href="AboutUs/TermsAndConditions.html">Terms and Conditions</a></li>
                            <li><a href="AboutUs/SiteMap.html">Site Map</a></li>
                            <li><a href="AboutUs/Security.html">Security</a></li>
                        </div>
                        <br>
                        <div class="col-md-12"
                            style="margin-top: 20px; margin-bottom: 20px; padding-left: 0px !important;">
                            <div class="col-md-12 footer-icons">
                                <p style="margin-top: 20px; font-weight: bold; font-size: 10pt;">Copyrights © Rising
                                    Advisory Services Private Limited.</p>

                                <li> <a href="http://www.taxmanager.in/ereturn_letter.pdf" target="_blank"><img
                                            src="images/return.jpg"></a></li>
                                <li> <a href="#"><img src="images/ssllogo.png"></a></li>
                                <li> <a href="#"><img src="images/isologo.png"></a></li>
                            </div>

                        </div>
                    </div>


            </footer>


            <!-- /footer  -->


            <!-- Support  -->

            <div class="col-md-12 navbar-fixed-bottom fb">
                <div class="col-md-6">Call Center Support&nbsp; - <a>+91-9555331122</a></div>
                <div class="col-md-6">Email Support &nbsp; - <a>support@Taxmanager.in</a></div>

            </div>



            <div class="container mobilecontact" style="width: 100%;">

                <div class="dropup">
                    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Need Help?
                        <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                        <li><a href="tel:+919555331122">Call - +91-9555331122</a></li>
                        <li class="divider"></li>
                        <li><a href="mailto:Support@Taxmanager.in">eMail - Support@Taxmanager.in</a></li>
                        <li class="divider"></li>
                        <li><a href="forms/CAPoint.html" target="_blank">Need CA Help?</a></li>
                    </ul>
                </div>
            </div>


            <!-- /Support  -->

            <a id="home" class="cd-top">Top</a>
            <script>
                <!-- fade effects  -->


                $(document).ready(function () {

                    /* Every time the window is scrolled ... */
                    $(window).scroll(function () {

                        /* Check the location of each desired element */
                        $('.hideme').each(function (i) {
                            var bottom_of_window = $(window).scrollTop() + $(window).height();
                            var bottom_of_object = $(this).offset().top + $(this).outerHeight();


                            /* If the object is completely visible in the window, fade it it */
                            if (bottom_of_window > bottom_of_object) {

                                $(this).animate({ 'opacity': '1' }, 1000);

                            }

                        });

                    });

                });

            < !-- /fade effects  -->



                    < !--navbar autohide-- >


                        $(document).ready(function () {
                            $('[data-toggle="popover"]').popover();
                            $('[data-toggle="popover"]').popover('show');
                        });

                $(document).ready(function () {
                    $('[data-toggle="popover1"]').popover();
                });

                WebForm_AutoFocus('txtUserId');//]]>

            < !-- /navbar autohide  -->


                    < !--smooth scroll-- >


                        $(document).ready(function () {
                            // Add smooth scrolling to all links
                            $("a").on('click', function (event) {

                                // Make sure this.hash has a value before overriding default behavior
                                if (this.hash !== "") {
                                    // Prevent default anchor click behavior
                                    event.preventDefault();

                                    // Store hash
                                    var hash = this.hash;

                                    // Using jQuery's animate() method to add smooth page scroll
                                    // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
                                    $('html, body').animate({
                                        scrollTop: $(hash).offset().top
                                    }, 1200, function () {

                                        // Add hash (#) to URL when done scrolling (default click behavior)
                                        window.location.hash = hash;
                                    });
                                } // End if
                            });
                        });


            < !-- /smooth scroll  -->


                    < !--ANDROID FUNCTION-- >

            var ua = navigator.userAgent.toLowerCase();
                var isAndroid = ua.indexOf("android") > -1; //&& ua.indexOf("mobile");
                var banner = document.getElementById('appbanner');
                if (isAndroid) {

                    if (localStorage.getItem('getbanner')) {
                        banner.style.display = 'none';
                    } else {
                        banner.style.display = '';
                    }
                }

                function appbanner_close() {
                    localStorage.setItem('getbanner', 'true');
                    banner.style.display = 'none';
                }

            < !-- /ANDROID FUCTION -->


                $(document).ready(function () {
                    $(".side").click(function () {
                        $(this).hide();
                    });
                });


                $(document).ready(function () {
                    $('[data-toggle="popover"]').popover();
                });



            < !--BACK TO TOP-- >

                    jQuery(document).ready(function ($) {
                        // browser window scroll (in pixels) after which the "back to top" link is shown
                        var offset = 300,
                            //browser window scroll (in pixels) after which the "back to top" link opacity is reduced
                            offset_opacity = 1200,
                            //duration of the top scrolling animation (in ms)
                            scroll_top_duration = 700,
                            //grab the "back to top" link
                            $back_to_top = $('.cd-top');

                        //hide or show the "back to top" link
                        $(window).scroll(function () {
                            ($(this).scrollTop() > offset) ? $back_to_top.addClass('cd-is-visible') :
                                $back_to_top.removeClass('cd-is-visible cd-fade-out');
                            if ($(this).scrollTop() > offset_opacity) {
                                $back_to_top.addClass('cd-fade-out');
                            }
                        });

                        //smooth scroll to top
                        $back_to_top.on('click', function (event) {
                            event.preventDefault();
                            $('body,html').animate({
                                scrollTop: 0,
                            }, scroll_top_duration
                            );
                        });

                    });

            < !-- /BACK TO TOP -->


            </script>

    </body>

    </html>