$(function(){
	$('#new_message').on('ajax:success',function(xhr,data,status){
		
		$('.messages_text').val('');
	});

	var pusher = new Pusher('105c6c6a0617ba348830', {
      encrypted: true
    });

    var channel = pusher.subscribe('messages');
    channel.bind('new', function(data) {
      addMessage(data);
    });
});

function addMessage(data){
	$('#messages_list tbody').append('<tr><td>'+ data.user_name +'</td><td>'+ data.text +'</td></tr>');
}