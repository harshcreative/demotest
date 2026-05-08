<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="HRA.aspx.cs" Inherits="HRA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>House Rent Allowance - Calculators - TaxManager.in</title>
    
    <script type="text/javascript">
        function view2(obj)
        {
            if (obj.style.display == "block")
                obj.style.display = "none";

            else
                obj.style.display = "block";

        }
        function view1(obj)
        {
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
        function OnT15() {
            nStr = document.getElementById("Text15").value.toString();

            nStr += '';
            x = nStr.split('.');
            x1 = x[0];
            x2 = x.length > 1 ? '.' + x[1] : '';
            var rgx = /(\d+)(\d{3})/;
            while (rgx.test(x1)) {
                x1 = x1.replace(rgx, '$1' + ',' + '$2');
            }

            var t1 = x1 + x2;

            document.getElementById("Text15").value = t1;

        }
        function OnT16() {
            nStr = document.getElementById("Text16").value.toString();

            nStr += '';
            x = nStr.split('.');
            x1 = x[0];
            x2 = x.length > 1 ? '.' + x[1] : '';
            var rgx = /(\d+)(\d{3})/;
            while (rgx.test(x1)) {
                x1 = x1.replace(rgx, '$1' + ',' + '$2');
            }

            var t1 = x1 + x2;

            document.getElementById("Text16").value = t1;

        }
        function OnT17() {
            nStr = document.getElementById("Text17").value.toString();

            nStr += '';
            x = nStr.split('.');
            x1 = x[0];
            x2 = x.length > 1 ? '.' + x[1] : '';
            var rgx = /(\d+)(\d{3})/;
            while (rgx.test(x1)) {
                x1 = x1.replace(rgx, '$1' + ',' + '$2');
            }

            var t1 = x1 + x2;

            document.getElementById("Text17").value = t1;

        }
        function addCommasT1() {

            nStr = document.getElementById("T1").value.toString();

            nStr += '';
            x = nStr.split('.');
            x1 = x[0];
            x2 = x.length > 1 ? '.' + x[1] : '';
            var rgx = /(\d+)(\d{3})/;
            while (rgx.test(x1)) {
                x1 = x1.replace(rgx, '$1' + ',' + '$2');
            }

            var t1 = x1 + x2;
            document.getElementById("T1").value = t1.toString();

            document.getElementById("HT1").value = t1.toString().replace(",", "");
            //--------------------------------------------------------------------
        }

        function addCommasT2() {
            nStr = document.getElementById("T2").value.toString();

            nStr += '';
            x = nStr.split('.');
            x1 = x[0];
            x2 = x.length > 1 ? '.' + x[1] : '';
            var rgx = /(\d+)(\d{3})/;
            while (rgx.test(x1)) {
                x1 = x1.replace(rgx, '$1' + ',' + '$2');
            }

            var t1 = x1 + x2;
            document.getElementById("T2").value = t1.toString();

            document.getElementById("HT2").value = t1.toString().replace(",", "");
            ////-------------------------------------------------------------------
        }


        function addCommasT3() {

            nStr = document.getElementById("T3").value.toString();

            nStr += '';
            x = nStr.split('.');
            x1 = x[0];
            x2 = x.length > 1 ? '.' + x[1] : '';
            var rgx = /(\d+)(\d{3})/;
            while (rgx.test(x1)) {
                x1 = x1.replace(rgx, '$1' + ',' + '$2');
            }

            var t1 = x1 + x2;
            document.getElementById("T3").value = t1.toString();

            document.getElementById("HT3").value = t1.toString().replace(",", "");
            //--------------------------------------------------------------------------------
        }
        function addCommasT4() {


            nStr = document.getElementById("T4").value.toString();

            nStr += '';
            x = nStr.split('.');
            x1 = x[0];
            x2 = x.length > 1 ? '.' + x[1] : '';
            var rgx = /(\d+)(\d{3})/;
            while (rgx.test(x1)) {
                x1 = x1.replace(rgx, '$1' + ',' + '$2');
            }

            var t1 = x1 + x2;
            document.getElementById("T4").value = t1.toString();

            document.getElementById("HT4").value = t1.toString().replace(",", "");
            //-------------------------------------------------------------------
        }

        function addCommasT5() {

            nStr = document.getElementById("T5").value.toString();

            nStr += '';
            x = nStr.split('.');
            x1 = x[0];
            x2 = x.length > 1 ? '.' + x[1] : '';
            var rgx = /(\d+)(\d{3})/;
            while (rgx.test(x1)) {
                x1 = x1.replace(rgx, '$1' + ',' + '$2');
            }

            var t1 = x1 + x2;
            document.getElementById("T5").value = t1.toString();

            document.getElementById("HT5").value = t1.toString().replace(",", "");

        }

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
            var bs = document.getElementById("HT1").value;
            var da = document.getElementById("HT2").value;
            var hra = document.getElementById("HT4").value;
            var arp = document.getElementById("HT5").value;
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
            if (arp == "0" || arp == "") {
                alert("Please Enter Annual Rent Payable");
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

            }
            else { }

            if (fiftyperofsalary == "") {
                taxfree = Math.min(actualHRAricieved, rpiexcess, fourperofsalary);
            }
            else {
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
            OnT15();
            OnT16();
            OnT17();

        }

    </script>
    <style type="text/css></style>

   
    <style type="text/css">
        .auto-style6 {
            position: absolute;
            top: 332px;
            left: 35px;
            height: 33px;
            }
        .auto-style8 {
            width: 2px;
        }
        .auto-style9 {
            height: 40px;
            width: 769px;
        }
        .auto-style10 {
            width: 769px;
        }
        .auto-style11 {
            width: 6px;
            height: 74px;
        }
        .auto-style14 {
            width: 769px;
            height: 74px;
        }
        .auto-style15 {
            height: 74px;
        }
        #ddlCity {
            width: 192px;
            height: 23px;
            margin-left: 16px;
            margin-top: 8px;
        }
        .auto-style21 {
            height: 166px;
        }
        .auto-style22 {
            width: 6px;
            height: 47px;
        }
        .auto-style23 {
            height: 47px;
        }
        .auto-style24 {
            width: 106px;
        }
        .auto-style27 {
            width: 6px;
            height: 30px;
        }
        .auto-style5 {
            width: 16%;
        }
        .auto-style13 {
            text-decoration: none;
        }
        .auto-style12 {
            color: #003366;
        }
        .auto-style28 {
        }
        .auto-style30 {
            height: 47px;
            width: 404px;
            text-align: left;
        }
        .auto-style32 {
            width: 404px;
            text-align: left;
        }
        .auto-style35 {
            height: 47px;
            width: 9px;
            text-align: left;
        }
        .auto-style36 {
            width: 9px;
            text-align: left;
        }
        .auto-style37 {
            text-align: center;
        }
        .auto-style38 {
            width: 9px;
        }
        </style>
