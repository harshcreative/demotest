<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HRA.aspx.cs" Inherits="HRA" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="viewport" content="width=device-width, user-scalable=no">

        <!-- Facebook Meta Tags -->
        <meta name="twitter:title" content="Income Tax Calculator - Calculate your taxes for FY 2023-24 | Use Tax Calculator Online" />
        <meta property="og:title" content="Income Tax Calculator - Calculate your taxes for FY 2023-24 | Use Tax Calculator Online" />
        <meta itemprop="name" content="Income Tax Calculator - Calculate your taxes for FY 2023-24 | Use Tax Calculator Online" />
        <meta name="twitter:description" content="Income Tax Calculator - How to calculate Income taxes online? for FY 2020-21 (AY 2021-22), 2021-2022  2020-21 with Taxmanager Income Tax Calculator. Refer examples tax slabs for easy calculation." />
        <meta name="twitter:image:src" content="https://www.taxmanager.in/public/images/Calculate-Your-Tax-Return-FY-23-24-Under-New-Regime-and-Old-Regime.png" />
        <meta name="twitter:domain" content="https://www.Taxmanager.in" />
        <meta property="og:url" content="https://www.Taxmanager.in" />
        <meta property="og:image" content="https://www.taxmanager.in/public/images/Calculate-Your-Tax-Return-FY-23-24-Under-New-Regime-and-Old-Regime.png" />
        <meta property="og:image:secure_url" content="https://www.taxmanager.in/public/images/Calculate-Your-Tax-Return-FY-23-24-Under-New-Regime-and-Old-Regime.png" />
        <meta name="og:description" content="Income Tax Calculator - How to calculate Income taxes online? for FY 2020-21 (AY 2021-22), 2021-2022  2020-21 with Taxmanager Income Tax Calculator. Refer examples  tax slabs for easy calculation." />
        <meta itemprop="description" content="Income Tax Calculator - How to calculate Income taxes online? for FY 2020-21 (AY 2021-22), 2021-2022  2020-21 with Taxmanager Income Tax Calculator. Refer examples  tax slabs for easy calculation." />
        <meta itemprop="image" content="https://www.taxmanager.in/public/images/Calculate-Your-Tax-Return-FY-23-24-Under-New-Regime-and-Old-Regime.png" />

        <title>Income Tax Calculator - Calculate your taxes for FY 2023-24 | Use Tax Calculator Online</title>
        <meta name="keywords" content="income tax calculator, tax calculator, tax calculator india" />
        <meta name="description" content="Income Tax Calculator - How to calculate Income taxes online? for FY 2022-23 (AY 2023-24), 2023-24  2022-23 with TaxManager Income Tax Calculator. Refer examples  tax slabs for easy calculation." />

        <!-- HTML Meta Tags -->
        <link rel="icon" type="image/png" href="/tm360/images/favicon.webp" />
        <!-- Style File -->
        <link rel="stylesheet" href="/tm360/css/bootstrap.min.css">
        <link rel="stylesheet" href="/tm360/css/sylesheet.css">
        <link rel="stylesheet" href="/tm360/css/responsive.css">
        <!-- google Font -->
        <link rel="stylesheet" href="/tm360/font/google.font.css">
        <!-- Icone Font -->
        <link rel="stylesheet" href="/tm360/icon/icon.css">
        <!-- Font Awesome icon -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Owl Carousel-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
        <!-- Light Box -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup/magnific-popup.css">
        <!-- Cuntry Code With Flage -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.13/css/intlTelInput.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">

        <script type="text/javascript">
            < !-
            function Onload() {
                window.location = "http://www.TaxManager.in/tm360/tools/Calculator/Hra/Hra.aspx";
            }
            //-->
        </script>

        <script type="text/javascript">
            function view2(obj) {
                if (obj.style.display == "block")
                    obj.style.display = "none";
                else
                    obj.style.display = "block";
            }

            function view1(obj) {
                if (obj.style.display == "block")
                    obj.style.display = "none";
                else
                    obj.style.display = "block";
                var tblmain = document.getElementById("tblmain");
                if (tblmain.style.display == "block")
                    tblmain.style.display = "none";
                else
                    tblmain.style.display = "block";
            }

            function calculatehra() {
                //hra = taxable + exempt
                var bs = document.getElementById("T1").value;
                var da = document.getElementById("T2").value;
                var hra = document.getElementById("T4").value;
                var arp = document.getElementById("T5").value;
                var actualHRAricieved = hra; //condition 1


                if (bs == "0" || bs == "") {
                    alert("Please Enter Basic Salary.");
                    return;
                }
                if (hra == "0" || hra == "") {
                    alert("Please Enter Annual HRA.");
                    return;
                }
                if (document.getElementById("ddlCity").value == "0") {
                    alert("Please Choose City Mode.");
                    return;
                }
                if (arp == "") {
                    alert("Please Enter Annual Rent Payable. If Rent Payable is 0, Pls input 0");
                    return;
                }

                var T10 = (Number(+bs) + Number(+da));
                var T11 = 0.1 * T10; // condition 2
                var rpiexcess = (arp - T11);
                var ddlcity = document.getElementById("ddlCity").value;
                var fiftyperofsalary = "";
                var fourperofsalary = "";
                var taxfree = "";
                var Taxable = "";

                if (ddlcity == "1") {
                    fourperofsalary = (Number(+bs) + Number(+da)) * (0.5); // if you live in a metro
                }
                if (ddlcity == "2") {
                    fiftyperofsalary = (Number(+bs) + Number(+da)) * (0.4); // if you live in a non metro
                } else {}
                if (fiftyperofsalary == "") {
                    taxfree = Math.min(actualHRAricieved, rpiexcess, fourperofsalary);
                } else {
                    taxfree = Math.min(actualHRAricieved, rpiexcess, fiftyperofsalary);
                }
                if (taxfree < 0)
                    taxfree = 0;
                Taxable = hra - taxfree;
                document.getElementById("Text15").value = actualHRAricieved;
                document.getElementById("Text16").value = taxfree;
                document.getElementById("Text17").value = Taxable;
                document.getElementById("tblmain").style.display = "none";
                document.getElementById("tblResult").style.display = "block";
            }
        </script>

    </head>

    <body onload="Onload()">

        <!-- header -->
        <header>
            <div class="container">
                <div class="row">
                    <!-- Logo -->
                    <div class="logo">
                        <a href="/tm360/">
                            <img src="/tm360/Images/logo.webp" alt="">
                        </a>
                    </div>
                    <!-- Nav Section -->
                    <nav>
                        <div class="menusectare">
                            <ul>
                                <li class="dropnav">
                                    <a href="#">
                                        Individual
                                        <span><i class="fas fa-angle-down"></i></span>
                                    </a>
                                    <div class="megaropdown max-width">
                                        <div class="row">
                                            <div class="col-md-6 col-lg-6">
                                                <div class="divider-box">
                                                    <h4>Tax Expert Assisted Tax Filing </h4>
                                                    <h5>Resident</h5>
                                                    <ul>
                                                        <li>
                                                            <a href="/efile/CAAssistedSalary.aspx">
                                                                <span>
                                                                    <img alt="#"
                                                                        src="/tm360/Images/icon/individual/salary.webp">
                                                                </span>Salary
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/efile/CAAssistedSalary50Lakhs.aspx">
                                                                <span>
                                                                    <img alt="#"
                                                                        src="/tm360/Images/icon/individual/salary_over.webp">
                                                                </span> Salary over Rs 50 Lakhs
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/efile/CAAssistedCG.aspx">
                                                                <span>
                                                                    <img alt="#"
                                                                        src="/tm360/Images/icon/individual/capital_Equity.webp">
                                                                </span>Capital Gains (Equity &amp; MF Sale)
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/efile/CAAssistedCG_PS.aspx">
                                                                <span>
                                                                    <img alt="#"
                                                                        src="/tm360/Images/icon/individual/capital_sale.webp">
                                                                </span>Capital Gains (Property Sale)
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/efile/itr4.aspx">
                                                                <span>
                                                                    <img alt="#"
                                                                        src="/tm360/Images/icon/individual/self_employed.webp">
                                                                </span>Professional/Self Employed
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <span>
                                                                    <img alt="#"
                                                                        src="/tm360/Images/icon/individual/presumptive_income.webp">
                                                                </span>Presumptive Income
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/efile/ResidentwithForeignIncome.aspx">
                                                                <span>
                                                                    <img alt="#"
                                                                        src="/tm360/Images/icon/individual/foreign_income.webp">
                                                                </span>Foreign Income
                                                            </a>
                                                        </li>
                                                    </ul>
                                                    <h5>NRI</h5>
                                                    <ul>
                                                        <li>
                                                            <a href="/efile/NRI_FD.aspx">
                                                                <span>
                                                                    <img alt="#"
                                                                        src="/tm360/Images/icon/individual/other_income_fd.webp">
                                                                </span> Other Income – FD Interest etc
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/efile/NRI_Equity.aspx">
                                                                <span>
                                                                    <img alt="#"
                                                                        src="/tm360/Images/icon/individual/capital_Equity.webp">
                                                                </span>Capital Gains (Equity &amp; MF Sale)
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/efile/NRI_PS.aspx">
                                                                <span>
                                                                    <img alt="#"
                                                                        src="/tm360/Images/icon/individual/capital_sale.webp">
                                                                </span>Capital Gains (Property Sale)
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-lg-6">
                                                <div class="divider-box">
                                                    <h4>Tax Management</h4>
                                                    <ul>
                                                        <li>
                                                            <a href="/efile/aspsubscribe.aspx">
                                                                <span><img alt="Tax Advisory | TaxManager.in"
                                                                        src="/tm360/Images/icon/individual/tax_Advisory.webp"></span>Tax Advisory
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <span>
                                                                    <img alt="Tax Treatment on Property Sale | TaxManager.in"
                                                                        src="/tm360/Images/icon/individual/tax_Treatment.webp">
                                                                </span>Tax Treatment on Property Sale
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/efile/aspsubscribe.aspx">
                                                                <span>
                                                                    <img alt="Advance Tax Calculation | TaxManager.in"
                                                                        src="/tm360/Images/icon/individual/advance_tax_calculation.webp">
                                                                </span>Advance Tax Calculation
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/efile/aspsubscribe.aspx">
                                                                <span>
                                                                    <img alt="Annual Subscription Package | TaxManager.in"
                                                                        src="/tm360/Images/icon/individual/annual_subscribtion_package.webp">
                                                                </span>Annual Subscription Package
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/efile/ctcoptimizer.aspx">
                                                                <span>
                                                                    <img alt="CTC Optimizer | TaxManager.in"
                                                                        width="auto" height="auto"
                                                                        src="/tm360/Images/icon/individual/ctc_optimizer.webp">
                                                                </span>CTC Optimizer
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/efile/taxquery.aspx">
                                                                <span>
                                                                    <img alt="Tax Query | TaxManager.in" width="auto"
                                                                        height="auto"
                                                                        src="/tm360/Images/icon/individual/tax_query.webp">
                                                                </span> Tax Query
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/efile/taxnoticeservice.aspx">
                                                                <span>
                                                                    <img alt="Tax Return Rectification | Tax Notice – Demand/ Notice Reply | TaxManager.in"
                                                                        src="/tm360/Images/icon/individual/Tax_notice.webp">
                                                                </span>Tax Notice – Demand/ Notice Reply
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/efile/taxnoticeservice.aspx">
                                                                <span>
                                                                    <img alt="Tax Return Rectification | TaxManager.in"
                                                                        src="/tm360/Images/icon/individual/tax_return.webp">
                                                                </span>Tax Return Rectification
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/efile/taxhistoryservice.aspx">
                                                                <span>
                                                                    <img alt="Tax Health Check-up | TaxManager.in"
                                                                        src="/tm360/Images/icon/individual/taxx_checkUp.webp">
                                                                </span>Tax Health Check-up
                                                            </a>
                                                        </li>
                                                    </ul>
                                                    <div class="styled-rich-text">
                                                        <img class="lazyload" alt="Not sure which is right for you? | TaxManager.in" src="/tm360/Images/icon/ideoa.svg">
                                                        <p>Not sure which is right for you?<br></p>
                                                        <p><a href="/tm360/Contact.html">Help Me</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="dropnav">
                                    <a href="#">
                                        Business
                                        <span><i class="fas fa-angle-down"></i></span>
                                    </a>
                                    <div class="megaropdown max-width">
                                        <div class="row">
                                            <div class="col-md-6 col-lg-6">
                                                <div class="divider-box">
                                                    <h4>Tax Expert Assisted Tax Filing </h4>
                                                    <ul>
                                                        <li>
                                                            <a href="#">
                                                                <span>
                                                                    <img class="lazyload"
                                                                        alt="Proprietor | TaxManager.in"
                                                                        src="/tm360/Images/icon/business/proprietor.webp">
                                                                </span> Proprietor
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <span>
                                                                    <img alt="Presumptive Income | TaxManager.in"
                                                                        src="/tm360/Images/icon/business/presumptive-income.webp">
                                                                </span>Presumptive Income
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#"><span><img
                                                                        alt="Pvt Ltd – Less than 200 transactions annually | TaxManager.in"
                                                                        src="/tm360/Images/icon/business/pvt-ltd-less-than-200-transactions-annually.webp"></span>Pvt
                                                                Ltd – Less than 200 transactions annually.
                                                            </a>
                                                        </li>
                                                    </ul>
                                                    <div class="styled-rich-text">
                                                        <img class="lazyload" alt="Not sure which is right for you? | TaxManager.in" src="/tm360/Images/icon/ideoa.svg">
                                                        <p>Not sure which is right for you?<br></p>
                                                        <p><a href="/tm360/Contact.html">Help Me</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-lg-6">
                                                <div class="divider-box">
                                                    <h4>Other Solutions </h4>
                                                    <ul>
                                                        <li>
                                                            <a href="/tm360/business/gst-services.html">
                                                                <span>
                                                                    <img alt="GST Services | TaxManager.in" width="auto"
                                                                        height="auto"
                                                                        src="/tm360/Images/icon/business/gst-services.webp">
                                                                </span>GST Services
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/tm360/business/accounting-management.html">
                                                                <span>
                                                                    <img alt="Accounting Retainership | TaxManager.in"
                                                                        src="/tm360/Images/icon/business/accounting-retainership.webp">
                                                                </span>Accounting Retainership
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/tm360/business/tds-taxmanagement.html">
                                                                <span>
                                                                    <img alt="TDS &amp; Tax Management | TaxManager.in"
                                                                        src="/tm360/Images/icon/business/tds-tax-management.webp">
                                                                </span>TDS &amp; Tax Management
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/tm360/business/compliancemgmt.html">
                                                                <span>
                                                                    <img alt="Compliance Management | TaxManager.in"
                                                                        src="/tm360/Images/icon/business/compliance-management.webp">
                                                                </span>Compliance Management
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/tm360/business/companyregistration.html">
                                                                <span>
                                                                    <img alt="Company Registration | TaxManager.in"
                                                                        src="/tm360/Images/icon/business/company-registration.webp">
                                                                </span>Company Registration
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/tm360/business/rbicompliances.html">
                                                                <span>
                                                                    <img alt="RBI Compliances | TaxManager.in"
                                                                        width="auto" height="auto"
                                                                        src="/tm360/Images/icon/business/rbi-compliances.webp">
                                                                </span>RBI Compliances
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/tm360/business/trademarkregistrations.html">
                                                                <span>
                                                                    <img alt="Trademark Registration | TaxManager.in"
                                                                        src="/tm360/Images/icon/business/trademark-registration.webp">
                                                                </span>Trademark Registration
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/tm360/business/legalcompliances.html">
                                                                <span>
                                                                    <img alt="Legal Compliance | TaxManager.in"
                                                                        width="auto" height="auto"
                                                                        src="/tm360/Images/icon/business/legal-compliances.webp">
                                                                </span>Legal Compliances
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/tm360/business/governmentregistrations.html">
                                                                <span>
                                                                    <img alt="Government Registrations | TaxManager.in"
                                                                        src="/tm360/Images/icon/business/government-registrations.webp">
                                                                </span>Government Registrations
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/tm360/business/msmeservices.html">
                                                                <span>
                                                                    <img alt="MSME Program | TaxManager.in" width="auto"
                                                                        height="auto"
                                                                        src="/tm360/Images/icon/business/msme-program.webp">
                                                                </span>MSME Program
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="/tm360/business/corporate-plan.html">
                                                                <span>
                                                                    <img alt="Employee Care – eForm 16/ Payrolls | TaxManager.in"
                                                                        src="/tm360/Images/icon/business/employee-care-e-form-16-payrolls.webp">
                                                                </span>Employee Care – eForm 16/ Payrolls
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="dropnav dropdown">
                                    <a href="/">Startup
                                        <span><i class="fas fa-angle-down"></i></span>
                                    </a>
                                    <ul>
                                        <li>
                                            <a href="/tm360/startup/LaunchYourStartup.html">
                                                <span>
                                                    <img alt="#"
                                                        src="/tm360/Images/icon/startup/launch_you_startup.webp">
                                                </span> Launch your Startup
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/tm360/startup/ManageYourStartup.html">
                                                <span>
                                                    <img alt="#" src="/tm360/Images/icon/startup/manage_startup.webp">
                                                </span> Manage your Startup
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/tm360/startup/GrowYourStartup.html">
                                                <span>
                                                    <img alt="#" src="/tm360/Images/icon/startup/Grow_startup.webp">
                                                </span> Grow your Startup
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dropnav dropdown subdelis">
                                    <a href="/">Add on's
                                        <span><i class="fas fa-angle-down"></i></span>
                                    </a>
                                    <ul>
                                        <li>
                                            <a href="/tm360/add-ons/banking.html">
                                                <span>
                                                    <img alt="#" src="/tm360/Images/icon/addon/banking.webp">
                                                </span> Banking
                                            </a>
                                        </li>
                                        <li class="dropnav dropdown sub-dropdown">
                                            <a href="/tm360/add-ons/loans.html">
                                                <span>
                                                    <img alt="#" src="/tm360/Images/icon/addon/loan.webp">
                                                </span> Loans
                                                <span><i class="fas fa-angle-down"></i></span>
                                            </a>
                                            <ul>
                                                <li><a href="/tm360/add-ons/loans/personal-loan.html"><span> <img
                                                                alt="#"
                                                                src="/tm360/Images/icon/addon/banking.webp"></span>
                                                        Personal Loan</a></li>
                                                <li><a href="/tm360/add-ons/loans/car-loan.html"><span> <img alt="#"
                                                                src="/tm360/Images/icon/addon/banking.webp"></span> Car
                                                        Loan</a></li>
                                                <li><a href="/tm360/add-ons/loans/home-loan.html"><span> <img alt="#"
                                                                src="/tm360/Images/icon/addon/banking.webp"></span>
                                                        Home Loan</a></li>
                                                <li><a href="/tm360/add-ons/loans/education.html"><span> <img alt="#"
                                                                src="/tm360/Images/icon/addon/banking.webp"></span>
                                                        Education</a></li>
                                                <li><a href="/tm360/add-ons/loans/business-loan.html"><span> <img
                                                                alt="#"
                                                                src="/tm360/Images/icon/addon/banking.webp"></span>
                                                        Business Loan</a></li>
                                                <li><a href="/tm360/add-ons/loans/loan-against-property.html"><span>
                                                            <img alt="#"
                                                                src="/tm360/Images/icon/addon/banking.webp"></span> Loan
                                                        Against Property</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="/tm360/add-ons/tally.html">
                                                <span>
                                                    <img alt="#" src="/tm360/Images/icon/addon/tally_solutions.webp">
                                                </span> Tally Solutions
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/tm360/add-ons/zoho.html">
                                                <span>
                                                    <img alt="#" src="/tm360/Images/icon/addon/zoho_services.webp">
                                                </span> Zoho Services
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/tm360/add-ons/greytHR.html">
                                                <span>
                                                    <img alt="#" src="/tm360/Images/icon/addon/greytHr.webp">
                                                </span> greytHR Management
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/tm360/add-ons/partnersprogram.html">
                                                <span>
                                                    <img alt="#" src="/tm360/Images/icon/addon/partner_program.webp">
                                                </span> Partner's Program
                                            </a>
                                        </li>

                                    </ul>
                                </li>
                                <li class="dropnav dropdown">
                                    <a href="/">Us
                                        <span><i class="fas fa-angle-down"></i></span>
                                    </a>
                                    <ul>
                                        <li>
                                            <a href="/tm360/About_Us.html">
                                                <span>
                                                    <img class="lazyload" alt="About Us | TaxManager.in"
                                                        src="/tm360/Images/icon/us/about-us.webp">
                                                </span>About Us
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/tm360/Contact.html">
                                                <span>
                                                    <img class="lazyload" alt="Contact Us | TaxManager.in"
                                                        src="/tm360/Images/icon/us/contact-us.webp">
                                                </span> Contact Us
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/tm360/career.html">
                                                <span>
                                                    <img class="lazyload" alt="Careers | TaxManager.in"
                                                        src="/tm360/Images/icon/us/career.webp">
                                                </span>Careers
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/tm360/Contact.html">
                                                <span>
                                                    <img class="lazyload" alt="Support | TaxManager.in"
                                                        src="/tm360/Images/icon/us/support.webp">
                                                </span>Support
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="/tm360/blogs.html">
                                                <span>
                                                    <img class="lazyload" alt="Blogs | TaxManager.in"
                                                        src="/tm360/Images/icon/us/blogs.webp">
                                                </span> Blogs
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/tm360/Inmedia.html">
                                                <span>
                                                    <img class="lazyload" alt="Media | TaxManager.in"
                                                        src="/tm360/Images/icon/us/media.webp">
                                                </span>Media
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/tm360/leadership.html">
                                                <span>
                                                    <img class="lazyload" alt="Leadership | TaxManager.in"
                                                        src="/tm360/Images/icon/us/leaderhsip.webp">
                                                </span>Leadership
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/tm360/knowledgebank.html">
                                                <span>
                                                    <img class="lazyload" alt="Knowledge Bank | TaxManager.in"
                                                        src="/tm360/Images/icon/us/knowledge-bank.webp">
                                                </span>Knowledge Bank
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/tm360/faqs.html">
                                                <span>
                                                    <img class="lazyload" alt="FAQs &amp; Glossary | TaxManager.in"
                                                        src="/tm360/Images/icon/us/faqs.webp">
                                                </span> FAQs &amp; Glossary
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dropnav dropdown">
                                    <a href="#">Tools <span><i class="fas fa-angle-down"></i></span></a>
                                    <ul>
                                        <li>
                                            <a href="/tm360/tools/calculator/23-24/">
                                                <span>
                                                    <img class="lazyload" alt="Tax Calculator | TaxManager.in"
                                                        src="/tm360/Images/icon/tools/tax-calculator.webp">
                                                </span> Tax Calculator
                                            </a>
                                        </li>

                                        <li>
                                            <a href="/tm360/tools/calculator/Hra/Hra.aspx">
                                                <span>
                                                    <img class="lazyload" alt="HRA Calculator | TaxManager.in"
                                                        src="/tm360/Images/icon/tools/hra-calculator.webp">
                                                </span> HRA Calculator
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/tm360/tools/Calculator/emi-calculator.html">
                                                <span>
                                                    <img class="lazyload" alt="Tax Calculator | TaxManager.in"
                                                        src="/tm360/Images/icon/tools/tax-calculator.webp">
                                                </span> EMI Calculator
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/tm360/tools/calendar.html">
                                                <span>
                                                    <img class="lazyload" alt="HRA Calculator | TaxManager.in"
                                                        src="/tm360/Images/icon/tools/calendar.webp">
                                                </span> Compliance Calendar
                                            </a>
                                        </li>
                                        <li>
                                            <a href="http://gst.taxmanager.in/">
                                                <span>
                                                    <img class="lazyload" alt="Tax Calculator | TaxManager.in"
                                                        src="/tm360/Images/icon/tools/tax-calculator.webp">
                                                </span> GST Search Tool
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/tm360/tools/calculator/hsn-code/">
                                                <span>
                                                    <img class="lazyload" alt="Tax Calculator | TaxManager.in"
                                                        src="/tm360/Images/icon/tools/tax-calculator.webp">
                                                </span> GST HSN Code
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/tm360/tools/tax-calculator.html">
                                                <span>
                                                    <img class="lazyload" alt="Tax Calculator | TaxManager.in"
                                                        src="/tm360/Images/icon/tools/hra-calculator.webp">
                                                </span> Old vs New Tax Regime
                                            </a>
                                        </li>

                                    </ul>
                                </li>
                            </ul>
                            <div class="supnabar">
                                <h4>Support </h4>
                                <ul>
                                    <li>
                                        <a href="mailto:support@TaxManager.in">
                                            <span><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
                                            <div class="texspan">
                                                <h5>eMail </h5>
                                                <p>support@TaxManager.in </p>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="tel:+91-9555331122">
                                            <span><i class="fas fa-phone-alt" aria-hidden="true"></i></span>
                                            <div class="texspan">
                                                <h5>Call Us</h5>
                                                <p>+91-9555331122</p>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://api.whatsapp.com/send?phone=919625445516&amp;text=Hi!%20I%20am%20looking%20for%20assistance%20in%20Tax%20Filing"><span><i
                                                    class="fa fa-whatsapp" aria-hidden="true"></i></span>
                                            <div class="texspan">
                                                <h5>Chat With Us</h5>
                                                <p>+91-9625445516</p>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>

                    <!-- User Icone -->
                    <div class="userco">
                        <a href="/login/login.aspx">
                            <span><img src="/tm360/Images/user.webp" alt=""></span>
                        </a>
                    </div>
                    <!-- Taggle -->
                    <div class="nav-toggle">
                        <div class="one"></div>
                        <div class="two"></div>
                        <div class="three"></div>
                    </div>
                </div>
            </div>
        </header>


        <div class="commanbanner combansec">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <div class="slitexar">
                            <h3>HRA Calculator </h3>
                            <h3 class="marqtext">HRA Calculator </h3>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="sliimgbox  fullsecimg">
                            <img src="/tm360/Images/banner/hra.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- breadcrumbs -->
        <div class="breadcrumbs comonmarpad">
            <div class="container breat">
                <div class="row">
                    <ul>
                        <li><a href="/">Home</a> <span><i class="fa-solid fa-arrow-right-long"></i></span></li>
                        <li><a href="http://www.taxmanager.in/calculator/taxcalculator.aspx">Income Tax Calculator</a>
                            <span><i class="fa-solid fa-arrow-right-long"></i></span>
                        </li>
                        <li><a href="http://www.taxmanager.in/calculator/hra.aspx">House Rent Allowance Calculator</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>


        <div class="formsectionareasediv">
            <table align="center">
                <tr>
                    <td width="782" height="45" align="center"><b>
                            <font face="Verdana" color="#000080" style="text-align: center">
                                <p align="center">House Rent Allowance Calculator Financial Year 2015-16</p>
                            </font>
                        </b></td>
                </tr>
            </table>
            <div align="center" width="70%">
                <form id="form1" runat="server">
                    <table border="0" cellspacing="4" cellpadding="3" bgcolor="#F0F0F0" style="height: 45px; width: 714px;">
                        <tr>
                            <td bgcolor="#666666">
                                <font color="#FFFFFF" face="Verdana" size="4" style="font-weight: 700; color: #CCCCCC">
                                    <input type="text" id="Text18" value="HRA" readonly="readonly" align="left" style="border-style: none; border-color: inherit; border-width: medium; background-color: transparent; color: #CCCCCC; font-weight: 700; font-size: large; width: 48px; margin-left: 0px;"
                                        onclick="view2(tblmain)" />
                                </font>
                            </td>
                        </tr>
                    </table>
                    <table id="tblmain" style="margin-top: 0px; background-color: #F0F0F0; width: 714px; height: 458px;" cellpadding="4px" cellspacing="4px">
                        <tr>
                            <td style="text-align: left; height: 10px;" colspan="3"></td>
                        </tr>
                        <tr>
                            <td style="text-align: left;" class="auto-style6"></td>
                            <td style="text-align: left;" class="auto-style9">
                                <font face="Verdana" size="2"><b>Annual Basic Salary</b>
                            </td>
                            <td class="auto-style62">
                                <font face="Verdana">
                                    <input type="text" name="T1" id="T1" size="20" onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46' style="border-color: lightgrey; font-weight: 700; font-size: 9pt; width: 188px; text-align: right; padding-right: 5px; height: 27px; margin-left: 14px;">
                                </font>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left;" class="auto-style11"></td>
                            <td style="text-align: left;" class="auto-style14">
                                <font face="Verdana" size="2"><strong>Annual Dearness Allowance (DA)*</strong></font>
                                <br>
                                <span style="color: Gray">
                                    <font face="Verdana" size="2">(Enter only if DA is&nbsp; considered while
                                        calculating
                                        retirement benefits)</font>
                                </span>
                            </td>
                            <td class="auto-style15">
                                <div>
                                    <input id="T2" name="T2" size="20" onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46' style="border-color: lightgrey; font-weight: 700; font-size: 9pt; height: 25px; width: 188px; text-align: right; padding-right: 5px; margin-top: 0px; margin-left: 14px;"
                                        type="text" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td height="30px" class="auto-style8">&nbsp;</td>
                            <td height="30px" style="text-align: left">
                                <font face="Verdana" size="2"><strong>Annual commission</strong></font><span class="aestrix">*</span>
                                <span class="auto-style21" style="color: Gray;">
                                    <font face="Verdana" size="2">(Enter only if commission is % of sales)
                                    </font>
                                </span>
                            </td>
                            <td height="30px" style="text-align: left" class="auto-style8">
                                <input id="T3" name="T6" size="20" onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46' style="border-color: lightgrey; font-weight: 700; text-align: right; padding-right: 5px; font-size: 9pt; height: 25px; width: 188px; margin-left: 14px; margin-top: 0px;"
                                    type="text" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8">&nbsp;</td>
                            <td height="30px" style="text-align: left" class="auto-style10">
                                <font face="Verdana" size="2"><strong>Annual HRA</strong></font><span class="aestrix">*</span>
                            </td>
                            <td height="30px" style="text-align: left">
                                <div>
                                    <input id="T4" name="T4" size="20" onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46' style="border-color: lightgrey; font-weight: 700; font-size: 9pt; height: 25px; width: 188px; text-align: right; padding-right: 5px; margin-left: 17px; margin-top: 13px;"
                                        type="text" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td height="30px" class="auto-style8">&nbsp;</td>
                            <td height="30px" class="auto-style10" style="text-align: left;">
                                <font face="Verdana" size="2"><strong>City of Residence*</strong></font>
                            </td>
                            <td>
                                <div class="r_deduction">
                                    <select name="ddlCity" id="ddlCity" tabindex="5" class="dropdown_Mandatory1">
                                        <option value="0">Select City</option>
                                        <option value="1">Metro</option>
                                        <option value="2">Non Metro</option>
                                    </select>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left" class="auto-style22"></td>
                            <td style="text-align: left" class="auto-style23">
                                <strong>
                                    <font face="Verdana" size="2" style="text-align: left"><strong>Annual Rent Payable
                                    </font>
                                </strong>
                            </td>
                            <td valign="middle" class="auto-style23">
                                <div>
                                    <input id="T5" name="T5" size="20" onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46' style="border-color: lightgrey; font-weight: 700; font-size: 9pt; height: 24px; width: 188px; margin-top: 15px; text-align: right; padding-right: 5px; margin-left: 14px;"
                                        type="text" />
                                    <br />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8">&nbsp;</td>
                            <td colspan="2" height="35px" align="center">
                                <input type="button" value="Submit" align="center" onclick="calculatehra()" style="border-style: none; border-color: inherit; border-width: medium; background-color: green; height: 23px; width: 87px; color: white; top: 0px; margin-top: 0px;" />
                            </td>
                        </tr>
                    </table>
                    <%-- <div style="position:absolute;">
            </div>
            <div style="margin-left: 668px; margin-top: 0px">
            </div>
            --%>
                        <table border="0" cellspacing="4" cellpadding="3" align="center" bgcolor="#F0F0F0" style="height: 45px; width: 714px;">
                            <tr>
                                <td bgcolor="#666666">
                                    <font color="#FFFFFF" face="Verdana" size="4" style="font-weight: 700; color: #CCCCCC">
                                        <input type="text" id="Text1" value="HRA Details" readonly="readonly" align="left" style="border-style: none; border-color: inherit; border-width: medium; background-color: transparent; color: #CCCCCC; font-weight: 700; font-size: large; width: 115px; margin-left: 0px;"
                                            onclick="view1(tblResult)" />
                                    </font>
                                </td>
                            </tr>
                        </table>

                        <div align="center" width="70%">
                            <table id="tblResult" style="display: none; background-color: #F0F0F0; width: 714px; height: 499px;" align="center" cellpadding="4px" cellspacing="4px">
                                <tr colspan="3">
                                    <td style="text-align: left" class="auto-style38" height="10px">&nbsp;</td>
                                    <td style="text-align: left" class="auto-style28" colspan="2" height="10px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style30">
                                        <strong>
                                <font face="Verdana" size="2">HRA Recieved</font>
                            </strong>
                                    </td>
                                    <%--<div class="r_deduction">--%>
                                        <td height="40px">
                                            <font face="Verdana">
                                                <input type="text" name="T1" id="Text15" readonly="true" size="20" onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46' style="background-color: transparent; border-style: none; border-color: inherit; border-width: medium; font-weight: 700; font-size: 9pt; height: 25px; width: 188px; text-align: right; padding-right: 5px; margin-top: 0px;">
                                            </font>
                                        </td>
                                </tr>
                                <tr>
                                    <%--<td class="auto-style1">&nbsp;<%--<input id="txtAnnualBasicSalary" tabindex="1"
                                class="textbox_Mandatoryrt"
                                msg="Please ensure entered value is numeric &amp;  positive only."
                                name="txtAnnualBasicSalary$txtnumber1" type="text" maxlength="10"
                                onkeypress="return CheckNumber(this,event,&#39;Please ensure entered value is numeric &amp;  positive only.&#39;,false, false,&#39;true&#39;,&#39;&#39;);"
                                onblur="CheckNumberblur(this,&#39;Please ensure entered value is numeric &amp;  positive only.&#39;,false, false,&#39;true&#39;,&#39;&#39;);" />--%>
                                        <%--< /div>--%>
                                </tr>
                                <tr>
                                    <td class="auto-style36">&nbsp;</td>
                                    <td class="auto-style32">
                                        <strong>
                                <font face="Verdana" size="2" colspan="20px">TaxFree</font>
                            </strong>
                                    </td>
                                    <td class="auto-style27">
                                        <div class="r_deduction">
                                            <input id="Text16" name="T2" size="20" readonly="true" onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46' style="background-color: transparent; border: none; font-weight: 700; font-size: 9pt; height: 25px; width: 188px; text-align: right; padding-right: 5px;"
                                                type="text" />
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style36">&nbsp;</td>
                                    <td class="auto-style32">
                                        <strong>
                                <font face="Verdana" size="2">Taxable</font>
                            </strong>
                                    </td>
                                    <td class="auto-style24">
                                        <div class="r_deduction">
                                            <input id="Text17" name="T3" size="20" readonly="true" onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46' style="background-color: transparent; border: none; font-weight: 700; text-align: right; padding-right: 5px; font-size: 9pt; height: 25px; width: 188px;"
                                                type="text" />
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <%--<td height="40" colspan="3" class="auto-style20">&nbsp;</td>--%>
                                </tr>
                                <tr>
                                    <td height="40" style="text-align: left;" class="auto-style38">&nbsp;</td>
                                    <td height="40" style="text-align: left;" colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td height="40" class="auto-style37" colspan="3"><strong>
                                <font face="Verdana" size="2" style="text-align: center">Taking maximum benefit of your
                                    House Rent Allowance and Saving Taxes? <a
                                        href="http://www.taxmanager.in/eti/caappointment.asp#CASchedule">Consult our CA
                                        now</a></font>
                        </td>
                    </tr>
                    <tr>
                        <td height="40" class="auto-style38">&nbsp;</td>
                        <td height="40" colspan="2">
                            <div>
                                <table bgcolor="#F0F0F0" border="0" cellpadding="4" cellspacing="4"
                                    style="width: 93%; height: 132px">
                                    <tr>
                                        <td>
                                            <div align="center">
                                                <table border="0" cellpadding="2" style="width: 100%">
                                                    <tr>
                                                        <td align="center" class="auto-style5"><a
                                                                href="http://www.TaxManager.in/login/login.aspx">
                                                                <img border="0" height="75"
                                                                    src="http://www.TaxManager.in/images/icon-01.png"
                                                                    width="75" /></a></td>
                                                        <td align="center" width="16%"><a
                                                                href="http://www.TaxManager.in/efile/hdfcefile.aspx">
                                                                <font color="#000080"><span
                                                                        style="text-decoration: none">
                                                                        <img border="0" height="75"
                                                                            src="http://www.TaxManager.in/images/icon-02.png"
                                                                            width="75" /></span></font>
                                                            </a></td>
                                                        <td align="center" width="16%"><a
                                                                href="http://www.TaxManager.in/efile/taxnoticeservice.aspx?Item=1">
                                                                <img border="0" height="75"
                                                                    src="http://www.TaxManager.in/images/icon-03.png"
                                                                    width="75" /></a></td>
                                                        <td align="center" width="16%"><a
                                                                href="http://www.TaxManager.in/efile/aspsubscribe.aspx?Item=1">
                                                                <img border="0" height="75"
                                                                    src="http://www.TaxManager.in/images/icon-05.png"
                                                                    width="75" /></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" class="auto-style5">
                                                            <p align="center"
                                                                style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                <font color="#000080" face="Verdana"
                                                                    style="font-size: 8pt"><span
                                                                        style="text-decoration: none">
                                                                        <font color="#000080"><a class="auto-style13"
                                                                                href="http://www.TaxManager.in/login/login.aspx"><span
                                                                                    class="auto-style12">Prepare Income
                                                                                    Tax Return</span></a></font>
                                                                    </span></font>
                                                            </p>
                                                            <p align="center"
                                                                style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                <font color="#000080" face="Verdana"
                                                                    style="font-size: 8pt"><a class="auto-style13"
                                                                        href="#Book_Mark"><span class="auto-style12">Do
                                                                            it yourself</span></a></font>
                                                            </p>
                                                        </td>
                                                        <td align="center" class="auto-style12" width="16%">
                                                            <p
                                                                style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                <font color="#000080" face="Verdana"
                                                                    style="font-size: 8pt"><a class="auto-style13"
                                                                        href="http://www.TaxManager.in/efile/hdfcefile.aspx"><span
                                                                            class="auto-style12">CA Assisted ITR
                                                                            e-Filing</span></a></font>
                                                            </p>
                                                            <p
                                                                style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                <font color="#000080" face="Verdana"
                                                                    style="font-size: 8pt"><a class="auto-style13"
                                                                        href="http://www.TaxManager.in/efile/hdfcefile.aspx"><span
                                                                            class="auto-style12">Let our CA e File your
                                                                            taxes</span></a></font>
                                                            </p>
                                                        </td>
                                                        <td align="center" width="16%">
                                                            <p
                                                                style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                <font color="#000080" face="Verdana"
                                                                    style="font-size: 8pt"><a class="auto-style13"
                                                                        href="http://www.TaxManager.in/efile/taxnoticeservice.aspx?Item=1"><span
                                                                            class="auto-style12">Tax Rectification/
                                                                            Notice</span></a></font>
                                                            </p>
                                                            <p
                                                                style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                <font color="#000080" face="Verdana"
                                                                    style="font-size: 8pt"><a class="auto-style13"
                                                                        href="http://www.TaxManager.in/efile/taxnoticeservice.aspx?Item=1"><span
                                                                            class="auto-style12">Reply to Tax
                                                                            Notices</span></a></font>
                                                            </p>
                                                        </td>
                                                        <td align="center" width="16%">
                                                            <p
                                                                style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                <font color="#000080" face="Verdana"
                                                                    style="font-size: 8pt"><a class="auto-style13"
                                                                        href="http://www.TaxManager.in/efile/aspsubscribe.aspx"><span
                                                                            class="auto-style12">Annual Subscription
                                                                            Package </span></a></font>
                                                            </p>
                                                            <p
                                                                style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                <font color="#000080" face="Verdana"
                                                                    style="font-size: 8pt"><a class="auto-style13"
                                                                        href="http://www.TaxManager.in/efile/aspsubscribe.aspx"><span
                                                                            class="auto-style12">Complete Tax Solutions
                                                                        </span></a></font>
                                                            </p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            </form>
        </div>
        </div>

        <!-- Footer -->
        <footer>
            <div class="container">
                <div class="row firstsection">
                    <div class="col-md-12 col-lg-1"></div>
                    <div class="col-md-4 col-lg-2">
                        <div class="footer_menu_Sec">
                            <h4>Assisted Tax Filing</h4>
                            <h5>Resident</h5>
                            <ul>
                                <li><a href="/efile/CAAssistedSalary.aspx">Salaried</a></li>
                                <li><a href="/efile/CAAssistedSalary50Lakhs.aspx">Salaried over Rs 50 Lakhs</a></li>
                                <li><a href="/efile/CAAssistedCG.aspx">Capital Gains (Equity &amp; MF Sale)</a></li>
                                <li><a href="/efile/CAAssistedCG_PS.aspx">Capital Gains (Property Sale)</a></li>
                                <li><a href="/efile/itr4.aspx">Professional/ Self Employed</a></li>
                                <li><a href="#">Presumptive Income</a></li>
                                <li><a href="/efile/ResidentwithForeignIncome.aspx">Foreign Income</a></li>
                            </ul>
                        </div>
                        <div class="footer_menu_Sec">
                            <h5 class="last">NRI</h5>
                            <ul>
                                <li><a href="/efile/NRI_FD.aspx">Other Income</a></li>
                                <li><a href="/efile/NRI_Equity.aspx">Capital Gains (Equity & MF Sale)</a></li>
                                <li><a href="/efile/NRI_PS.aspx">Capital Gains (Property Sale)</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4 col-lg-2">
                        <div class="footer_menu_Sec">
                            <h4>Tax Management</h4>
                            <h5>Resident</h5>
                            <ul>
                                <li><a href="/efile/aspsubscribe.aspx">Tax Advisory</a></li>
                                <li><a href="#">Tax Treatment on Property Sale</a></li>
                                <li><a href="/efile/aspsubscribe.aspx">Advance Tax Calculation</a></li>
                                <li><a href="/efile/aspsubscribe.aspx">Annual Subscription Package</a> </li>
                                <li><a href="/efile/ctcoptimizer.aspx">CTC Optimizer</a></li>
                                <li><a href="/efile/taxquery.aspx">Tax Query</a></li>
                                <li><a href="/efile/taxnoticeservice.aspx">Tax Notice – Demand/ Notice Reply</a></li>
                                <li><a href="/efile/taxnoticeservice.aspx">Tax Rectification</a></li>
                                <li><a href="/efile/taxhistoryservice.aspx">Tax Health Check-up</a></li>
                                <li><a href="/tm360/individuals/index.html">PAN Application</a></li>
                                <li><a href="/tm360/individuals/index.html">Digital Signature</a></li>
                            </ul>
                        </div>
                        <div class="footer_menu_Sec">
                            <h5 class="last">NRI</h5>
                            <ul>
                                <li><a href="#">Tax Treatment on Property Sale</a></li>
                                <li><a href="/efile/aspsubscribe.aspx">Advance Tax Calculation</a></li>
                                <li><a href="#">CA Certification on Foreign Remittance</a></li>
                                <li><a href="/efile/taxquery.aspx">Tax Query</a></li>
                                <li><a href="/efile/aspsubscribe.aspx">Annual Subscription Package</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4 col-lg-2">
                        <div class="footer_menu_Sec">
                            <h4>Investments</h4>
                            <ul>
                                <li><a href="/efile/aspsubscribe.aspx">Plan your Tax Savings</a></li>
                                <li><a href="#">Start Investing</a></li>
                                <li><a href="#">Mutual Funds</a></li>
                                <li><a href="#">Life Insurance</a></li>
                                <li><a href="#">Health Insurance</a></li>
                                <li><a href="#">Public Provident Fund</a></li>
                                <li><a href="#">National Saving Certificates</a></li>
                                <li><a href="#">NPS</a></li>
                                <li><a href="#">Others</a></li>
                            </ul>
                        </div>
                        <div class="footer_menu_Sec">
                            <h4>Startups</h4>
                            <ul>
                                <li><a href="/tm360/startup/LaunchYourStartup.html">Launch your Startup</a></li>
                                <li><a href="/tm360/startup/ManageYourStartup.html">Manage your Startup</a></li>
                                <li><a href="/tm360/startup/GrowYourStartup.html">Grow your Startup</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-2">
                        <div class="footer_menu_Sec">
                            <h4>Business</h4>
                            <h5>Assisted Tax Filing </h5>
                            <ul>
                                <li><a href="#">Proprietor</a></li>
                                <li><a href="#">Presumptive Income</a></li>
                                <li><a href="#">LLP</a></li>
                                <li><a href="#">Pvt Ltd Company</a></li>
                            </ul>
                        </div>
                        <div class="footer_menu_Sec">
                            <h5 class="last">Others</h5>
                            <ul>
                                <li><a href="/tm360/business/gst-services.html">GST Services</a></li>
                                <li><a href="/tm360/business/accounting-management.html">Accounting Retainership</a>
                                </li>
                                <li><a href="/tm360/business/tds-taxmanagement.html"> TDS &amp; Tax Management </a>
                                </li>
                                <li><a href="/tm360/business/compliancemgmt.html">Compliance Management</a></li>
                                <li><a href="/tm360/business/companyregistration.html">Company Registration </a></li>
                                <li><a href="/tm360/business/rbicompliances.html">RBI Compliances</a></li>
                                <li><a href="/tm360/business/trademarkregistrations.html">Trademark Registration</a>
                                </li>
                                <li><a href="/tm360/business/legalcompliances.html">Legal Compliances</a></li>
                                <li><a href="/tm360/business/governmentregistrations.html">Government Registrations</a>
                                </li>
                                <li><a href="/tm360/business/msmeservices.html">MSME Program</a></li>
                                <li><a href="/tm360/business/corporate-plan.html">Employee Care – eForm 16/ Payrolls
                                    </a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="footer_menu_Sec">
                            <h4>Us</h4>
                            <ul>
                                <li><a href="/tm360/About_Us.html">About Us</a></li>
                                <li><a href="/tm360/Contact.html">Contact Us</a></li>
                                <li><a href="/tm360/Contact.html">Support</a></li>
                                <li><a href="/tm360/career.html">Careers</a></li>
                                <li><a href="/tm360/blogs.html">Blogs</a></li>
                                <li><a href="/tm360/Inmedia.html">Media</a></li>
                                <li><a href="/leadership.html">Leadership</a></li>
                                <li><a href="/tm360/knowledgebank.html">Knowledge Bank</a></li>
                                <li><a href="/tm360/faqs.html">FAQ’s</a></li>
                                <li><a href="/tm360/gallery.html">Gallery</a></li>
                            </ul>
                        </div>
                        <div class="footer_menu_Sec">
                            <h4>Tools</h4>
                            <ul>
                                <li><a href="/calculator/23-24">Tax Calculator</a></li>
                                <li><a href="/tm360/tools/Calculator/Hra/Hra.aspx">HRA Calculator</a></li>
                                <li><a href="#">Other Calculators</a></li>
                            </ul>
                        </div>
                        <div class="footer_menu_Sec">
                            <h4>Support</h4>
                            <ul class="support_sec_are">
                                <li><a href="/tm360/Contact.html"><span><i class="fa fa-life-ring"></i></span> Need CA
                                        Help?</a>
                                </li>
                                <li><a href="tel:+91-9555331122"><span><i class="fa fa-phone"></i></span>
                                        +91-9555331122</a>
                                </li>
                                <li><a href="mailto:Support@TaxManager.in"><span><i class="fa fa-envelope"></i></span>
                                        Support@TaxManager.in</a></li>
                            </ul>
                            <ul class="catifications">
                                <li>
                                    <a href="/tm360/certified.html"><img
                                            src="/tm360/Images/RISING-ADVISORY-SERVICES-PRIVATE-LIMITED-ISO-9001.webp"
                                            alt="RISING ADVISORY SERVICES PRIVATE LIMITED ISO 9001"></a>
                                </li>
                                <li>
                                    <a href="https://www.ssl.com/faqs/faq-what-is-ssl/" target="_blank"><img
                                            src="/tm360/Images/ssl-1.webp"
                                            alt="RISING ADVISORY SERVICES PRIVATE LIMITED ISO 27001"></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="second-footer">
                <div class="container">
                    <div class="row secondfooter">
                        <div class="col-md-6 col-lg-3">
                            <ul>
                                <li><a href="/Privacy-Policy">Privacy Policy</a></li>
                                <li><a href="/Terms_Conditions">Terms & Conditions</a></li>
                            </ul>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <ul>
                                <li><a href="/Legal_Disclaimer">Legal Disclaimer</a></li>
                                <li><a href="/tm360/">Security</a></li>
                                <li><a href="/tm360/">Refund Policy</a></li>
                            </ul>
                        </div>
                        <div class="col-md-6 col-lg-2">
                            <span id="siteseal">
                                <script async type="text/javascript"
                                    src="https://seal.godaddy.com/getSeal?sealID=hfWt4Lbyg7Aq8Lv9qJbo518SKoqGu9oKaGpc35I4EQx12oaanVgRzZPAljsR">
                                    </script>
                            </span>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <ul class="social-mediased">
                                <li>
                                    <h2>Follow us on</h2>
                                </li>
                                <li><a target="_blank" href="https://www.facebook.com/efileitr"
                                        aria-label="Facebook taxmanager"><span><i
                                                class="fab fa-facebook-f"></i></span></a>
                                </li>
                                <li><a target="_blank" href="https://www.instagram.com/taxmanagerofficial/"
                                        aria-label="Instagram taxmanager"><span><i
                                                class="fa-brands fa-instagram"></i></span></a>
                                </li>
                                <li><a target="_blank" href="https://twitter.com/taxmanagerindia"
                                        aria-label="Twitter taxmanager"><span><i
                                                class="fa-brands fa-x-twitter"></i></span></a>
                                </li>
                                <li><a target="_blank" href="https://in.linkedin.com/company/taxmanager-in"
                                        aria-label="Linkedin Taxmanager"><span><i
                                                class="fab fa-linkedin-in"></i></span></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <!-- Copyright -->
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <p><span>@Rising Advisory Services Private Limited.</span> All rights reserved</p>
                </div>
            </div>
        </div>

        <!--fixed-->
        <div class="fixed">
            <ul>
                <li>
                    <a target="_blank"
                        href="https://api.whatsapp.com/send?phone=919625445516&amp;text=Hi I am Looking for Tax Expert Assistance"><i
                            class="fa-brands fa-whatsapp"></i></a>
                </li>
                <li>
                    <a href="/tm360/Contact.html"><img src="/tm360/Images/icon/support-icon.webp" alt=""></a>
                </li>
                <li id="clickshowpopup"><i class="fa-solid fa-envelope"></i></li>
            </ul>
        </div>

        <!-- Individual Services Btn  -->
        <div class="texbtnseaare">
            <button class="submit" id="IndividualServices">Let's Start</button>
        </div>

        <!-- Repblic Day-->
        <div class="repblicday">
            <canvas id="myCanvas"></canvas>
            <div id="chakraContainer"></div>
        </div>



        <!-- Script File -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Swiper Slider -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.2/js/swiper.min.js"></script>
        <!-- Scroller -->
        <script src="https://cdn.rawgit.com/peterhry/CircleType/master/dist/circletype.min.js"></script>
        <!-- carousel -->
        <script src="/tm360/js/owl.carousel.js"></script>
        <!-- lAzay load -->
        <script src="/tm360/js/jquery.lazyload.js"></script>
        <!-- Other js -->
        <script src="/tm360/js/main.js"></script>

        <!-- Slider Code -->
        <script src="/tm360/js/owl.slider.js"></script>

    </body>
    </html>