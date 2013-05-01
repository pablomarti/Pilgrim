// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
	$(".locations_container").on("change", ".dropdown_location", function(e){
		$.ajax({
		  type: "POST",
		  url: "/pilgrim/change_location",
		  data: { 
		  	value: $(this).val(),
		  	kind: $(this).attr("data-kind"),
		  	block: $(this).attr("data-block"),
		  	name: $(this).attr("data-name"),
		  	html_class: $(this).attr("data-name"),
		  	form_name: $(this).attr("data-formname")
		  }
		});
	});
});