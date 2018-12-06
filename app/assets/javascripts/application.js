// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require activestorage
//= require jquery3
//= require jquery-ui.js
//= require jquery-ui.datepicker-id.js
//= require popper
//= require bootstrap
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load',function(){

 	setTimeout(function(){
 		$('#notice_wrapper').fadeOut("slow", function(){
 			$(this).remove();
      });
    }, 3000);

	$('form').on('click','.remove_record', function(event){
		$(this).prev('input[type=hidden]').val('1');
		$(this).closest('tr').hide();
		return event.preventDefault();
		});

	$('form').on('click', '.add_fields', function(event){
		var regexp, time;
		time = new Date().getTime();
		regexp = RegExp($(this).data('id'), 'g');
		$('.fields').append($(this).data('fields').replace(regexp,time));
		return event.preventDefault();
		});

    $("input").not($(":button")).keypress(function (evt) {
        if (evt.keyCode == 13) {
        		var current_active = $(this).prop("type"); 
            //console.log(x)
            if (current_active !== 'submit') {
                var fields = $(this).parents('form:eq(0),body').find('button, input, textarea, select');
                var index = fields.index(this);
                if (index > -1 && (index + 1) < fields.length) {
                    fields.eq(index + 1).focus();
                }
                return false;
            	}
        	}
    	});
}); //end off scrip

  /*
	
  $('.categories').autocomplete( { source: '<%= categories_path(:json) %>' });
  $('.agent').autocomplete( { source: '<%= agents_path(:json) %>' });
  $('.jabatanjambi').autocomplete( { source: '<%= jabatans_path(:json) %>' });
  $('.jabatanpusat').autocomplete( { source: '<%= jabatanpusats_path(:json) %>' });
  $('.kendaraan').autocomplete( { source: '<%= kendaraans_path(:json) %>' });
  $('.karyawan').autocomplete( { source: '<%= karyawans_path(:json) %>' });
  $('.droppoint').autocomplete( { source: '<%= droppoints_path(:json) %>' });
  $('.perkiraan').autocomplete( { source: '<%= perkiraans_path(:json) %>' });
	*/
