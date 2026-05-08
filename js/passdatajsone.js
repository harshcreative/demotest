// companiesmanager Form data pass in oter Pages
$('.fillformdasavnexpag').on('click', function(e) {
    // Get the value of the 'data-name' attribute
    var ClikFormDataSave = $(this).attr('data-name');

    // Save the value in localStorage
    localStorage.setItem('Companiesmanager Form Tag', JSON.stringify(ClikFormDataSave));

    // Set the value of the element with ID 'Subject' from localStorage
    setSubjectValueFromLocalStorage();

});