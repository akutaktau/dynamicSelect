/*
  Created by Jasdy Syarman a.k.a aku_tak_tau
  http://syarman.com
  
  Feel free to use this code but please leave this credit to me.
  rev 1.2.1
  add default option
  
  rev 1.2.0
  remove the use of .change while calling this function
  
  rev 1.1.0
  add loading to select while populating JSON
*/
(function($){
	$.fn.dynamicSelect = function(option) {
    $(this).change(function() {
      
      var setting = $.extend({
        url: '',
        target: '',
        option:'',
        msg: 'Loading...',
        value: $(this).val()
      },option);
        var opt= setting.option;
      $('#'+setting.target).prepend($('<option></option>').html(setting.msg));
      
      $.getJSON(setting.url,{select_id: setting.value},function(data){
        $.each(data,function(id, arr){
          opt += '<option value="'+arr.id+'">'+arr.description+'</option>';
          $("#"+setting.target).html(opt);
          $("#"+setting.target+" option:first").attr('selected', 'selected');
          })
        })  
      })
  }
})(jQuery);