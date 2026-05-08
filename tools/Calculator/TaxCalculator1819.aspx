<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TaxCalculator.aspx.cs" Inherits="TaxCalculator" %>

    <html>

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Language" content="en-us">
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Income Tax Calculator</title>


        <script type="text/javascript">
            <!-
              if (screen.width <= 500) {
                  window.location = "http://www.TaxManager.in/Calculator/MobTaxCalculator1819.aspx";
              }
              //-->
        </script>

        <script type="text/javascript">


            function otherchange() {
                var tot = document.getElementById("T13").value + document.getElementById("T14").value - 0;

                var perc = (3 * tot) / 100;


                document.getElementById("T17").value = perc + tot - 0;
            }
            function view1() {
                document.getElementById("divtop").style.display = "block";
                document.getElementById("div3").style.display = "block";

                document.getElementById("div2").style.display = "none";
                document.getElementById("div4").style.display = "none";

                document.getElementById("div88").style.display = "none";
                document.getElementById("div55").style.display = "none";
                document.getElementById("btnnext1").style.display = "none";

            }
            function view2() {


                document.getElementById("divtop").style.display = "none";
                document.getElementById("div3").style.display = "none";


                document.getElementById("div2").style.display = "block";
                document.getElementById("div4").style.display = "none";
                document.getElementById("divinc").style.display = "block";

                document.getElementById("div55").style.display = "none";
                document.getElementById("div88").style.display = "none";
                document.getElementById("btnnext1").style.display = "block";


            }

            function view3() {

                document.getElementById("divtop").style.display = "none";
                document.getElementById("div3").style.display = "none";

                document.getElementById("div2").style.display = "none";
                document.getElementById("div4").style.display = "block";

                document.getElementById("div88").style.display = "block";
                document.getElementById("div55").style.display = "none";


                document.getElementById("btnnext1").style.display = "block";

            }

            function view4() {
                document.getElementById("divtop").style.display = "none";
                document.getElementById("div3").style.display = "none";

                document.getElementById("div2").style.display = "none";
                document.getElementById("div4").style.display = "none";
                document.getElementById("div55").style.display = "block";

                document.getElementById("btnnext1").style.display = "none";



            }


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
                    document.getElementById("div4").style.display = "block";
                    return false;

                }

                return true;
            }

        </script>

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
            function hideview1() {
                var c1 = document.getElementById("T1");
                //var l1 = document.getElementById("VT1");

                if (c1.value == "") {

                    alert("Please enter your complete Name ");
                    var textbox = document.getElementById("T1");
                    textbox.focus();
                    textbox.scrollIntoView();
                    return false;
                }


                var c1 = document.getElementById("T2");
                //var l1 = document.getElementById("VT1");

                if (c1.value == "") {

                    alert("Please enter Mobile Number");
                    var textbox = document.getElementById("T2");
                    textbox.focus();
                    textbox.scrollIntoView();
                    return false;
                }

                if (c1.value.length < 10) {
                    alert("Please enter valid 10 digits mobile no.");
                    var textbox = document.getElementById("T2");
                    textbox.focus();
                    textbox.scrollIntoView();
                    return false;
                }

                if (!IsNumeric(c1.value)) {
                    alert("Please enter valid 10 digits mobile no. Mobile number should start with 9 or 8 or 7");
                    var textbox = document.getElementById("T2");
                    textbox.focus();
                    textbox.scrollIntoView();
                    return false;
                }
                var c1 = document.getElementById("T20");
                //var l1 = document.getElementById("VT1");

                if (c1.value == "") {

                    alert("Please enter EMail");
                    var textbox = document.getElementById("T20");
                    textbox.focus();
                    textbox.scrollIntoView();
                    return false;
                }


                var c1 = document.getElementById("D1");

                if (c1.value == "Select Age") {

                    alert("Please choose Age");
                    return false;
                }
                if (!checkEmail()) {
                    return false;
                }

                var d1 = document.getElementById("divtop");

                if (d1.style.display == "none")
                    d1.style.display = "block";
                else
                    d1.style.display = "none";

                var d2 = document.getElementById("div2");
                //alert(d2.style.display);
                if (d2.style.display == "block")
                    d2.style.display = "none";
                else
                    d2.style.display = "block";

                var d3 = document.getElementById("div3");

                if (d3.style.display == "none")
                    d3.style.display = "block";
                else
                    d3.style.display = "none";

                document.getElementById("namelabel").value = document.getElementById("T1").value;
                document.getElementById("div1").style.display = "none";

            }


            function hideview2() {



                if (document.getElementById("T8").value == "0") {
                    var textbox = document.getElementById("T3");
                    textbox.focus();
                    textbox.scrollIntoView();
                    return false;

                }
                if (document.getElementById("T8").value == "0") {
                    return false;

                }
                else {

                    var d2 = document.getElementById("div2");

                    if (d2.style.display == "none") {
                        d2.style.display = "block";

                    }
                    else {
                        d2.style.display = "none";

                    }
                }



                var d2 = document.getElementById("div4");

                if (d2.style.display == "none") {
                    d2.style.display = "block";

                }
                else {
                    d2.style.display = "none";

                }






                //alert(c1.value);
                var d2 = document.getElementById("div88");

                if (d2.style.display == "none")
                    d2.style.display = "block";
                else
                    d2.style.display = "none";

                var d2 = document.getElementById("div66");

                if (d2.style.display == "none")
                    d2.style.display = "block";
                else
                    d2.style.display = "none";





            }

            var fields = "";
            function hideview3() {
                //var c1 = document.getElementById("T19");
                //if (c1.value == "") {
                //    alert("Required Field :Total Investments done u/s 80C, 80CCC");
                //    return false;
                //}

                //var c1 = document.getElementById("T20");
                //if (c1.value == "") {
                //    alert("Required Field :Interest benefit from house property");
                //    return false;
                //}
                //var c1 = document.getElementById("T21");
                //if (c1.value == "") {
                //    alert("Required Field :Expenditures u/s 80D and others like medical insurance");
                //    return false;
                //}
                //{


                if (document.getElementById("T27").value == "0") {
                    var textbox = document.getElementById("T19");
                    textbox.focus();
                    textbox.scrollIntoView();
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

                var d2 = document.getElementById("div55");

                if (d2.style.display == "none")
                    d2.style.display = "block";
                else
                    d2.style.display = "none";

                var txtamt = document.getElementById("T27").value;

                var age = document.getElementById("D1").selectedIndex;

                document.getElementById("div4").style.display = "none";


                if (document.getElementById("btnnext1").style.display == "none")
                    document.getElementById("btnnext1").style.display = "block";
                else
                    document.getElementById("btnnext1").style.display = "none";

                document.getElementById("divcomputation").style.display = "block";

                CalTax(txtamt, age);

                var Name = document.getElementById("T1").value;
                var Mobile = document.getElementById("T2").value;
                var eMail = document.getElementById("T20").value;
                var Age = document.getElementById("D1").value;
                var Sex = document.getElementById("sex").value;
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
                fields = Name + "','" + Sex + "'," + Mobile + ",'" + eMail + "','" + Age + "'," + Salary + "," + HP + "," + BP + "," + CG + "," + OtherSrc + "," + GTI + "," +
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
                textbox.scrollIntoView();
            }

            function onfail(err) {
                alert(err);
            }
            function aftersuccess(msg) {
                alert(msg);

            }

            function afterfail(err) { alert(err); }

        </script>
        <script type="text/javascript">
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
                            Tax = (NetSal - Limit) / 100 * 5;
                            Tax = Tax - 2500;
                            {
                                if (Tax <= 0)
                                    Tax = 0;
                            }
                        }
                        else if (NetSal >= 350000 && NetSal <= 500000) {
                            Tax = (NetSal - Limit) / 100 * 5;

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

                    document.getElementById("T13").value = (Tax);
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

                    document.getElementById("T14").value = Surcharge;
                    //alert(Surcharge + "Surcharge");

                }


                var tot = (document.getElementById("T13").value - 0) + (document.getElementById("T14").value - 0);
                //alert(tot + " tot");
                var perc = (tot / 100) * 4;
                //alert(perc + "perc");

                document.getElementById("T15").value = (perc - 0);

                document.getElementById("T17").value = (perc - 0) + (tot - 0);
                //alert(document.getElementById("T17").value + "Total Tax");




            }
            function hideviewall() {
                var div2 = document.getElementById("div2");
                div2.style.display = "none";

                var div4 = document.getElementById("div4");
                div4.style.display = "none";
                var div88 = document.getElementById("div88");
                div88.style.display = "none";
                var div55 = document.getElementById("div55");
                div55.style.display = "none";


                var textbox = document.getElementById("T1");
                textbox.focus();
                textbox.scrollIntoView();




            }

        </script>
        <style type="text/css">
            .auto-style2 {
                color: #CCCCCC;
            }

            #T1 {
                height: 30px;
                width: 188px;
                padding-left: 5px;
            }

            #T2 {
                height: 28px;
                width: 189px;
                font-weight: 700;
                padding-left: 5px;
            }

            #T20 {
                height: 28px;
                width: 190px;
                font-weight: 700;
                font-size: 9pt;
                padding-left: 5px;
            }

            #D1 {
                height: 28px;
                font-weight: 700;
            }

            #T3 {
                width: 190px;
                height: 28px;
                padding-right: 5px;
            }

            #T4 {
                height: 28px;
                width: 191px;
                padding-right: 5px;
            }

            #T5 {
                width: 190px;
                height: 22px;
                padding-right: 5px;
            }

            #T6 {
                width: 190px;
                height: 28px;
                padding-right: 5px;
            }

            #T7 {
                width: 190px;
                height: 28px;
                padding-right: 5px;
            }

            #T8 {
                height: 28px;
                width: 190px;
                padding-left: 5px;
            }

            #T19 {
                width: 190px;
                height: 28px;
                padding-right: 5px;
            }

            #T28 {
                width: 190px;
                height: 28px;
                padding-right: 5px;
            }

            #T21 {
                width: 190px;
                height: 28px;
                padding-right: 5px;
            }

            #T22 {
                width: 190px;
                height: 28px;
                padding-left: 5px;
            }

            #T27 {
                width: 189px;
                height: 27px;
                padding-left: 5px;
            }

            #T13 {
                width: 190px;
                height: 28px;
                padding-left: 5px;
            }

            #T14 {
                width: 190px;
                height: 28px;
                padding-left: 5px;
            }

            #T15 {
                width: 190px;
                height: 28px;
                padding-left: 5px;
            }

            #T17 {
                width: 190px;
                height: 28px;
                padding-left: 5px;
            }

            .auto-style4 {
                font-size: 9pt;
                font-weight: bold;
                width: 45%;
            }

            .auto-style5 {
                width: 16%;
            }

            .auto-style6 {
                text-align: center;
                color: #000066;
            }

            .auto-style9 {
                width: 45%;
            }

            .auto-style11 {
                font-size: 9pt;
                width: 45%;
            }

            .auto-style12 {
                color: #003366;
            }

            .auto-style13 {
                text-decoration: none;
            }
        </style>
    </head>

    <body onload="hideviewall()">

        <form id="form1" runat="server">
            <asp:ScriptManager runat="server" EnablePageMethods="true" ID="sm1"></asp:ScriptManager>

            <div align="center">
                <table border="0" width="100%" cellpadding="0" height="35" cellspacing="0">
                    <tr>
                        <td width="100%">
                            <div align="left">
                                <table border="0" width="100%" cellpadding="2">
                                    <tr>
                                        <td rowspan="2">
                                            <img border="0" src="http://www.taxmanager.in/images/logo.png" width="230"
                                                height="60">
                                        </td>
                                        <td width="100%" height="4"></td>
                                    </tr>
                                    <tr>
                                        <td width="100%" bgcolor="#FFFFFF">
                                            <div align="right">
                                                <table border="0" width="80%" cellpadding="2">
                                                    <tr>
                                                        <td width="15%" align="center" height="35">
                                                            <font face="Verdana">
                                                                <a href="http://www.taxmanager.in/home.html">
                                                                    <font color="#000000" style="font-size: 9pt">
                                                                        <span
                                                                            style="text-decoration: none; font-weight:700">Home</span>
                                                                    </font>
                                                                </a>
                                                            </font>
                                                        </td>
                                                        <td width="15%" align="center" height="35">
                                                            <font face="Verdana">
                                                                <a
                                                                    href="http://www.taxmanager.in/taxmanager-basic.html">
                                                                    <font color="#000000" style="font-size: 9pt">
                                                                        <span
                                                                            style="text-decoration: none; font-weight:700">Tax
                                                                            e
                                                                            Filing</span>
                                                                    </font>
                                                                </a>
                                                            </font>
                                                        </td>
                                                        <td width="15%" align="center" height="35">
                                                            <font face="Verdana">
                                                                <a href="http://www.taxmanager.in/asp.html">
                                                                    <font color="#000000" style="font-size: 9pt">
                                                                        <span
                                                                            style="text-decoration: none; font-weight:700">Tax
                                                                            Management</span>
                                                                    </font>
                                                                </a>
                                                            </font>
                                                        </td>
                                                        <td width="15%" align="center" height="35">
                                                            <font face="Verdana">
                                                                <a href="http://www.taxmanager.in/nri.html">
                                                                    <font color="#000000" style="font-size: 9pt">
                                                                        <span
                                                                            style="text-decoration: none; font-weight:700">NRI</span>
                                                                    </font>
                                                                </a>
                                                            </font>
                                                        </td>
                                                        <td width="15%" align="center" height="35">
                                                            <font face="Verdana">
                                                                <a
                                                                    href="http://www.taxmanager.in/taxmanager-taxpro.html">
                                                                    <font color="#000000" style="font-size: 9pt">
                                                                        <span
                                                                            style="text-decoration: none; font-weight:700">Professionals</span>
                                                                    </font>
                                                                </a>
                                                            </font>
                                                        </td>
                                                        <td width="15%" align="center" height="35" bgcolor="#FFFFFF"
                                                            bordercolor="#FFFFFF">
                                                            <b>
                                                                <font face="Verdana" style="font-size: 9pt">
                                                                    <a href="http://www.taxmanager.in/login/login.aspx">
                                                                        <font color="#000000"><span
                                                                                style="text-decoration: none">Login</span>
                                                                        </font>
                                                                    </a>/
                                                                    <a
                                                                        href="http://www.taxmanager.in/UserAc/Register.aspx?From=TaxM&Product=Basic">
                                                                        <font color="#000000"><span
                                                                                style="text-decoration: none">Register</span>
                                                                        </font>
                                                                    </a>
                                                                </font>
                                                            </b>
                                                        </td>
                                                        <td width="15%" align="center" height="35" bgcolor="#FFFFFF"
                                                            bordercolor="#FFFFFF">
                                                            <font face="Verdana">
                                                                <a href="http://www.taxmanager.in/support.html">
                                                                    <font color="#000000" style="font-size: 9pt">
                                                                        <span
                                                                            style="text-decoration: none; font-weight:700">Support</span>
                                                                    </font>
                                                                </a>
                                                            </font>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            <table border="0" width="100%" cellpadding="0" cellspacing="0">
                <tr>
                    <td>
                        <hr noshade style="background-color: #DDF9FF" color="#000080">
                    </td>
                </tr>
            </table>



            <div align="center">
                <table border="0" width="782" cellpadding="2" align="center">
                    <tr>
                        <td width="782" height="45">
                            <div align="center">
                                <table border="0" width="715" cellspacing="4" cellpadding="4">
                                    <tr>
                                        <td>
                                            <p align="center"><b>
                                                    <font face="Verdana" size="2">Tax Calculator &gt;&gt;
                                                        <a
                                                            href="http://www.taxmanager.in/calculator/taxcalculator.aspx">
                                                            Income Tax Calculator</a> ||
                                                        <a href="http://www.taxmanager.in/calculator/hra.aspx">HRA
                                                            Calculator</a> || <a
                                                            href="http://www.taxmanager.in/calculator/taxcalculator1718.aspx">Income
                                                            Tax Calculator FY 17-18</a>
                                                    </font>
                                                </b>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="782" height="45"><b>
                                <font face="Verdana" color="#000080" style="text-align: center">
                                    <p align="center">&nbsp;Income Tax
                                        Calculator Financial Year 2018-19</p>
                                </font>
                            </b></td>
                    </tr>
                    <tr>
                        <div id="div1">
                            <td width="782" align="center">&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="782" align="center">
                            <p align="center">
                            <table border="0" width="100%" cellpadding="2" bgcolor="#F0F0F0" style="align:center;"
                                align="center">
                                <tr>
                                    <td bgcolor="#666666" height="55">
                                        <table border="0" width="100%" cellspacing="4" cellpadding="3">
                                            <tr>
                                                <td>
                                                    <font color="#FFFFFF" face="Verdana" size="4"
                                                        style="font-weight: 700; color: #CCCCCC">
                                                        <input type="text" id="t1" value="Personal Details"
                                                            readonly="readonly"
                                                            style="background-color:transparent;border:none;color:#CCCCCC;font-weight:700;font-size:large;"
                                                            onclick="view1()" />
                                                    </font>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
            </div>
            <tr>
                <td>

                    <table border="0" width="100%" cellpadding="2" id="divtop">
                        <tr>
                            <td width="18%" height="0">&nbsp;</td>
                            <td width="30%" height="0">&nbsp;</td>
                            <td width="16%" height="0">&nbsp;</td>
                            <td width="33%" height="0">&nbsp;</td>
                        </tr>
                        <tr>
                            <td height="40">
                                <font face="Verdana" size="2"><strong>Name</strong></font>
                            </td>
                            <td height="40">
                                <font face="Verdana">
                                    <input type="text" name="T1" id="T1" size="20"
                                        style="border-color:lightgrey; font-weight: 700; font-size: 9pt;">
                                </font>

                            </td>
                            <td height="40">
                                <font face="Verdana" size="2"><strong>Gender</strong></font>
                            </td>
                            <td height="40">
                                <font face="Verdana" size="2">
                                    <input type="radio" name="sex" value="m" size="2" id="sex">Male

                                    <input type="radio" name="sex" value="f" size="2" id="sex">Female
                        </tr>
                        <tr>
                            <td height="40">
                                <font face="Verdana" size="2" style="border-color:lightgrey;"><strong>Mobile</strong>
                                </font>
                            </td>
                            <td height="40">
                                <font face="Verdana">

                                    <input type="text" name="T2" id="T2" maxlength="10"
                                        onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                </font>
                            </td>
                            <td height="40">
                                <font face="Verdana" size="2" style="border-color:lightgrey; font-weight: 700;">Email
                                    Id</font>
                            </td>
                            <td height="40">
                                <font face="Verdana">
                                    <input type="text" name="T20" size="20" id="T20">
                                </font>
                            </td>
                        </tr>
                        <tr>
                            <td height="40">
                                <font face="Verdana" size="2"><strong>Age</strong></font>
                            </td>
                            <td height="40">
                                <font face="Verdana">
                                    <select size="1" name="D1" id="D1">
                                        <option>Select Age</option>
                                        <option selected value="below 60">Less than 60</option>
                                        <option value="More than 60">More than 60</option>
                                        <option> More than 80</option>
                                    </select>
                                </font>
                            </td>
                            <td height="40">&nbsp;</td>
                            <td height="40">&nbsp;</td>
                        </tr>
                    </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td height="35">
                    <div align="right" id="div3">
                        <%--<table border="0" width="150" cellspacing="4" cellpadding="4" bgcolor="#336699" height="30">
            <tr>
                <td bgcolor="#003399">
                    <p align="center"><b>
                            <font face="Verdana" color="#FF9900">--%>
                                <input type="button" value="Next" id="btnnext" onchange="validations()"
                                    onclick="hideview1()"
                                    style="background-color:green;color:white ;height:25px;width:80px;border:none;" />


                                <%-- </font>
                        </b>
                </td>
            </tr>
            </table>--%>
            </div>
            </td>
            </tr><%--< /div>--%>


                <tr>
                    <div id="divinc">
                        <td height="55" bgcolor="#666666">
                            <table border="0" width="100%" cellspacing="4" cellpadding="4">
                                <tr>
                                    <td class="auto-style2">
                                        <font color="#FFFFFF" face="Verdana" size="4"
                                            style="font-weight: 700; color: #CCCCCC"><strong><input type="text"
                                                    id="lbl2" value="Income Details" readonly="readonly"
                                                    onclick="view2()"
                                                    style="background-color:transparent;border:none;color:#CCCCCC;font-weight:700;font-size:large;" /></strong>
                                        </font>
                                    </td>
                                </tr>
                            </table>
                        </td>
                </tr>

                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td height="40">
                        <%--<div id="div5" style="display:none;" --%>
                            <table border="0" width="100%" cellpadding="2" id="div2">
                                <tr>
                                    <td height="40" class="auto-style11">
                                        <font face="Verdana"><strong>Income from Salary (Taxable)</strong></font>
                                    </td>
                                    <td width="58%" height="40">
                                        <font face="Verdana">
                                            <input type="text" name="T3" id="T3" size="20" value="0" onchange="fill();"
                                                style="text-align:right; font-weight: 700;"
                                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40" class="auto-style11">
                                        <font face="Verdana"><strong>Income
                                                from House Property (Rental Income)</strong></font>
                                    </td>
                                    <td height="40">
                                        <font face="Verdana">
                                            <input type="text" name="T4" id="T4" size="20" value="0" onchange="fill()"
                                                style="text-align:right; font-weight: 700;"
                                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40" class="auto-style11">
                                        <font face="Verdana"><strong>Income
                                                from Business and Profession</strong></font>
                                    </td>
                                    <td height="40">
                                        <font face="Verdana">
                                            <input type="text" name="T5" id="T5" size="20" value="0" onchange="fill()"
                                                style="text-align:right; font-weight: 700;"
                                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40" class="auto-style11">
                                        <font face="Verdana" value="0"><strong>Income
                                                from Sale of Assets (Capital Gains)</strong></font>
                                    </td>
                                    <td height="40">
                                        <font face="Verdana">
                                            <input type="text" name="T6" id="T6" size="20" value="0" onchange="fill()"
                                                style="text-align:right; font-weight: 700;"
                                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40" class="auto-style11">
                                        <font face="Verdana"><strong>Income
                                                from Bank Interest and Others</strong></font>
                                    </td>
                                    <td height="40">
                                        <font face="Verdana">
                                            <input type="text" name="T7" size="20" id="T7" value="0" onchange="fill()"
                                                style="text-align:right; font-size: 9pt; font-weight: 700;"
                                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40" class="auto-style9">&nbsp;</td>
                                    <td height="40">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td height="40" class="auto-style9">
                                        <font face="Verdana" size="2"><strong>Total
                                                Earned Income</strong></font>
                                    </td>
                                    <td height="40">
                                        <font face="Verdana" size="4">
                                            <input type="text" name="T8" size="20" readonly="readonly" border="0"
                                                id="T8" onchange="fill()"
                                                style="background-color:#F0F0F0;border:none; font-weight: 700; font-size: 10pt;text-align:right;"
                                                font-weight: 700;" value="0"
                                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40" class="auto-style9">&nbsp;</td>
                                    <td height="40">
                                        <div align="right" id="div22">
                                            <%--<table border="0" width="150" cellspacing="4" cellpadding="4"
                                                bgcolor="#336699" height="30">
                                <tr>
                                    <td bgcolor="#003399">
                                        <p align="center"><b>--%>
                                                <%--<font face="Verdana" color="#FF9900">--%>
                                                    <input type="button" value="Next" id="Button1"
                                                        onclick=" fill(); hideview2();"
                                                        style="background-color:green;color:white ;height:25px;width:80px;border:none;" />
                                                    <%--< /font></b>
                                    </td>
                                </tr>
                            </table>--%>
                            </div>
                    </td>
                </tr>
                </table>
                <%-- </div>--%>
                    </td>
                    </tr>

                    <div>
                        <tr>
                            <td height="55" bgcolor="#666666" style="font-weight: 700">
                                <table border="0" width="100%" cellspacing="4" cellpadding="4">
                                    <tr>
                                        <td class="auto-style2">
                                            <font color="#FFFFFF" face="Verdana" size="4"
                                                style="font-weight: 700; color: #CCCCCC"><strong><input type="text"
                                                        value="Deductions" readonly="readonly" onclick="view3()"
                                                        style="background-color:transparent;border:none;color:#CCCCCC;font-weight:700;font-size:large;"></strong>
                                            </font>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td height="40">
                                <table border="0" width="100%" cellpadding="2" id="div4">
                                    <tr>
                                        <td class="auto-style9">
                                            &nbsp;</td>
                                        <td width="58%">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style11">
                                            <font face="Verdana"><strong>Total Investments done
                                                    u/s 80C, 80CCC</strong></font>
                                        </td>
                                        <td width="58%" height="40">
                                            <font face="Verdana">
                                                <input type="text" name="T19" id="T19" onchange="fillanother()"
                                                    value="0" size="20" style="text-align:right; font-weight: 700;"
                                                    onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                            </font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style9">
                                            <font face="Verdana" size="2" style="font-size: 9pt; font-weight: 700">
                                                Interest benefit from house property</font>
                                        </td>
                                        <td height="40">
                                            <font face="Verdana">
                                                <input type="text" name="T28" id="T28" onchange="fillanother()"
                                                    size="20" value="0" style="text-align:right; font-weight: 700;"
                                                    onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                            </font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style11">
                                            <font face="Verdana">
                                                <strong>Expenditures u/s 80D and others like<br />
                                                    Medical
                                                    Insurance</strong>
                                            </font>
                                        </td>
                                        <td height="40">
                                            <font face="Verdana">
                                                <input type="text" name="T21" id="T21" onchange="fillanother()"
                                                    value="0" size="20"
                                                    style="text-align:right; font-size: 9pt; font-weight: 700;"
                                                    onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                            </font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style9">&nbsp;</td>
                                        <td height="40">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style9">
                                            <font face="Verdana" size="2" value="0" style="font-weight: 700">Total
                                                Deductions</font>
                                        </td>
                                        <td height="40">
                                            <font face="Verdana">
                                                <input type="text" name="T22" id="T22" readonly="readonly"
                                                    onchange="fillanother()"
                                                    style="background-color:#F0F0F0;border:none; font-weight: 700; font-size: 10pt;text-align:right;"
                                                    font-weight: 700;" value="0" size="20"
                                                    onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                            </font>
                                        </td>
                                    </tr>
                                    <tr>


                                        <td height="40" class="auto-style9">
                                            <font face="Verdana" size="2">
                                                <strong>Net Taxable Income</strong>
                                            </font>
                                        </td>
                                        <td height="40" width="58%">
                                            <font face="Verdana">
                                                <br />
                                                <input type="text" name="T27" size="20" id="T27"
                                                    onchange="fill();fillanother();" readonly="readonly"
                                                    style="background-color:#F0F0F0;border:none; font-weight: 700; font-size: 10pt;text-align:right;"
                                                    font-weight: 700;" value="0"><br />
                                                <br />


                                    </tr>
                                    <track />


                                </table>
                            </td>
                        </tr>

                        <tr>
                            <td height="40">



                                <div align="right" id="div88">
                                    <table>
                                        <tr>
                                            <td>
                                                <%--<p align="center"><b>
                                                        <font face="Verdana" color="#FF9900">--%>


                                                            <input type="button" value="Next" id="btnnext1"
                                                                onclick=" fill(); netfill(); hideview3(); "
                                                                style="background-color:green;color:white ;height:25px;width:80px;border:none;" />

                                                            <input type="text" readonly="readonly" border="0"
                                                                id="txtlbl" style="display:none;" runat="server" />


                                                            <%-- </font>
                                                    </b>--%>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </div>
                    <div>
                        <tr>
                            <td height="55" bgcolor="#666666">
                                <table border="0" width="100%" cellspacing="4" cellpadding="4" id="divcomputation">
                                    <tr>
                                        <td class="auto-style2">
                                            <font face="Verdana" size="4"><strong><input type="text" readonly="readonly"
                                                        style="background-color:transparent;border:none;color:#CCCCCC;font-weight:700;font-size:large;"
                                                        value="Tax Computation" onclick="view4()" /></strong></font>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>

                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>

                                <table border="0" width="100%" cellpadding="2" id="div55" height="400px">
                                    <tr>
                                        <td height="40" class="auto-style4">
                                            <font face="Verdana">Basic Tax on Total
                                                Income</font>
                                        </td>
                                        <td width="58%" height="40">
                                            <font face="Verdana">
                                                <input type="text" name="T13" id="T13" size="20" value="0"
                                                    onchange="otherchange()"
                                                    style="background-color:#F0F0F0;border:none; font-weight: 700; font-size: 10pt;text-align:right;"
                                                    font-weight: 700;" value="0"
                                                    onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                            </font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style4">
                                            <font face="Verdana">
                                                Surcharge</font>
                                        </td>
                                        <td height="40">
                                            <font face="Verdana">
                                                <input type="text" name="T14" id="T14" size="20"
                                                    onchange="otherchange()"
                                                    style="background-color:#F0F0F0;border:none; font-weight: 700; font-size: 10pt;text-align:right;"
                                                    font-weight: 700;" value="0" value="0" style="text-align:right;"
                                                    onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                            </font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style4">
                                            <font face="Verdana">
                                                Education Cess @ 3%</font>
                                        </td>
                                        <td height="40">
                                            <font face="Verdana">
                                                <input type="text" name="T15" id="T15" onchange="fillother()" size="20"
                                                    style="background-color:#F0F0F0;border:none; font-weight: 700; font-size: 10pt;text-align:right;"
                                                    font-weight: 700;" value="0" value="0" style="text-align:right;"
                                                    onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                            </font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style9">&nbsp;</td>
                                        <td height="40">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style9">
                                            <font face="Verdana" size="2"><strong>Total
                                                    Taxes to be Paid</strong></font>
                                        </td>
                                        <td height="40">
                                            <font face="Verdana">
                                                <input type="text" name="T17" id="T17" size="20"
                                                    style="background-color:#F0F0F0;border:none; font-weight: 700; font-size: 10pt;text-align:right;"
                                                    font-weight: 700;" value="0"
                                                    onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                            </font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style9">&nbsp;</td>
                                        <td height="40">&nbsp;</td>
                    </div>
                    </tr>
                    </div>

                    <tr>
                        <td height="40" colspan="2" class="auto-style6"><strong>
                                <font face="Verdana" size="2">Do you think you are paying high taxes and want to save
                                    tax? <a href="http://www.taxmanager.in/eti/caappointment.asp#CASchedule">Consult our
                                        CA now</a></font>
                        </td>
                    </tr>
                    <tr>
                        <td height="40" colspan="2">
                            <div align="center">
                                <table border="0" width="100%" cellspacing="4" cellpadding="4" bgcolor="#F0F0F0">
                                    <tr>
                                        <td>
                                            <div align="center">
                                                <table border="0" width="100%" cellpadding="2">
                                                    <tr>
                                                        <td align="center" class="auto-style5">
                                                            <a href="http://www.TaxManager.in/login/login.aspx">
                                                                <img border="0"
                                                                    src="http://www.TaxManager.in/images/icon-01.png"
                                                                    width="75" height="75"></a>
                                                        </td>
                                                        <td width="16%" align="center">
                                                            <a href="http://www.TaxManager.in/efile/hdfcefile.aspx">
                                                                <font color="#000080">
                                                                    <span style="text-decoration: none">
                                                                        <img border="0"
                                                                            src="http://www.TaxManager.in/images/icon-02.png"
                                                                            width="75" height="75"></span>
                                                                </font>
                                                            </a>
                                                        </td>
                                                        <td width="16%" align="center">
                                                            <a
                                                                href="http://www.TaxManager.in/efile/taxnoticeservice.aspx?Item=1">
                                                                <img border="0"
                                                                    src="http://www.TaxManager.in/images/icon-03.png"
                                                                    width="75" height="75"></a>
                                                        </td>
                                                        <td width="16%" align="center">
                                                            <a
                                                                href="http://www.TaxManager.in/efile/aspsubscribe.aspx?Item=1">
                                                                <img border="0"
                                                                    src="http://www.TaxManager.in/images/icon-05.png"
                                                                    width="75" height="75"></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" class="auto-style5">
                                                            <p align="center"
                                                                style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                <font face="Verdana" color="#000080"
                                                                    style="font-size: 8pt">
                                                                    <span style="text-decoration: none">
                                                                        <font color="#000080">
                                                                            <a href="http://www.TaxManager.in/login/login.aspx"
                                                                                class="auto-style13"> <span
                                                                                    class="auto-style12">Prepare Income
                                                                                    Tax Return</span></a>
                                                                        </font>
                                                                    </span>
                                                                </font>
                                                            </p>
                                                            <p align="center"
                                                                style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                <font face="Verdana" color="#000080"
                                                                    style="font-size: 8pt">
                                                                    <a href="#Book_Mark" class="auto-style13">
                                                                        <span class="auto-style12">Do it
                                                                            yourself</span></a>
                                                                </font>
                                                        </td>
                                                        <td width="16%" align="center" class="auto-style12">
                                                            <p
                                                                style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                <font face="Verdana" color="#000080"
                                                                    style="font-size: 8pt">
                                                                    <a href="http://www.TaxManager.in/efile/hdfcefile.aspx"
                                                                        class="auto-style13">
                                                                        <span class="auto-style12">CA Assisted ITR
                                                                            e-Filing</span></a>
                                                                </font>
                                                            </p>
                                                            <p
                                                                style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                <font face="Verdana" color="#000080"
                                                                    style="font-size: 8pt">
                                                                    <a href="http://www.TaxManager.in/efile/hdfcefile.aspx"
                                                                        class="auto-style13">
                                                                        <span class="auto-style12">Let our CA e File
                                                                            your taxes</span></a>
                                                                </font>
                                                            </p>
                                                        </td>
                                                        <td width="16%" align="center">
                                                            <p
                                                                style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                <font face="Verdana" color="#000080"
                                                                    style="font-size: 8pt">
                                                                    <a href="http://www.TaxManager.in/efile/taxnoticeservice.aspx?Item=1"
                                                                        class="auto-style13">
                                                                        <span class="auto-style12">Tax Rectification/
                                                                            Notice</span></a>
                                                                </font>
                                                            </p>
                                                            <p
                                                                style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                <font face="Verdana" color="#000080"
                                                                    style="font-size: 8pt">
                                                                    <a href="http://www.TaxManager.in/efile/taxnoticeservice.aspx?Item=1"
                                                                        class="auto-style13">
                                                                        <span class="auto-style12">Reply to Tax
                                                                            Notices</span></a>
                                                                </font>
                                                            </p>
                                                        </td>
                                                        <td width="16%" align="center">
                                                            <p
                                                                style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                <font face="Verdana" color="#000080"
                                                                    style="font-size: 8pt">
                                                                    <a href="http://www.TaxManager.in/efile/aspsubscribe.aspx"
                                                                        class="auto-style13">
                                                                        <span class="auto-style12">Annual Subscription
                                                                            Package
                                                                        </span></a>
                                                                </font>
                                                            </p>
                                                            <p
                                                                style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                <font face="Verdana" color="#000080"
                                                                    style="font-size: 8pt">
                                                                    <a href="http://www.TaxManager.in/efile/aspsubscribe.aspx"
                                                                        class="auto-style13">
                                                                        <span class="auto-style12">Complete Tax
                                                                            Solutions
                                                                        </span></a>
                                                                </font>
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
                    <tr>
                        <td class="auto-style9">
                            <div id="divclean"
                                style="display:none;background-color:white;height:260px;width:776px; left:226px; top:964px; position:absolute;">
                            </div>

                        </td>

                    </tr>


                    <tr>
                        <td class="auto-style9">
                            &nbsp;</td>

                    </tr>


                    <tr>
                        <td class="auto-style9">
                            &nbsp;</td>

                    </tr>


                    </table>
                    </td>
                    </tr>
                    </table>
                    </p>


        </form>

    </body>

    </html>