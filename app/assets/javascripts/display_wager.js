var bookIt = document.getElementById("book_it")
var pass = document.getElementById("pass")
var newWager = document.getElementById("new_wager")

if (bookIt){

	bookIt.addEventListener("click", function(){


		newWager.submit()



	})

	pass.addEventListener("click", function(){

		window.location.reload()
		
	})

}