</head>
<body>
    

        <div align="center">
	        <table border="0" width="100%" cellpadding="0" height="35" cellspacing="0">
		<tr>
			<td width="100%">
			<div align="left">
				<table border="0" width="100%" cellpadding="2">
					<tr>
						<td rowspan="2">
						<img border="0" src="http://www.taxmanager.in/images/logo.png" width="230" height="60"></td>
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
			<span style="text-decoration: none; font-weight:700">Home</span></font></a></font></td>
			<td width="15%" align="center" height="35">
			<font face="Verdana">
			<a href="http://www.taxmanager.in/taxmanager-basic.html">
			<font color="#000000" style="font-size: 9pt">
			<span style="text-decoration: none; font-weight:700">Tax e 
			Filing</span></font></a></font></td>
			<td width="15%" align="center" height="35">
			<font face="Verdana">
			<a href="http://www.taxmanager.in/asp.html">
			<font color="#000000" style="font-size: 9pt">
			<span style="text-decoration: none; font-weight:700">Tax Management</span></font></a></font></td>
			<td width="15%" align="center" height="35">
			<font face="Verdana">
			<a href="http://www.taxmanager.in/nri.html">
			<font color="#000000" style="font-size: 9pt">
			<span style="text-decoration: none; font-weight:700">NRI</span></font></a></font></td>
			<td width="15%" align="center" height="35">
			<font face="Verdana">
			<a href="http://www.taxmanager.in/taxmanager-taxpro.html">
			<font color="#000000" style="font-size: 9pt">
			<span style="text-decoration: none; font-weight:700">Professionals</span></font></a></font></td>
			<td width="15%" align="center" height="35" bgcolor="#FFFFFF" bordercolor="#FFFFFF">
			<b><font face="Verdana" style="font-size: 9pt">
			<a href="http://www.taxmanager.in/login/login.aspx">
			<font color="#000000"><span style="text-decoration: none">Login</span></font></a>/
			<a href="http://www.taxmanager.in/UserAc/Register.aspx?From=TaxM&Product=Basic">
			<font color="#000000"><span style="text-decoration: none">Register</span></font></a></font></b></td>
			<td width="15%" align="center" height="35" bgcolor="#FFFFFF" bordercolor="#FFFFFF">
			<font face="Verdana">
			<a href="http://www.taxmanager.in/support.html">
			<font color="#000000" style="font-size: 9pt">
			<span style="text-decoration: none; font-weight:700">Support</span></font></a></font></td>
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
		<td><hr noshade style="background-color: #DDF9FF" color="#000080"></td>
	</tr>
