$('.Show').click(function () {
    $('#target').show(500);
    $('.Show').hide(0);
    $('.Hide').show(0);
});

$('.Hide').click(function () {
    $('#target').hide(500);
    $('.Show').show(0);
    $('.Hide').hide(0);
});
$('.toggle').click(function () {
    $('#target').toggle('slow');
});


// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}


function hide(target) {
    document.getElementById(target).style.display = 'none';
}
