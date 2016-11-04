# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

    $ ->
      $('.available').click (e) ->
        e.preventDefault()
        url = $(this).attr('href')
        dialog_form = $('<div id="dialog-form">Loading form...</div>').dialog
          autoOpen: false,
          width: 520,
          modal: true,
          open: ->
            return $(this).load(url + '.js')
          close: ->
            $('#dialog-form').remove()
        dialog_form.dialog('open')


#// $(document).ready(function() {
#//     time_title_height = $('.stylist').css('height');
#//     $('.time_title').css('height', time_title_height);
#//
#//     var selected_bool = false;
#//     function deselect(e) {
#//         $('.pop').slideFadeToggle(function() {
#//             e.removeClass('selected');
#//         });
#//     }
#//
#//     $(function() {
#//         $('.available').on('click', function() {
#//             if(($(this).hasClass('selected')) && (selected_bool)) {
#//                 deselect($(this));
#//                 selected_bool = false;
#//             } else if (!selected_bool) {
#//                 selected_bool = true;
#//                 $(this).addClass('selected');
#// //            $('.pop').html('<iframe name="new_booking" src="<%=new_booking_url%>"></iframe>');
#// //            $(window.frames['new_booking'].document).ready(function () {
#// ////              window.frames['new_booking'].
#// ////              .getElementById('booking_stylist_id');
#// //              elo = $(window.frames['new_booking'].document.getElementsByTagName('input'));
#// //              console.log(elo);
#// //            });
#// //            $('.pop').html('<%= link_to "New Booking", new_booking_path %>')
#// //            $('.pop').html('<%= form_for Booking.new do |f|%>' +
#// //                '<%= f.submit %>' +
#// //                '<% end %>');
#//                 $('.pop').slideFadeToggle();
#//             }
#//             return false;
#//         });
#//     });
#//
#//     $.fn.slideFadeToggle = function(easing, callback) {
#//         return this.animate({ opacity: 'toggle', height: 'toggle' }, 'fast', easing, callback);
#//     };
#// });