</table>

<table align="center">
    <tr>
        <td width="782" height="45" align="center"><div align="center">
	<table border="0" width="600" cellspacing="4" cellpadding="4">
		<tr>
			<td>
			<p align="center"><b><font face="Verdana" size="2">Tax Calculator &gt;&gt;
			<a href="http://www.taxmanager.in/calculator/taxcalculator.aspx">
			Income Tax Calculator</a> ||
			<a href="http://www.taxmanager.in/calculator/hra.aspx">House Rent 
			Allowance Calculator</a></font></b></td>
		</tr>
	</table>
</div>
</td>
    </tr>

    <tr>
        <td width="782" height="45" align="center"><b><font face="Verdana" color="#000080" style="text-align: center"><p align="center">House Rent Allowance
			Calculator Financial Year 2015-16</p></font></b></td>
    </tr>

</table>
<div align="center" width="70%">

    <form id="form1" runat="server"  >

        <table border="0" cellspacing="4" cellpadding="3"  bgcolor="#F0F0F0" style="height: 45px; width: 714px;" >
						<tr>
							<td bgcolor="#666666" >

                                <font color="#FFFFFF" face="Verdana" size="4" style="font-weight: 700; color: #CCCCCC">
                        <input type="text" id="Text18" value="HRA" readonly="readonly" align="left" 
               onchange="addCommasT1()"              style="border-style: none; border-color: inherit; 
border-width: medium; background-color:transparent; color:#CCCCCC; font-weight:700; font-size:large; width: 48px; margin-left: 0px;" onclick="view2(tblmain)"/></font>

                               

							</td>
                             <input type="hidden" id="HT1" />
						</tr>
					</table>

        <table  id="tblmain" style="margin-top: 0px; background-color:#F0F0F0; width: 714px; height: 458px;" cellpadding="4px" cellspacing="4px">
            
            <tr>
               
                <td style="text-align: left;height:10px; "  colspan="3"    ></td>

            </tr>

            <tr>
               
                <td style="text-align: left; " class="auto-style6"    ></td>

                <td style="text-align: left;" class="auto-style9"    >

                   

                    <font face="Verdana" size="2"><b>Annual Basic Salary</b></td>
                
    <td class="auto-style62"     ><font face="Verdana">
							<input type="text" name="T1" id="T1" size="20"  onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46'
                 onchange="addCommasT1()"               style="border-color:lightgrey; font-weight: 700; font-size: 9pt;  width: 188px; text-align:right;padding-right:5px; height: 27px; margin-left: 14px;"></font>
                                
                </td> <input type="hidden" id="HT1" />
            </tr>

            <tr>
                <td style="text-align: left;" class="auto-style11"   >
                    
                      </td>
                <td style="text-align:left;" class="auto-style14">
                    
                      <font face="Verdana" size="2"><strong >  Annual Dearness Allowance (DA)*</strong></font><br>
                        <span  style="color: Gray"><font face="Verdana" size="2">(Enter only if DA is&nbsp; considered while calculating
                            retirement benefits)</font></span></td><td class="auto-style15">
                    <div >
                        <input id="T2" name="T2" size="20" onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46'
