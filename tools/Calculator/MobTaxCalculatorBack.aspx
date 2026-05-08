<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TaxCalculator.aspx.cs" Inherits="TaxCalculator" %>

    <html>

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Language" content="en-us">
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Income Tax Calculator</title>


        <meta name="viewport" content="width=device-width">
        <style>
            img {
                max-width: 100%;
                text-align: center;
            }

            width {
                max-width: 100%;
            }
        </style>

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

                    return false;

                }

                document.getElementById("T27").value = document.getElementById("T8").value;

            }
            function fillanother() {
                var txt1 = document.getElementById("T19").value - 0;

                if (txt1 >= 150000) {
                    txt1 = document.getElementById("T19").value = 150000;

                }

                var txt2 = document.getElementById("T28").value - 0;


                if (txt2 >= 200000) {
                    txt2 = document.getElementById("T28").value = 200000;
                }

                var txt3 = document.getElementById("T21").value - 0;

                document.getElementById("T22").value = txt1 + txt2 + txt3;

                document.getElementById("T27").value = document.getElementById("T8").value - document.getElementById("T22").value;

                if (document.getElementById("T27").value < 0)
                    document.getElementById("T27").value = 0;

            }

            function netfill() {

                if (document.getElementById("T27").value == 0) {
                    alert("One of the Income Source is required, Income cannot be NIL");
                    document.getElementById("div4").style.display = "none";
                    return false;

                }

                return true;
            }

        </script>

        <script type="text/javascript">

            function hideview1() {
                var c1 = document.getElementById("T1");
                //var l1 = document.getElementById("VT1");

                if (c1.value == "") {

                    alert("Please enter your complete Name ");
                    return false;
                }


                var c1 = document.getElementById("T2");
                //var l1 = document.getElementById("VT1");

                if (c1.value == "") {

                    alert("Please enter Mobile Number");
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

                var c1 = document.getElementById("T3");

                var d2 = document.getElementById("div4");

                if (d2.style.display == "none") {
                    d2.style.display = "block";

                }
                else {
                    d2.style.display = "none";

                }

                var d2 = document.getElementById("div2");

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
                        if (NetSal <= 500000) {
                            Tax = (NetSal - Limit) / 100 * 10;
                            Tax = Tax - 2000;
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
                                Tax = Tax + ((B - A) / 100 * 10);
                                Tax = Tax + ((C / 100) * 20);
                            }
                            else if (NetSal > 1000000) {
                                A = Limit;
                                B = 500000;
                                C = 1000000 - B;
                                D = NetSal - (B + C);
                                Tax = Tax + ((B - A) / 100 * 10);
                                Tax = Tax + ((C / 100) * 20);
                                Tax = Tax + ((D / 100) * 30);
                            }
                        }
                    }

                    if (NetSal <= 10000000)
                        Surcharge = 0;
                    else {
                        Surcharge = (Tax / 100) * 10;
                        Surcharge = document.getElementById("T14").value - 0;

                    }
                    functionReturnValue = Tax;
                }
                else {

                    functionReturnValue = 0;
                }
                //alert(functionReturnValue + "  ");
                document.getElementById("T13").value = functionReturnValue;

                //var sur = 

                var tot = (document.getElementById("T13").value - 0) + (document.getElementById("T14").value - 0);
                //alert(tot + " tot");
                var perc = (tot / 100) * 3;
                //////alert(perc + "perc");

                document.getElementById("T15").value = (perc - 0);

                document.getElementById("T17").value = (perc - 0) + (tot - 0);



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

            }

        </script>
        <style type="text/css">
            .auto-style2 {
                color: #CCCCCC;
            }

            #T1 {
                height: 30px;
                width: 188px;
            }

            #T2 {
                height: 28px;
                width: 189px;
                font-weight: 700;
            }

            #T20 {
                height: 28px;
                width: 190px;
                font-weight: 700;
                font-size: 9pt;
            }

            #D1 {
                height: 28px;
                font-weight: 700;
            }

            #T3 {
                width: 190px;
                height: 28px;
            }

            #T4 {
                height: 28px;
                width: 191px;
            }

            #T5 {
                width: 190px;
                height: 22px;
            }

            #T6 {
                width: 190px;
                height: 28px;
            }

            #T7 {
                width: 190px;
                height: 28px;
            }

            #T8 {
                height: 28px;
                width: 190px;
            }

            #T19 {
                width: 190px;
                height: 28px;
            }

            #T28 {
                width: 190px;
                height: 28px;
            }

            #T21 {
                width: 190px;
                height: 28px;
            }

            #T22 {
                width: 190px;
                height: 28px;
            }

            #T27 {
                width: 189px;
                height: 27px;
            }

            #T13 {
                width: 190px;
                height: 28px;
            }

            #T14 {
                width: 190px;
                height: 28px;
            }

            #T15 {
                width: 190px;
                height: 28px;
            }

            #T17 {
                width: 190px;
                height: 28px;
            }

            .auto-style4 {
                font-size: 9pt;
                font-weight: bold;
                text-align: center;
            }

            #T29 {
                height: 30px;
                width: 188px;
            }

            .auto-style5 {
                text-align: center;
            }

            .auto-style6 {
                font-size: 9pt;
                text-align: center;
            }

            .auto-style7 {
                font-size: 10pt;
                font-weight: bold;
            }
        </style>
    </head>

    <body {width:100%;margin:auto;min-width:200px;max-width:2000px,align:center} onload="hideviewall()">

        <form id="form1" runat="server">
            <asp:ScriptManager runat="server" EnablePageMethods="true" ID="sm1"></asp:ScriptManager>
            <div align="center">
                <table border="0" width="100%" cellpadding="0" height="35" cellspacing="0">
                    <tr>
                        <td width="100%">
                            <div align="center">
                                <table border="0" width="100%" cellpadding="2">
                                    <tr>
                                        <td>
                                            <p align="center"><img border="0"
                                                    src="http://www.taxmanager.in/images/logo.png" width="230"
                                                    height="60" align="center"></p>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>




            <div align="center">
                <table border="0" width="100%" cellpadding="2" align="center">
                    <tr>
                        <td width="70%" height="45">
                            <font face="Verdana" color="#000080" style="text-align: center">
                                <p align="center" class="auto-style7">&nbsp;Income Tax
                                    Calculator Financial Year 2015-16</p>
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <div id="div1">
                            <td width="70%" align="center">&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="70%" align="center">
                            <p align="center">
                            <table border="0" width="100%" cellpadding="2" bgcolor="#F0F0F0" style="align:center"
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
                            <td height="0" class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td height="40" class="auto-style5">
                                <font face="Verdana" size="2"><strong>Name</strong></font>
                            </td>
                        </tr>
                        <tr>
                            <td height="40" class="auto-style5">
                                <font face="Verdana">
                                    <input type="text" name="T1" id="T1" size="20" onfocus="Print Name" tabindex="1"
                                        style="border-color:lightgrey; font-weight: 700; font-size: 9pt;">
                                </font>
                            </td>
                        </tr>
                        <tr>
                            <td height="40" class="auto-style5">
                                <font face="Verdana" size="2"><strong>Gender</strong></font>
                            </td>
                        </tr>
                        <tr>
                            <td height="40" class="auto-style5">
                                <font face="Verdana" size="2">
                                    <input type="radio" name="sex" value="m" size="2" id="sex">Male

                                    <input type="radio" name="sex" value="f" size="2" id="Radio1">Female
                            </td>
                        </tr>
                        <tr>
                            <td height="40" class="auto-style5">
                                <font face="Verdana" size="2" style="border-color:lightgrey;"><strong>Mobile</strong>
                                </font>
                            </td>
                        </tr>
                        <tr>
                            <td height="40" class="auto-style5">
                                <font face="Verdana">
                                    <input type="text" name="T2" id="T2" maxlength="10"
                                        onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                </font>
                            </td>
                        </tr>
                        <tr>
                            <td height="40" class="auto-style5">
                                <font face="Verdana" size="2" style="border-color:lightgrey; font-weight: 700;">Email
                                    Id</font>
                            </td>
                        </tr>
                        <tr>
                            <td height="40" class="auto-style5">
                                <font face="Verdana">
                                    <input type="text" name="T20" size="20" id="T20">
                                </font>
                            </td>
                        </tr>
                        <tr>
                            <td height="40" class="auto-style5">
                                <font face="Verdana" size="2"><strong>Age</strong></font>
                            </td>
                        </tr>
                        <tr>
                            <td height="40" class="auto-style5">
                                <font face="Verdana">
                                    <select size="1" name="D1" id="D1">
                                        <option>Select Age</option>
                                        <option selected value="below 60">Less than 60</option>
                                        <option value="More than 60">More than 60</option>
                                        <option> More than 80</option>
                                    </select>
                                </font>
                            </td>
                        </tr>
                    </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td height="40">
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
                            <table border="0" width="100%" cellpadding="2" id="div2" <%--style="display:none;" --%> >
                                <tr>
                                    <td height="40" class="auto-style6">
                                        <font face="Verdana"><strong>Income from Salary</strong></font>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="40%" height="40" class="auto-style6">
                                        <font face="Verdana">
                                            <input type="text" name="T3" id="T3" size="20" value="0" onchange="fill()"
                                                style="text-align:right; font-weight: 700;"
                                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40" class="auto-style6">
                                        <font face="Verdana"><strong>Income
                                                from House Property</strong></font>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40" class="auto-style6">
                                        <font face="Verdana">
                                            <input type="text" name="T4" id="T4" size="20" value="0" onchange="fill()"
                                                style="text-align:right; font-weight: 700;"
                                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40" class="auto-style6">
                                        <font face="Verdana"><strong>Income
                                                from Business and Profession</strong></font>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40" class="auto-style6">
                                        <font face="Verdana">
                                            <input type="text" name="T5" id="T5" size="20" value="0" onchange="fill()"
                                                style="text-align:right; font-weight: 700;"
                                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40" class="auto-style6">
                                        <font face="Verdana" value="0"><strong>Income
                                                from Sale of Assets</strong></font>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40" class="auto-style6">
                                        <font face="Verdana">
                                            <input type="text" name="T6" id="T6" size="20" value="0" onchange="fill()"
                                                style="text-align:right; font-weight: 700;"
                                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40" class="auto-style6">
                                        <font face="Verdana"><strong>Income
                                                from Bank Interest and Others</strong></font>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40" class="auto-style6">
                                        <font face="Verdana">
                                            <input type="text" name="T7" size="20" id="T7" value="0" onchange="fill()"
                                                style="text-align:right; font-size: 9pt; font-weight: 700;"
                                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40" class="auto-style5">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td height="40" class="auto-style5">
                                        <font face="Verdana" size="2"><strong>Total
                                                Earned Income</strong></font>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40" class="auto-style5">
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
                                    <td height="40">
                                        <div align="right" id="div22">
                                            <%--<table border="0" width="150" cellspacing="4" cellpadding="4"
                                                bgcolor="#336699" height="30">
                                <tr>
                                    <td bgcolor="#003399">
                                        <p align="center"><b>--%>
                                                <%--<font face="Verdana" color="#FF9900">--%>
                                                    <input type="button" value="Next" id="Button1"
                                                        onclick="fill(); hideview2();"
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
                                        <td width="40%" style="width: 98%" class="auto-style5">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td width="40%" height="40" class="auto-style6">
                                            <font face="Verdana"><strong>Total Investments done
                                                    u/s 80C, 80CCC</strong></font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style6">
                                            <font face="Verdana">
                                                <input type="text" name="T19" id="T19" onchange="fillanother()"
                                                    value="0" size="20" style="text-align:right; font-weight: 700;"
                                                    onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                            </font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style5">
                                            <font face="Verdana" size="2" style="font-size: 9pt; font-weight: 700">
                                                Interest benefit from house property</font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style5">
                                            <font face="Verdana">
                                                <input type="text" name="T28" id="T28" onchange="fillanother()"
                                                    size="20" value="0" style="text-align:right; font-weight: 700;"
                                                    onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                            </font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style6">
                                            <font face="Verdana">
                                                <strong>Expenditures u/s 80D and others like<br />
                                                    Medical
                                                    Insurance</strong>
                                            </font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style6">
                                            <font face="Verdana">
                                                <input type="text" name="T21" id="T21" onchange="fillanother()"
                                                    value="0" size="20"
                                                    style="text-align:right; font-size: 9pt; font-weight: 700;"
                                                    onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                            </font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style5"></td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style5">
                                            <font face="Verdana" size="2" value="0" style="font-weight: 700">Total
                                                Deductions</font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style5">
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


                                        <td height="40" width="40%" style="width: 98%" class="auto-style5">
                                            <font face="Verdana" size="2">
                                                <strong>Net Taxable Income</strong>
                                            </font>
                                            <font face="Verdana"><br />


                                        </td>
                                        <track />


                                    <tr>


                                        <td height="40" width="40%" style="width: 98%" class="auto-style5">
                                            <font face="Verdana">
                                                <input type="text" name="T27" size="20" id="T27"
                                                    onchange="fill();fillanother();" readonly="readonly"
                                                    style="background-color:#F0F0F0;border:none; font-weight: 700; font-size: 10pt;text-align:right;"
                                                    font-weight: 700;" value="0">
                                        </td>


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
                                                                onclick="fill(); netfill(); hideview3(); "
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
                            <td height="40">
                                <table border="0" width="100%" cellpadding="2" id="div55">
                                    <tr>
                                        <td width="40%" height="40" class="auto-style4">
                                            <font face="Verdana">Basic Tax on Total
                                                Income</font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style4">
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
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style4">
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
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style4">
                                            <font face="Verdana">
                                                <input type="text" name="T15" id="T15" onchange="fillother()" size="20"
                                                    style="background-color:#F0F0F0;border:none; font-weight: 700; font-size: 10pt;text-align:right;"
                                                    font-weight: 700;" value="0" value="0" style="text-align:right;"
                                                    onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                            </font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style5">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style5">
                                            <font face="Verdana" size="2"><strong>Total
                                                    Taxes to be Paid</strong></font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="40" class="auto-style5">
                                            <font face="Verdana">
                                                <input type="text" name="T17" id="T17" size="20"
                                                    style="background-color:#F0F0F0;border:none; font-weight: 700; font-size: 10pt;text-align:right;"
                                                    font-weight: 700;" value="0"
                                                    onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                            </font>
                                        </td>
                    </div>
                    </tr>
                    </div>
                    <tr>
                        <td height="40" class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td height="40" class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td height="40" class="auto-style5">
                            <font face="Verdana" size="2" style="font-weight: 700; color: #000066">Looking to eFile
                                Income Tax Returns? CA Assisted eFiling</font>
                        </td>
                    </tr>
                    <tr>
                        <td height="40" class="auto-style5">
                            <a href="http://www.TaxManager.in/efile/hdfcefile.aspx">
                                <font color="#000080">
                                    <span style="text-decoration: none">
                                        <img border="0" src="http://www.TaxManager.in/images/icon-02.png" width="75"
                                            height="75"></span>
                                </font>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td height="40" class="auto-style5">
                            <font face="Verdana" size="2" style="font-weight: 700; color: #000066">Looking to save more
                                Income Tax?</font>
                        </td>
                    </tr>
                    <tr>
                        <td height="40" class="auto-style5">
                            <a href="http://www.TaxManager.in/ShopCart/ASPItrPay.aspx?Item=1">
                                <img border="0" src="http://www.TaxManager.in/images/icon-05.png" width="75"
                                    height="75"></a>
                        </td>
                    </tr>
                    <tr>
                        <td height="40" class="auto-style5">
                            <font face="Verdana" size="2" style="font-weight: 700; color: #000066">Received Income Tax
                                Demand Notice?</font>
                        </td>
                    </tr>
                    <tr>
                        <td height="40" class="auto-style5">
                            <a href="http://www.TaxManager.in/efile/taxnoticeservice.aspx?Item=1">
                                <img border="0" src="http://www.TaxManager.in/images/icon-03.png" width="75"
                                    height="75"></a>
                        </td>
                    </tr>
                    <tr>
                        <td height="40" class="auto-style5">&nbsp;</td>
                    </tr>
                    </table>
                    </td>
                    </tr>
                    </table>
                    </p>


        </form>

    </body>

    </html>