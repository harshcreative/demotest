   // Form Ids & Submit Btn
   const GSTApiGetSearch = document.querySelector('#seargstapiauth');
   const searchapibtn = document.querySelector('.sercgstinumber');
   const error = GSTApiGetSearch.querySelector('.error');

   // GSTN Number Validation Regex
   const gstinRegex = /^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}[Z]{1}[0-9A-Z]{1}$/;

   searchapibtn.addEventListener('click', function() {

       // GSTN Number
       const gstin = GSTApiGetSearch.querySelector('[name="gstin"]') ? GSTApiGetSearch.querySelector('[name="gstin"]').value.trim() : '';

       // GSTFY Date
       const gstfydate = document.querySelector('[name="FYDate"]') ? document.querySelector('[name="FYDate"]').value.trim() : '';

       // Get Company Details By GSTN
       const apiUrl = `http://taxmnewserver-env.eba-ktzwcqbx.ap-south-1.elasticbeanstalk.com/getcompanydetailsbygstn?gstin=${gstin}`;

       if (gstin !== '') {
           // If GSTIN is not empty
           if (gstinRegex.test(gstin)) {
               // If GSTIN format is valid
               error.style.display = 'none';
               error.textContent = "";

               // api endpoint : https://api.taxamo.com/api/v1/gst/getcompany
               fetch(apiUrl)
                   .then(response => {
                       if (!response.ok) {
                           throw new Error(`HTTP error! status: ${response.status}`);
                       }
                       return response.json();
                   })
                   .then(data => {
                       console.log(data); // Log the data to the console
                       const jsonData = JSON.stringify(data, null, 2);

                       // Display the data in the webpage
                       document.getElementById('companyDetails').textContent = jsonData;

                       // adadr into a single string
                       const address = data.pradr.addr;
                       console.log(address);

                       // If you want to store it in a variable
                       const adadrString = address.st + ' ' + address.flno + ' ' + address.bno + ' ' + address.bnm + ' ' + address.dst + ' ' + address.loc + ' ' + address.stcd + ' ' + address.pncd;

                       // Create an array of objects for table data
                       const tableData = {
                           "GSTIN/UIN Number": data.gstin,
                           "GSTIN/UIN Status": data.sts,
                           "Legal Name Of Business": data.lgnm,
                           "Trade Name": data.tradeNam,
                           "Registration Date": data.rgdt,
                           "Constitution Of Business": data.ctb,
                           "Taxpayer Type": data.dty,
                           "Nature of Business Activities": data.nba[0],
                           "Address": adadrString,
                           "State Jurisdiction": data.stj,
                           "Centre Jurisdiction": data.ctj,
                           "Centre Code": data.ctjCd
                       };

                       // Table Var Section
                       const tbodyRows = document.querySelectorAll('tbody tr');
                       const headerSpan = document.querySelector('thead tr th span');
                       headerSpan.textContent = tableData["GSTIN/UIN Number"] || 'No record';

                       // Loop For table td span
                       tbodyRows.forEach(row => {
                           const cells = row.querySelectorAll('td');
                           const field = cells[0].textContent.trim();

                           // Check if the field is present in tableData
                           if (tableData.hasOwnProperty(field)) {
                               cells[1].querySelector('span').textContent = tableData[field];
                           } else {
                               // Set a default value if the field is not present in tableData
                               cells[1].querySelector('span').textContent = 'No record';
                           }
                       });
                   })
                   .catch(error => {
                       console.error('There has been a problem with your fetch operation:', error);
                   });

           } else {
               // If GSTIN format is invalid
               error.textContent = "Please Enter a Valid GSTIN Number";
               error.style.display = 'block';
           }
       } else {
           // If GSTIN is empty
           error.textContent = "Please Enter Your Company GSTIN Number";
           error.style.display = 'block';
       }
   });


   // Copy Code 
   document.getElementById("copyButton").addEventListener("click", function() {

       const codeToCopy = document.getElementById("companyDetails").innerText;
       const textarea = document.createElement("textarea");
       textarea.value = codeToCopy;

       // Append the textarea
       document.body.appendChild(textarea);

       // Select the text Copy the selected clipboard
       textarea.select();
       document.execCommand("copy");

       // Remove the textarea 
       document.body.removeChild(textarea);

       // C "Copy code" element to indicate success
       const copyButton = document.getElementById("copyButton");
       copyButton.innerHTML = '<span><i class="fas fa-check"></i></span> Copied!';
       copyButton.classList.add("copied");

       // Set a timeout to revert
       setTimeout(function() {
           copyButton.innerHTML = '<span><i class="far fa-clipboard"></i></span> Copy code';
           copyButton.classList.remove("copied");
       }, 5000);
   });