style="border-color:lightgrey; font-weight: 700; font-size: 9pt; height: 25px; width: 188px;text-align:right;padding-right:5px;margin-top:0px; margin-left: 14px;"
                            onchange="addCommasT2()"
                             type="text" /> <input type="hidden" id="HT2" />
                    </div>
                
                </td>

            </tr>
            <tr>
                <td height="30px" class="auto-style8">
 
                      &nbsp;</td>
                <td height="30px" style="text-align: left" >
 
                      <font face="Verdana" size="2"><strong>   Annual commission</strong></font><span class="aestrix">*</span>
                        
                        <span class="auto-style21" style="color: Gray;"><font face="Verdana" size="2">(Enter only if commission is % of sales)
                           </font></span></td>
                <td  height="30px" style="text-align: left" class="auto-style8">

 
                    <input id="T3" name="T6" size="20" onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46'
                       onchange="addCommasT3()"     style="border-color:lightgrey; font-weight: 700;text-align:right;padding-right:5px; font-size: 9pt; height: 25px; width: 188px;
 margin-left: 14px; margin-top: 0px;" type="text" /> <input type="hidden" id="HT3" /></td>
                  
            </tr>
            <tr>
                <td class="auto-style8">
 
                    &nbsp;</td>
                <td  height="30px" style="text-align: left" class="auto-style10" >
 
                    <font face="Verdana" size="2"><strong>      Annual HRA</strong></font><span class="aestrix">*</span></td>
                <td  height="30px" style="text-align: left">
<div >
                        <input id="T4" name="T4" size="20" onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46'
       onchange="addCommasT4()"                     style="border-color:lightgrey; font-weight: 700; font-size: 9pt; height: 25px; width: 188px;text-align:right;padding-right:5px; 
margin-left: 17px; margin-top: 13px;" type="text" /> <input type="hidden" id="HT4" />
                    </div>
                </td>

            </tr>
            <tr>
                <td  height="30px" class="auto-style8">
                      &nbsp;</td>
                <td  height="30px" class="auto-style10" style="text-align:left;">
                      <font face="Verdana" size="2"><strong >City of Residence*</strong></font></td>
                <td>
                    <div class="r_deduction" >
                        <select name="ddlCity" id="ddlCity" tabindex="5" class="dropdown_Mandatory1"  >
	<option value="0" >Select City</option>
	<option value="1" >Metro</option>
	<option value="2" >Non Metro</option>
	
</select></td>
            </tr>
            <tr>
                <td style="text-align: left" class="auto-style22">
                    
                    </td>
                <td style="text-align: left" class="auto-style23" >
                    
                    <strong><font face="Verdana" size="2" style="text-align: left"><strong >Annual Rent Payable</font></strong></td>
                <td valign="middle" class="auto-style23">

                    <div >
                        <input id="T5" name="T5" size="20" onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46'
                     onchange="addCommasT5()"       style="border-color:lightgrey; font-weight: 700; font-size: 9pt; height: 24px; width: 188px; margin-top: 15px; text-align:right;padding-right:5px; margin-left: 14px;" type="text" />
                        <br /> <input type="hidden" id="HT5" />
              </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" >
                    
                    &nbsp;</td>
                <td colspan="2" height="35px" align="center">
                    
                    <input type="button" value="Submit" align="center"  onclick="calculatehra()" 
                  style="border-style: none; border-color: inherit; border-width: medium; 
background-color:green; height:23px; width:87px; color:white;top:0px; margin-top: 0px;"  /></td>
            </tr>
           </table>
 <%-- <div style="position:absolute;">
             
                </div>
        <div style="margin-left: 668px; margin-top: 0px">
           
        </div>
               --%>
    
    
        <table border="0" cellspacing="4" cellpadding="3"  align="center" bgcolor="#F0F0F0" style="height: 45px; width: 714px;" >
						<tr>
							<td bgcolor="#666666" >

                                <font color="#FFFFFF" face="Verdana" size="4" style="font-weight: 700; color: #CCCCCC">
                        <input type="text" id="Text1" value="HRA Details" readonly="readonly" align="left"   
                             style="border-style: none; border-color: inherit; 
