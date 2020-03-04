$(this).on('change', function(e){
  console.log("Change")
});

$(this).on('change', function(e){
  console.log("Change")
});

$(this).on('submit',function(e) {
	console.log("submit")
})

$(this).click(function(e){
	e.preventDefault()
})

// The preventDefault() method cancels the event if it is cancelable, 
// meaning that the default action that belongs to the event will not occur.

// isNan function returns true if the argument is not a number otherwise it is false.

// Global variables  have no scope.