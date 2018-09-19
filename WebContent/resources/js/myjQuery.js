$(document).ready(function() {
    var text_max = 255;
    $('#textarea_feedback').html(text_max + ' characters remaining');

    $('#textarea').keyup(function() {
        var text_length = $('#textarea').val().length;
        var text_remaining = text_max - text_length;

        $('#textarea_feedback').html(text_remaining + ' characters remaining');
    });
    
    $("#last_appt").datepicker();
    $("#next_appt").datepicker();
    
    $('.timepicker').timepicker({
        timeFormat: 'h:mm p',
        interval: 15,
        minTime: '8',
        maxTime: '9:00pm',
        defaultTime: '8',
        startTime: '8:00am',
        dynamic: false,
        dropdown: true,
        scrollbar: true
    });
   
});