border-width: medium; background-color:transparent; color:#CCCCCC; font-weight:700; font-size:large; width: 115px; margin-left: 0px;" onclick="view1(tblResult)"/>
                        </font>


					</td>
						</tr>
					</table> 

        <div align="center" width="70%">
        <table id="tblResult" style="display:none;background-color:#F0F0F0;  width: 714px;  height: 499px;"  align="center" cellpadding="4px" cellspacing="4px">
           
           
           
            <tr colspan="3">
                <td  style="text-align: left" class="auto-style38" height="10px" >

                    &nbsp;</td>
                
                <td  style="text-align: left" class="auto-style28" colspan="2" height="10px" >

                    &nbsp;</td>
                
            </tr>
           
            <tr>
               
                <td class="auto-style35"  >

                    &nbsp;</td>
                
                <td class="auto-style30"  >

                   <strong><font face="Verdana" size="2" >HRA Recieved</font></strong></td>
                
<%--<div class="r_deduction">--%>
    <td height="40px" >
        
        
        <font face="Verdana">
							<input type="text" name="T1" id="Text15" readonly="true" size="20"  onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46' 
                       onchange = "OnT15()"          style="background-color:transparent;border-style: none; border-color: inherit; border-width: medium; font-weight: 700; font-size: 9pt; height: 25px; width: 188px; text-align:right; padding-right:5px; margin-top: 0px;"></font> </td>
            </tr><tr>
             <%--<td class="auto-style1">&nbsp;<%--<input id="txtAnnualBasicSalary" tabindex="1" class="textbox_Mandatoryrt" msg="Please ensure entered value is numeric &amp;  positive only." name="txtAnnualBasicSalary$txtnumber1" type="text" maxlength="10" onkeypress="return CheckNumber(this,event,&#39;Please ensure entered value is numeric &amp;  positive only.&#39;,false, false,&#39;true&#39;,&#39;&#39;);" onblur="CheckNumberblur(this,&#39;Please ensure entered value is numeric &amp;  positive only.&#39;,false, false,&#39;true&#39;,&#39;&#39;);" />--%><%--</div>--%>
            </tr>

            <tr>
                
                <td class="auto-style36" >
                    
                      &nbsp;</td>
                
                <td class="auto-style32" >
                    
                      <strong><font face="Verdana" size="2" colspan="20px" >TaxFree</font></strong></td><td class="auto-style27">
                    <div class="r_deduction">
                        <input id="Text16" name="T2" size="20" readonly="true" onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46'
                       onchange = "OnT16()"      style=" background-color:transparent;border:none; font-weight: 700; font-size: 9pt; height: 25px; width: 188px;text-align:right;padding-right:5px;" type="text" />
                    </div>
                
                </td>

            </tr>
            <tr>
                <td class="auto-style36">
                      &nbsp;</td>
                <td class="auto-style32">
                      <strong ><font face="Verdana" size="2">Taxable</font></strong></td>
                <td class="auto-style24" >

 <div class="r_deduction">
                        <input id="Text17" name="T3" size="20" readonly="true" onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46'
                  onchange = "OnT17()"           style="background-color:transparent;border:none; font-weight: 700;text-align:right;padding-right:5px; font-size: 9pt; height: 25px; width: 188px;" type="text" />
                    </div>
                </td></tr>
           
          
         
       
     <tr  >
							<%--<td height="40" colspan="3" class="auto-style20">&nbsp;</td>--%>
						</tr>
           
          
         
       
     <tr  >
							<td height="40" style="text-align:left;" class="auto-style38" >&nbsp;</td>
							<td height="40" style="text-align:left;" colspan="2" >&nbsp;</td>
						</tr>
           
          
         
       
     <tr  >
							<td height="40" class="auto-style37" colspan="3" ><strong><font face="Verdana" size="2" style="text-align: center"> Taking maximum benefit of your House Rent Allowance and Saving Taxes? <a href="http://www.taxmanager.in/eti/caappointment.asp#CASchedule">Consult our CA now</a></font></td>
						</tr>
						<tr>
							
							<td height="40" class="auto-style38" >
                                &nbsp;</td>
							
							<td height="40" colspan="2" >
                                <div>
                                    <table bgcolor="#F0F0F0" border="0" cellpadding="4" cellspacing="4" style="width: 93%; height: 132px">
                                        <tr>
                                            <td>
                                                <div align="center">
                                                    <table border="0" cellpadding="2" style="width: 100%">
                                                        <tr>
                                                            <td align="center" class="auto-style5"><a href="http://www.TaxManager.in/login/login.aspx">
                                                                <img border="0" height="75" src="http://www.TaxManager.in/images/icon-01.png" width="75" /></a></td>
                                                            <td align="center" width="16%"><a href="http://www.TaxManager.in/efile/hdfcefile.aspx"><font color="#000080"><span style="text-decoration: none">
                                                                <img border="0" height="75" src="http://www.TaxManager.in/images/icon-02.png" width="75" /></span></font></a></td>
                                                            <td align="center" width="16%"><a href="http://www.TaxManager.in/efile/taxnoticeservice.aspx?Item=1">
                                                                <img border="0" height="75" src="http://www.TaxManager.in/images/icon-03.png" width="75" /></a></td>
                                                            <td align="center" width="16%"><a href="http://www.TaxManager.in/efile/aspsubscribe.aspx?Item=1">
                                                                <img border="0" height="75" src="http://www.TaxManager.in/images/icon-05.png" width="75" /></a></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" class="auto-style5">
                                                                <p align="center" style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                    <font color="#000080" face="Verdana" style="font-size: 8pt"><span style="text-decoration: none"><font color="#000080"><a class="auto-style13" href="http://www.TaxManager.in/login/login.aspx"><span class="auto-style12">Prepare Income Tax Return</span></a></font></span></font></p>
                                                                <p align="center" style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                    <font color="#000080" face="Verdana" style="font-size: 8pt"><a class="auto-style13" href="#Book_Mark"><span class="auto-style12">Do it yourself</span></a></font></p>
                                                            </td>
                                                            <td align="center" class="auto-style12" width="16%">
                                                                <p style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                    <font color="#000080" face="Verdana" style="font-size: 8pt"><a class="auto-style13" href="http://www.TaxManager.in/efile/hdfcefile.aspx"><span class="auto-style12">CA Assisted ITR e-Filing</span></a></font></p>
                                                                <p style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                    <font color="#000080" face="Verdana" style="font-size: 8pt"><a class="auto-style13" href="http://www.TaxManager.in/efile/hdfcefile.aspx"><span class="auto-style12">Let our CA e File your taxes</span></a></font></p>
                                                            </td>
                                                            <td align="center" width="16%">
                                                                <p style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                    <font color="#000080" face="Verdana" style="font-size: 8pt"><a class="auto-style13" href="http://www.TaxManager.in/efile/taxnoticeservice.aspx?Item=1"><span class="auto-style12">Tax Rectification/ Notice</span></a></font></p>
                                                                <p style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                    <font color="#000080" face="Verdana" style="font-size: 8pt"><a class="auto-style13" href="http://www.TaxManager.in/efile/taxnoticeservice.aspx?Item=1"><span class="auto-style12">Reply to Tax Notices</span></a></font></p>
                                                            </td>
                                                            <td align="center" width="16%">
                                                                <p style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                    <font color="#000080" face="Verdana" style="font-size: 8pt"><a class="auto-style13" href="http://www.TaxManager.in/efile/aspsubscribe.aspx"><span class="auto-style12">Annual Subscription Package </span></a></font>
                                                                </p>
                                                                <p style="line-height: 150%; margin-top: 0; margin-bottom: 0">
                                                                    <font color="#000080" face="Verdana" style="font-size: 8pt"><a class="auto-style13" href="http://www.TaxManager.in/efile/aspsubscribe.aspx"><span class="auto-style12">Complete Tax Solutions </span></a></font>
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
                            </td></tr></table></div>
     </form>
</body>
</html>
