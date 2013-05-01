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
		var block = $(this).attr("data-block");
		var kind = $(this).attr("data-kind");
		var city_id = block + "_city";
		var data = { 
		  	value: $(this).val(),
		  	kind: kind,
		  	block: block,
		  	city_name: $("#" + city_id).attr("data-name"),
		  	city_html_class: $("#" + city_id).attr("class"),
		  	form_name: $(this).attr("data-formname")
		}

		if(kind == "country"){
			var state_id = block + "_state";
			data['state_name'] = $("#" + state_id).attr("data-name");
		  	data['state_html_class'] = $("#" + state_id).attr("class");
		}

		$.ajax({
		  type: "POST",
		  url: "/pilgrim/change_location",
		  data: data
		});
	});
});