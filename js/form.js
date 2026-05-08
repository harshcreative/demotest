$(document).ready(function() {
    let useripdate;
    let uname;

    // Get IP from the API
    fetch('https://api.ipify.org?format=json')
        .then(response => response.json())
        .then(data => {
            const ipAddress = data.ip;

            // Get Api Dta For City and County And  Callin Code
            return fetch(`https://ipapi.co/${ipAddress}/json/`)
                .then(response => response.json())
                .then(data => {
                    useripdate = {
                        city: data.city,
                        country: data.country_name,
                        callingCode: data.country_calling_code,
                        countryCode: data.country_code.toLowerCase(),
                    };
                    return useripdate;
                });
        })

    // Input Set a Mobile flag in dailing County Name
    .then(useripdate => {
            $(".mobile_codewith_flage").intlTelInput({
                initialCountry: useripdate.countryCode,
                separateDialCode: true
            });
        })
        .catch(error => {
            console.error('Error fetching data:', error);
        });

    //  Input Mobile set Flag
    function getSelectedDialCode() {
        return "+" + $(".mobile_codewith_flage").intlTelInput("getSelectedCountryData").dialCode;
    }

    function formExists(form) {
        return form !== null && form instanceof Element;
    }

    //  All Form Id In arror
    const forms = [
        document.querySelector('#contactFormmiddle'),
        document.querySelector('#contactFormTop'),
        document.querySelector('#contactFormSideBar'),
        document.querySelector('#contactForCvCar'),
        document.querySelector('#contactFormpopup')
    ];

    //  FormId Find submit Btn
    forms.forEach(function(form) {
        if (formExists(form)) {
            const submitButton = form.querySelector('.submit-btn');
            if (submitButton !== null) {
                submitButton.addEventListener('click', function(event) {
                    handleFormSubmission(event, form);
                });
            }
        }
    });


    // Valid class Funtion 
    function handleFormSubmission(event, form) {
        event.preventDefault();
        var selectedDialCode = getSelectedDialCode();

        //  Form Input Data Get Selected
        uname = form.querySelector('[name="uName"]') ? form.querySelector('[name="uName"]').value.trim() : '';
        var umail = form.querySelector('[name="ueMail"]') ? form.querySelector('[name="ueMail"]').value.trim() : '';
        var umob = selectedDialCode + " " + (form.querySelector('[name="uPhoneNumber"]') ? form.querySelector('[name="uPhoneNumber"]').value.trim() : '');
        var ddl = form.querySelector('[name="uCompany"]') ? form.querySelector('[name="uCompany"]').value.trim() : '';
        var msg = form.querySelector('[name="uMessage"]') ? form.querySelector('[name="uMessage"]').value.trim() : '';
        var ucv = form.querySelector('[name="ucv"]') ? form.querySelector('[name="ucv"]').value.trim() : '';
        var ujobpost = form.querySelector('[name="ujobpost"]') ? form.querySelector('[name="ujobpost"]').value.trim() : '';

        //  RGX Form object Email, Mobile
        const emailRegex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
        const mobileRegex = /^[1-9]\d*$/;

        // Form Group Input 
        form.querySelectorAll('.form-control').forEach(input => {
            input.classList.remove('error-highlight');
        });

        // Clear error messages
        form.querySelectorAll('.error').forEach(error => {
            error.innerHTML = '';
        });


        // RGX Vlid the emial and number
        if (uname === '') {
            errorMessage = 'Please enter a valid First Name*';
            form.querySelector('.error-name').innerHTML = errorMessage;
            form.querySelector('[name="uName"]').classList.add('error-highlight');

        } else if (!emailRegex.test(umail)) {
            errorMessage = 'Please enter a valid Email Address*';
            form.querySelector('.error-email').innerHTML = errorMessage;
            form.querySelector('[name="ueMail"]').classList.add('error-highlight');

        } else {
            const cleanedMobileNumber = umob.replace(/\D/g, '');
            if (cleanedMobileNumber.length < 10) {
                errorMessage = 'Mobile Number should have at least 10 digits*';
                form.querySelector('.error-phone').innerHTML = errorMessage;
                form.querySelector('[name="uPhoneNumber"]').classList.add('error-highlight');

            } else if (!mobileRegex.test(cleanedMobileNumber)) {
                errorMessage = 'Please enter a valid Mobile Number*';
                form.querySelector('.error-phone').innerHTML = errorMessage;
                form.querySelector('[name="uPhoneNumber"]').classList.add('error-highlight');
            }
        }

        // Form Group Definition
        const hasErrors = form.querySelectorAll('.error-highlight').length > 0;

        //  Form Data save in Object 
        if (!hasErrors) {
            var cdata = JSON.stringify({
                page: window.location.href,
                uname: uname,
                umail: umail,
                umob: umob,
                ddl: ddl,
                msg: msg,
                ucv: ucv,
                ujobpost: ujobpost
            });

            console.log(cdata);
            $(".loderarsecsec").css("display", "block");

            // Object Data Send in Databased for api
            $.ajax({
                type: "POST",
                url: "https://taxmanager.in/tm360/form-connect/connect1.aspx/GetCurrentTime",
                data: cdata,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function(data) {
                    $(".loderarsecsec").css("display", "none");
                    window.location.href = "/tm360/";
                },
                error: function(response) {
                    alert(response.responseText);
                    $(".loderarsecsec").css("display", "none");
                    alert('Failed to submit form. Please try again later.');
                }
            });
        }
    }

    // Redirect For Thank You page with User Name
    function OnSuccess(response) {
        window.location.href = "https://taxmanager.in/tm360/other/thanks.html?uName=" + uname;

        // Clear form fields after successful submission
        form.reset();
    }
});