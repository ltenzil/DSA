$.ajax({
  url: targetUrl,
  dataType: "html"
}).done(function(content) {
  $('body').html(content)
}).fail(function(response, data){
  $('body').html($("<div class='panel'><span>No data to display</span></div>"));
});


$.ajax({
  url: url,
  type: 'get',
  data: { id: id },
  dataType: "html",
  beforeSend: function( xhr ) {
    $('#modal').modal('open');
    model_loader($('#modal'));
  }
}).success(function(content) {
  $('body').html(content);
}).error(function(content) {
  $('body').html($("<div class='panel'><span>We're sorry, but something went wrong</span></div>"));
});


$.ajax({
  url: $this.data('url'),
  dataType: 'html',
  data: dataOptions,
  success: function(data) {
    console.log("success")
  error: function(response, data) {
    $('body').html($("<div class='panel'><span>We're sorry, but something went wrong</span></div>"));
  }
});

function modal_loader(target) {
	target.html('<div class="text-center"><img src="/loader.gif" alt="loading" /></div>');
}



