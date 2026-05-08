
function ConvertNumber1(number, obj) {

    var format = "";
    if (number.length == 15)
        format = "##,##,##,##,##,##,###";
    if (number.length == 14)
        format = "#,##,##,##,##,##,###";
    if (number.length == 13)
        format = "##,##,##,##,##,###";
    if (number.length == 12)
        format = "#,##,##,##,##,###";
    if (number.length == 11)
        format = "##,##,##,##,###";
    if (number.length == 10)
        format = "#,##,##,##,###";
    if (number.length == 9)
        format = "##,##,##,###";


    if (number.length == 8 )
        format = "#,##,##,###";
    if (number.length == 7)
        format = "##,##,###";
    if (number.length == 6)
        format = "#,##,###";
    if (number.length == 5)
        format = "##,###";
    if (number.length == 4)
        format = "#,###";
    if (number.length == 3)
        format = "###";
    if (number.length == 2)
        format = "##";
    if (number.length == 1)
        format = "#";
    var tail = format.lastIndexOf('.'); number = number.toString();
    tail = tail > -1 ? format.substr(tail) : '';
    if (tail.length > 0) {
        if (tail.charAt(1) == '#') {
            tail = number.substr(number.lastIndexOf('.'), tail.length);
        }
    }
    number = number.replace(/\..*|[^0-9]/g, '').split('');
    format = format.replace(/\..*/g, '').split('');
    for (var i = format.length - 1; i > -1; i--) {
        if (format[i] == '#') { format[i] = number.pop() }
    }

    var t1 = document.getElementById("T1").value;
    document.getElementById("T1").value = number.join('') + format.join('') + tail;
    document.getElementById("HT1").value = t1.toString().replace(",", "");
    
    

}


