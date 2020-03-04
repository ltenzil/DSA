function switch_me(value){
	switch (value) {
	  case 'select-all':
	    console.log('select-all')
	    break;
	  case 'select-none':
	    console.log('select-none')
	    break;
	  case 'see-more':
	  	console.log('select-more')
	    break;
	  case 'see-less':
	  	console.log('see-less')
	    break;
	   default:
	    break;
	}
}


console.log(navigator.platform)

// Strict Mode adds certain compulsions to JavaScript. 
// Under the strict mode, JavaScript shows errors for a piece of codes, 
// 		which did not show an error before, but might be problematic and potentially unsafe. 
// Strict mode also solves some mistakes that hamper the JavaScript engines to work efficiently.

// Strict mode can be enabled by adding the string literal "use strict" above the file.

$('body').find('ul li input[type="checkbox"]')