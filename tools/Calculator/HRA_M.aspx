<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="HRA.aspx.cs" Inherits="HRA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>House Rent Allowance - Calculators - TaxManager.in</title>


    <meta name="viewport" content="width=device-width">
    <style>
        img {
    max-width: 100%;
            text-align: center;
        }
        width {
            max-width: 100%;
        }
    
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
        function calculatehra()
        {
            //hra = taxable + exempt
            var bs = document.getElementById("T1").value;
            var da = document.getElementById("T2").value;
            var hra = document.getElementById("T4").value;
            var arp = document.getElementById("T5").value;
            var actualHRAricieved = hra; //condition 1
           

            if (bs == "0" || bs == "")
            {
                alert("Please Enter Basic Salary.");
                return;
            }

            if (hra == "0" || hra == "") {
                alert("Please Enter Annual HRA.");
                return;
            }
            if (document.getElementById("ddlCity").value == "0")
            {
                alert("Please Choose City Mode.");
                return;

            }
            if (arp == "")
            {
                alert("Please Enter Annual Rent Payable. If Rent Payable is 0, Pls input 0");
                return;

            }

            var T10 = (Number(+bs) + Number(+da));
            

            var T11 = 0.1 * T10; // condition 2
            

            var rpiexcess = (arp - T11);
            

            var ddlcity = document.getElementById("ddlCity").value;
            
            var fiftyperofsalary="";
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
          
        }

    </script>
    <style type="text/css">
        .auto-style6 {
            position: absolute;
            top: 332px;
            left: 35px;
            height: 33px;
            }
        .auto-style8 {
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
        .auto-style28 {
        }
        .auto-style38 {
            width: 9px;
        }
        .auto-style39 {
            height: 47px;
            text-align: center;
        }
        </style>
</head>
<body {width:100%;margin:auto;min-width:200px;max-width:2000px,align:center}>
    

        <div align="center">
				<table border="0" width="100%" cellpadding="2">
					<tr>
						<td>
						<p align="center"><img border="0" src="http://www.taxmanager.in/images/logo.png" width="230" height="60" align="center"></p></td>
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
        <td width="60%" height="45" align="center"><div align="center">
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
        <td width="80%" height="45" align="center"><b><font face="Verdana" color="#000080" style="text-align: center"><p align="center">House Rent Allowance
			Calculator Financial Year 2015-16</p></font></b></td>
    </tr>

</table>
<div align="center" width="70%">

    <form id="form1" runat="server"  >

        <table border="0" cellspacing="4" cellpadding="3"  bgcolor="#F0F0F0" style="height: 45px; width: 70%;" >
						<tr>
							<td bgcolor="#666666" >

                                <font color="#FFFFFF" face="Verdana" size="4" style="color: #CCCCCC">
                        <input type="text" id="Text18" value="HRA" readonly="readonly" align="left"
                             style="border-style: none; border-color: inherit; 
border-width: medium; background-color:transparent; color:#CCCCCC; font-weight:700; font-size:large; width: 48px; margin-left: 0px;" onclick="view2(tblmain)"/></font></td>
						</tr>
					</table>

        <table  id="tblmain" style="margin-top: 0px; background-color:#F0F0F0; width: 70%; height: 458px;" cellpadding="4px" cellspacing="4px">
            
            <tr>
               
                <td style="text-align: left;height:10px; "    ></td>

            </tr>

            <tr>
               
                <td style="height:10px; "    >

                   

                    <font face="Verdana" size="2"><b>Annual Basic Salary</b></td>

            </tr>

            <tr>
               
                <td class="auto-style6"    >&nbsp;<font face="Verdana"><input type="text" name="T7" id="T1" size="20"  onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46'
                                style="border-color:lightgrey; font-weight: 700; font-size: 9pt;  width: 188px; text-align:right;padding-right:5px; height: 27px; margin-left: 14px;"></font></td>

            </tr>

            <tr>
               
                <td class="auto-style6"    >
                    
                      <font face="Verdana" size="2"><strong >  Annual Dearness Allowance (DA)*</strong></font><br>
                        <span  style="color: Gray"><font face="Verdana" size="2">(Enter only if DA is&nbsp; considered while calculating
                            retirement benefits)</font></span></td>

            </tr>

            <tr>
                <td   >
                    
                        <input id="T2" name="T8" size="20" onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46'
style="border-color:lightgrey; font-weight: 700; font-size: 9pt; height: 25px; width: 188px;padding-right:5px;margin-top:0px; margin-left: 14px;"

                             type="text" /></td>

            </tr>

            <tr>
                <td   >
                    
                      <font face="Verdana" size="2"><strong>   Annual commission</strong></font><span class="aestrix">*</span>
                        
                        <span class="auto-style21" style="color: Gray;"><font face="Verdana" size="2">
                      <br />
                      (Enter only if commission is % of sales)
                           </font></span>
                    
                      </td>

            </tr>
            <tr>
                <td height="30px" class="auto-style8">
 
 
                    <input id="T3" name="T6" size="20" onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46'
                            style="border-color:lightgrey; font-weight: 700;text-align:right;padding-right:5px; font-size: 9pt; height: 25px; width: 188px;
 margin-left: 14px; margin-top: 0px;" type="text" /></td>
            </tr>
            <tr>
                <td height="30px" class="auto-style8">
 
                    <font face="Verdana" size="2"><strong>      Annual HRA</strong></font><span class="aestrix">*</span></td>
            </tr>
            <tr>
                <td class="auto-style8">
 
<div >
                        <input id="T4" name="T4" size="20" onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46'
                            style="border-color:lightgrey; font-weight: 700; font-size: 9pt; height: 25px; width: 188px;text-align:right;padding-right:5px; 
margin-left: 17px; margin-top: 0;" type="text" />
                    </div>
                </td>

            </tr>
            <tr>
                <td class="auto-style8">
 
                      <font face="Verdana" size="2"><strong >City of Residence*</strong></font></td>

            </tr>
            <tr>
                <td  height="30px" class="auto-style8">
                    <div class="r_deduction">
                        <select name="ddlCity" id="ddlCity" tabindex="5" class="dropdown_Mandatory1"  >
	<option value="0" >Select City</option>
	<option value="1" >Metro</option>
	<option value="2" >Non Metro</option>
	
</select></td>
            </tr>
            <tr>
                <td  height="30px" class="auto-style8">
                    
                    <strong><font face="Verdana" size="2" style="text-align: left">Annual Rent Payable</font></td>
            </tr>
            <tr>
                <td>
                    
                    <div >
                        <input id="T5" name="T5" size="20" onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46'
                            style="border-color:lightgrey; font-weight: 700; font-size: 9pt; height: 24px; width: 188px; margin-top: 0; text-align:center; padding-right:5px; margin-left: 14px;" type="text" />
                        <br />
              </div>
                    
                    </td>
            </tr>
            <tr>
                <td height="45px">
                    
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
    
    
        <table border="0" cellspacing="4" cellpadding="3"  align="center" bgcolor="#F0F0F0" style="height: 45px; width: 70%;" >
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
        <table id="tblResult" style="display:none;background-color:#F0F0F0;  width: 70%;  height: 499px;"  align="center" cellpadding="4px" cellspacing="4px">
           
           
           
            <tr colspan="3">
                <td  style="text-align: left" class="auto-style38" height="10px" >

                    &nbsp;</td>
                
                <td  style="text-align: left" class="auto-style28" height="10px" >

                    &nbsp;</td>
                
            </tr>
           
            <tr>
               
                <td class="auto-style39" colspan="2"  >

                   <strong><font face="Verdana" size="2" style="text-align: center" >HRA Recieved</font></strong></td>
                
            </tr>
           
            <tr>
               
                <td colspan="2"  >

        
        <font face="Verdana">
							<input type="text" name="T1" id="Text15" readonly="true" size="20"  onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46' 
                                style="background-color:transparent;border-style: none; border-color: inherit; border-width: medium; font-weight: 700; font-size: 9pt; height: 25px; width: 188px; text-align:center; padding-right:5px; margin-top: 0px;"></font> </td>
                
<%--<div class="r_deduction">--%>
            </tr>
           
            <tr>
               
                <td colspan="2"  >

        
                      <strong><font face="Verdana" size="2" colspan="20px" >TaxFree</font></strong></td>
                
            </tr><tr>
             <%--<td class="auto-style1">&nbsp;<%--<input id="txtAnnualBasicSalary" tabindex="1" class="textbox_Mandatoryrt" msg="Please ensure entered value is numeric &amp;  positive only." name="txtAnnualBasicSalary$txtnumber1" type="text" maxlength="10" onkeypress="return CheckNumber(this,event,&#39;Please ensure entered value is numeric &amp;  positive only.&#39;,false, false,&#39;true&#39;,&#39;&#39;);" onblur="CheckNumberblur(this,&#39;Please ensure entered value is numeric &amp;  positive only.&#39;,false, false,&#39;true&#39;,&#39;&#39;);" />--%><%--</div>--%>
            </tr>

            <tr>
                
                <td colspan="2" >
                    
                    <div class="r_deduction">
                        <input id="Text16" name="T2" size="20" readonly="true" onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46'
                            style=" border-style: none; border-color: inherit; border-width: medium; background-color:transparent; font-weight: 700; font-size: 9pt; height: 25px; width: 188px;text-align:center; padding-right:5px;" type="text" />
                    </div>
                
                </td>
                
            </tr>

            <tr>
                
                <td colspan="2" >
                    
                      <strong ><font face="Verdana" size="2">Taxable</font></strong></td>
                
            </tr>
            <tr>
                <td colspan="2">

 <div class="r_deduction">
                        <input id="Text17" name="T3" size="20" readonly="true" onkeypress='return event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46'
                            style="background-color:transparent;border:none; font-weight: 700;text-align:right;padding-right:5px; font-size: 9pt; height: 25px; width: 188px;" type="text" />
                    </div>
                </td>
                </tr>
           
          
         
       
     <tr  >
							<%--<td height="40" colspan="3" class="auto-style20">&nbsp;</td>--%>
						</tr>
           
          
         
       
                                </div>
                            </td>
						</tr>
           
          
         
       
            <tr>
							<td height="40" class="auto-style5">&nbsp;</td>
						</tr>
						<tr>
							<td height="40" class="auto-style5">&nbsp;</td>
						</tr>
						<tr>
							<td height="40" class="auto-style5"><font face="Verdana" size="2" style="font-weight: 700; color: #000066">Looking to eFile Income Tax Returns? CA Assisted eFiling</font></td>
						</tr>
						<tr>
							<td height="40" class="auto-style5">
								<a href="http://www.TaxManager.in/efile/mhdfcefile.aspx">
								<font color="#000080">
								<span style="text-decoration: none">
								<img border="0" src="http://www.TaxManager.in/images/icon-02.png" width="75" height="75"></span></font></a></td>
						</tr>
						<tr>
							<td height="40" class="auto-style5"><font face="Verdana" size="2" style="font-weight: 700; color: #000066">Looking to save more Income Tax?</font></td>
						</tr>
						<tr>
							<td height="40" class="auto-style5">
								<a href="http://www.TaxManager.in/efile/aspsubscribe.aspx">
								<img border="0" src="http://www.TaxManager.in/images/icon-05.png" width="75" height="75"></a></td>
						</tr>
						<tr>
							<td height="40" class="auto-style5"><font face="Verdana" size="2" style="font-weight: 700; color: #000066">Received Income Tax Demand Notice?</font></td>
						</tr>
						<tr>
							<td height="40" class="auto-style5">
								<a href="http://www.TaxManager.in/efile/taxnoticeservice.aspx?Item=1">
								<img border="0" src="http://www.TaxManager.in/images/icon-03.png" width="75" height="75"></a></td>
						</tr>
						<tr>
							<td height="40" class="auto-style5" style="display:none;">&nbsp;</td>
						</tr></td>
						</tr>
           
          
         
       
            </table></div>
     </form>
</body>
</html>