function ConvertNumber1(number, obj) {

    var format = "";
    if (number.length == 15)
        format = "##,##,##,##,##,##,###";
    if (number.length == 14)
        format = "#,##,##,##,##,##,###";
    if (number.length == 13)
        format = "##,##,##,##,##,###";
    if (number.length == 12)
        format = "#,##,##,##,##,###";
    if (number.length == 11)
        format = "##,##,##,##,###";
    if (number.length == 10)
        format = "#,##,##,##,###";
    if (number.length == 9)
        format = "##,##,##,###";


    if (number.length == 8 )
        format = "#,##,##,###";
    if (number.length == 7)
        format = "##,##,###";
    if (number.length == 6)
        format = "#,##,###";
    if (number.length == 5)
        format = "##,###";
    if (number.length == 4)
        format = "#,###";
    if (number.length == 3)
        format = "###";
    if (number.length == 2)
        format = "##";
    if (number.length == 1)
        format = "#";
    var tail = format.lastIndexOf('.'); number = number.toString();
    tail = tail > -1 ? format.substr(tail) : '';
    if (tail.length > 0) {
        if (tail.charAt(1) == '#') {
            tail = number.substr(number.lastIndexOf('.'), tail.length);
        }
    }
    number = number.replace(/\..*|[^0-9]/g, '').split('');
    format = format.replace(/\..*/g, '').split('');
    for (var i = format.length - 1; i > -1; i--) {
        if (format[i] == '#') { format[i] = number.pop() }
    }

    var t1 = document.getElementById("T1").value;
    document.getElementById("T1").value = number.join('') + format.join('') + tail;
    document.getElementById("HT1").value = t1.toString().replace(",", "");

}
function ConvertNumber2(number) {

    var format = "";
    if (number.length == 15)
        format = "##,##,##,##,##,##,###";
    if (number.length == 14)
        format = "#,##,##,##,##,##,###";
    if (number.length == 13)
        format = "##,##,##,##,##,###";
    if (number.length == 12)
        format = "#,##,##,##,##,###";
    if (number.length == 11)
        format = "##,##,##,##,###";
    if (number.length == 10)
        format = "#,##,##,##,###";
    if (number.length == 9)
        format = "##,##,##,###";
    if (number.length == 8)
        format = "#,##,##,###";
    if (number.length == 7)
        format = "##,##,###";
    if (number.length == 6)
        format = "#,##,###";
    if (number.length == 5)
        format = "##,###";
    if (number.length == 4)
        format = "#,###";
    if (number.length == 3)
        format = "###";
    if (number.length == 2)
        format = "##";
    if (number.length == 1)
        format = "#";
    var tail = format.lastIndexOf('.'); number = number.toString();
    tail = tail > -1 ? format.substr(tail) : '';
    if (tail.length > 0) {
        if (tail.charAt(1) == '#') {
            tail = number.substr(number.lastIndexOf('.'), tail.length);
        }
    }
    number = number.replace(/\..*|[^0-9]/g, '').split('');
    format = format.replace(/\..*/g, '').split('');
    for (var i = format.length - 1; i > -1; i--) {
        if (format[i] == '#') { format[i] = number.pop() }
    }

    var t1 = document.getElementById("T2").value;
    document.getElementById("T2").value = number.join('') + format.join('') + tail;
    document.getElementById("HT2").value = t1.toString().replace(",", "");

}
function ConvertNumber3(number) {

    var format = "";
    if (number.length == 15)
        format = "##,##,##,##,##,##,###";
    if (number.length == 14)
        format = "#,##,##,##,##,##,###";
    if (number.length == 13)
        format = "##,##,##,##,##,###";
    if (number.length == 12)
        format = "#,##,##,##,##,###";
    if (number.length == 11)
        format = "##,##,##,##,###";
    if (number.length == 10)
        format = "#,##,##,##,###";
    if (number.length == 9)
        format = "##,##,##,###";
    if (number.length == 8)
        format = "#,##,##,###";
    if (number.length == 7)
        format = "##,##,###";
    if (number.length == 6)
        format = "#,##,###";
    if (number.length == 5)
        format = "##,###";
    if (number.length == 4)
        format = "#,###";
    if (number.length == 3)
        format = "###";
    if (number.length == 2)
        format = "##";
    if (number.length == 1)
        format = "#";
   
    var tail = format.lastIndexOf('.'); number = number.toString();
    tail = tail > -1 ? format.substr(tail) : '';
    if (tail.length > 0) {
        if (tail.charAt(1) == '#') {
            tail = number.substr(number.lastIndexOf('.'), tail.length);
        }
    }
    number = number.replace(/\..*|[^0-9]/g, '').split('');
    format = format.replace(/\..*/g, '').split('');
    for (var i = format.length - 1; i > -1; i--) {
        if (format[i] == '#') { format[i] = number.pop() }
    }

    var t1 = document.getElementById("T3").value;
    document.getElementById("T3").value = number.join('') + format.join('') + tail;
    document.getElementById("HT3").value = t1.toString().replace(",", "");

}
function ConvertNumber4(number) {

    var format = "";
    if (number.length == 15)
        format = "##,##,##,##,##,##,###";
    if (number.length == 14)
        format = "#,##,##,##,##,##,###";
    if (number.length == 13)
        format = "##,##,##,##,##,###";
    if (number.length == 12)
        format = "#,##,##,##,##,###";
    if (number.length == 11)
        format = "##,##,##,##,###";
    if (number.length == 10)
        format = "#,##,##,##,###";
    if (number.length == 9)
        format = "##,##,##,###";
    if (number.length == 8)
        format = "#,##,##,###";
    if (number.length == 7)
        format = "##,##,###";
    if (number.length == 6)
        format = "#,##,###";
    if (number.length == 5)
        format = "##,###";
    if (number.length == 4)
        format = "#,###";
    if (number.length == 3)
        format = "###";
    if (number.length == 2)
        format = "##";
    if (number.length == 1)
        format = "#";

    var tail = format.lastIndexOf('.'); number = number.toString();
    tail = tail > -1 ? format.substr(tail) : '';
    if (tail.length > 0) {
        if (tail.charAt(1) == '#') {
            tail = number.substr(number.lastIndexOf('.'), tail.length);
        }
    }
    number = number.replace(/\..*|[^0-9]/g, '').split('');
    format = format.replace(/\..*/g, '').split('');
    for (var i = format.length - 1; i > -1; i--) {
        if (format[i] == '#') { format[i] = number.pop() }
    }

    var t1 = document.getElementById("T4").value;
    document.getElementById("T4").value = number.join('') + format.join('') + tail;
    document.getElementById("HT4").value = t1.toString().replace(",", "");
}
function ConvertNumber5(number) {

    var format = "";
    if (number.length == 15)
        format = "##,##,##,##,##,##,###";
    if (number.length == 14)
        format = "#,##,##,##,##,##,###";
    if (number.length == 13)
        format = "##,##,##,##,##,###";
    if (number.length == 12)
        format = "#,##,##,##,##,###";
    if (number.length == 11)
        format = "##,##,##,##,###";
    if (number.length == 10)
        format = "#,##,##,##,###";
    if (number.length == 9)
        format = "##,##,##,###";
    if (number.length == 8)
        format = "#,##,##,###";
    if (number.length == 7)
        format = "##,##,###";
    if (number.length == 6)
        format = "#,##,###";
    if (number.length == 5)
        format = "##,###";
    if (number.length == 4)
        format = "#,###";
    if (number.length == 3)
        format = "###";
    if (number.length == 2)
        format = "##";
    if (number.length == 1)
        format = "#";
    var tail = format.lastIndexOf('.'); number = number.toString();
    tail = tail > -1 ? format.substr(tail) : '';
    if (tail.length > 0) {
        if (tail.charAt(1) == '#') {
            tail = number.substr(number.lastIndexOf('.'), tail.length);
        }
    }
    number = number.replace(/\..*|[^0-9]/g, '').split('');
    format = format.replace(/\..*/g, '').split('');
    for (var i = format.length - 1; i > -1; i--) {
        if (format[i] == '#') { format[i] = number.pop() }
    }

    var t1 = document.getElementById("T5").value;
    document.getElementById("T5").value = number.join('') + format.join('') + tail;
    document.getElementById("HT5").value = t1.toString().replace(",", "");
}
function ConvertNumber15(number) {

    var format = "";
    if (number.length == 15)
        format = "##,##,##,##,##,##,###";
    if (number.length == 14)
        format = "#,##,##,##,##,##,###";
    if (number.length == 13)
        format = "##,##,##,##,##,###";
    if (number.length == 12)
        format = "#,##,##,##,##,###";
    if (number.length == 11)
        format = "##,##,##,##,###";
    if (number.length == 10)
        format = "#,##,##,##,###";
    if (number.length == 9)
        format = "##,##,##,###";
    if (number.length == 8)
        format = "#,##,##,###";
    if (number.length == 7)
        format = "##,##,###";
    if (number.length == 6)
        format = "#,##,###";
    if (number.length == 5)
        format = "##,###";
    if (number.length == 4)
        format = "#,###";
    if (number.length == 3)
        format = "###";
    if (number.length == 2)
        format = "##";
    if (number.length == 1)
        format = "#";
    var tail = format.lastIndexOf('.'); number = number.toString();
    tail = tail > -1 ? format.substr(tail) : '';
    if (tail.length > 0) {
        if (tail.charAt(1) == '#') {
            tail = number.substr(number.lastIndexOf('.'), tail.length);
        }
    }
    number = number.replace(/\..*|[^0-9]/g, '').split('');
    format = format.replace(/\..*/g, '').split('');
    for (var i = format.length - 1; i > -1; i--) {
        if (format[i] == '#') { format[i] = number.pop() }
    }

    var t1 = document.getElementById("Text15").value.toString().TrimStart(',');
   
    document.getElementById("Text15").value = number.join('') + format.join('') + tail;
    document.getElementById("HT15").value = t1.toString().replace(",", "");
    var t99 = number.toLocaleString();

   ////// alert(t99.toLocaleString());


    if (number.toString().indexOf(",") == -1) {
       
        document.getElementById("Text15").value = number.toString();

    }
    else {
        
        document.getElementById("Text15").value = number.toString();
    }
   //ConvertNumber16(t1);

}
function ConvertNumber16(number) {

    var format = "";
    if (number.length == 15)
        format = "##,##,##,##,##,##,###";
    if (number.length == 14)
        format = "#,##,##,##,##,##,###";
    if (number.length == 13)
        format = "##,##,##,##,##,###";
    if (number.length == 12)
        format = "#,##,##,##,##,###";
    if (number.length == 11)
        format = "##,##,##,##,###";
    if (number.length == 10)
        format = "#,##,##,##,###";
    if (number.length == 9)
        format = "##,##,##,###";
    if (number.length == 8)
        format = "#,##,##,###";
    if (number.length == 7)
        format = "##,##,###";
    if (number.length == 6)
        format = "#,##,###";
    if (number.length == 5)
        format = "##,###";
    if (number.length == 4)
        format = "#,###";
    if (number.length == 3)
        format = "###";
    if (number.length == 2)
        format = "##";
    if (number.length == 1)
        format = "#";
    var tail = format.lastIndexOf('.'); number = number.toString();
    tail = tail > -1 ? format.substr(tail) : '';
    if (tail.length > 0) {
        if (tail.charAt(1) == '#') {
            tail = number.substr(number.lastIndexOf('.'), tail.length);
        }
    }
    number = number.replace(/\..*|[^0-9]/g, '').split('');
    format = format.replace(/\..*/g, '').split('');
    for (var i = format.length - 1; i > -1; i--) {
        if (format[i] == '#') { format[i] = number.pop() }
    }

    var t1 = document.getElementById("Text16").value;
  
    document.getElementById("Text16").value = number.join('') + format.join('') + tail;
    document.getElementById("HT16").value = t1.toString().replace(",", "");
    if (taxfree.toString().indexOf(",") == -1) {

        document.getElementById("Text16").value = taxfree.toString();


    }

}
var k = 0;
function ConvertNumber17(number) {

    var format = "";
    if (number.length == 15)
        format = "##,##,##,##,##,##,###";
    if (number.length == 14)
        format = "#,##,##,##,##,##,###";
    if (number.length == 13)
        format = "##,##,##,##,##,###";
    if (number.length == 12)
        format = "#,##,##,##,##,###";
    if (number.length == 11)
        format = "##,##,##,##,###";
    if (number.length == 10)
        format = "#,##,##,##,###";
    if (number.length == 9)
        format = "##,##,##,###";
    if (number.length == 8)
        format = "#,##,##,###";
    if (number.length == 7)
        format = "##,##,###";
    if (number.length == 6)
        format = "#,##,###";
    if (number.length == 5)
        format = "##,###";
    if (number.length == 4)
        format = "#,###";
    if (number.length == 3)
        format = "###";
    if (number.length == 2)
        format = "##";
    if (number.length == 1)
        format = "#";
    var tail = format.lastIndexOf('.'); number = number.toString();
    tail = tail > -1 ? format.substr(tail) : '';
    if (tail.length > 0) {
        if (tail.charAt(1) == '#') {
            tail = number.substr(number.lastIndexOf('.'), tail.length);
        }
    }
    number = number.replace(/\..*|[^0-9]/g, '').split('');
    format = format.replace(/\..*/g, '').split('');
    for (var i = format.length - 1; i > -1; i--) {
        if (format[i] == '#') { format[i] = number.pop() }
    }
   
    if (Taxable.toString().indexOf(",") == -1) {

        document.getElementById("Text17").value = Taxable.toString();
       
    }
    var t1 = document.getElementById("Text17").value;
    
    document.getElementById("Text17").value = number.join('') + format.join('') + tail;
    document.getElementById("HT17").value = t1.toString().replace(",", "");
  
}
function addCommasT1() {
    
    if (document.getElementById("T1").value.indexOf(",") == -1)
    {

        document.getElementById("T1").value = document.getElementById("T1").value.toString().substr(0);
    }
    ConvertNumber1(document.getElementById("T1").value);
}

