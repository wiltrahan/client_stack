$(document).ready(function() {
    var text_max = 255;
    $('#textarea_feedback').html(text_max + ' characters remaining');

    $('#textarea').keyup(function() {
        var text_length = $('#textarea').val().length;
        var text_remaining = text_max - text_length;

        $('#textarea_feedback').html(text_remaining + ' characters remaining');
    });
    
    $(function(){
        $("#last_appt").datepicker();
    });
    
    $(function(){
        $("#next_appt").datepicker();
    });
    
    $('#calendar').fullCalendar({
    	
    	events: [
    	    {
    	      title  : 'event1',
    	      start  : '2018-09-26'
    	    },
    	    {
    	      title  : 'event2',
    	      start  : '2018-09-27',
    	      end    : '2018-09-28'
    	    },
    	    {
    	      title  : 'event3',
    	      start  : '2018-09-29T12:30:00',
    	      allDay : false // will make the time show
    	    }
    	  ]
    	
    });
});