function addCommasT2() {
    var doc = document.getElementById("T2").value;

    if (doc.toString().indexOf(",") == -1) {

        document.getElementById("T2").value = doc.toString().substr(0);


    }
    ConvertNumber2(document.getElementById("T2").value);
}

function addCommasT3() {

    var doc = document.getElementById("T3").value;
    if (doc.toString().indexOf(",") == -1) {

        document.getElementById("T3").value = doc.toString().substr(0);


    }
    ConvertNumber3(document.getElementById("T3").value);
}

function addCommasT4() {
    

    var doc = document.getElementById("T4").value;
    
    if (doc.toString().indexOf(",") == -1) {

        document.getElementById("T4").value = doc.toString().substr(0) ;

        
    }
    ConvertNumber4(document.getElementById("T4").value);
}
function addCommasT5() {
    var doc = document.getElementById("T5").value;
    if (doc.toString().indexOf(",") == -1) {

        document.getElementById("T5").value = doc.toString().substr(0);

    }



    ConvertNumber5(document.getElementById("T5").value);
}
function calculatehra() {
    document.getElementById("tblResult").style.display = "block";

    //hra = taxable + exempt
    if (document.getElementById("T1").value.indexOf(",") == -1)
    {
        alert("Please Enter Basic Salary Again");
    }

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
    Taxable = Taxable.toString().replace(/\B(?=(\d{2})*(\d{3})$)/g, ",");
    taxfree = taxfree.toString().replace(/\B(?=(\d{2})*(\d{3})$)/g, ",");
    hra = hra.toString().replace(/\B(?=(\d{2})*(\d{3})$)/g, ",");
   
    document.getElementById("Text15").value = hra;
    if (hra.toString().indexOf(",") == -1) {

        document.getElementById("Text15").value = hra;

        /////ConvertNumber15(hra);
    }
   
    if (taxfree.toString().indexOf(",") == -1) {

        document.getElementById("Text16").value = taxfree;
      
    }
     
     if (Taxable.toString().indexOf(",") == -1) {
        
         document.getElementById("Text17").value = Taxable.toString();
        
     }
    

     if (Taxable.toString().indexOf(",") == -1) {

         document.getElementById("Text17").value = Taxable.toString();

     }


    document.getElementById("Text15").value = hra;
    document.getElementById("Text16").value = taxfree;
    document.getElementById("Text17").value = Taxable;

    OnT15();

    document.getElementById("tblmain").style.display = "none";
    document.getElementById("tblResult").style.display = "block";

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
ConvertNumber15(t1);
///  OnT16();
  
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
    ConvertNumber16(t1);
    OnT17();

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
    ConvertNumber17(t1);
 
}


function view2(obj) {
    
   

    if (obj.style.display == "block")
        obj.style.display = "none";

    else
        obj.style.display = "block";
    //document.getElementById("tblmain").style.display = "none";
    //document.getElementById("tblResult").style.display = "block";


}
function view1() {

    var tblresult = document.getElementById("tblResult");
   
    if (tblresult.style.display == "block")
        tblresult.style.display = "none";

    else
        tblresult.style.display = "block";

    var tblmain = document.getElementById("tblmain");

    if (tblmain.style.display == "block")
        tblmain.style.display = "none";

    else
        tblmain.style.display = "block";

    
    
}
//function view2(obj) {
//    if (obj.style.display == "block")
//        obj.style.display = "none";

//    else
//        obj.style.display = "block";

//}
//function view1(obj) {
//    if (obj.style.display == "block")
//        obj.style.display = "none";

//    else
//        obj.style.display = "block";

//    var tblmain = document.getElementById("tblmain");

//    if (tblmain.style.display == "block")
//        tblmain.style.display = "none";

//    else
//        tblmain.style.display = "block";

//}