

  	
  	var clientForm = document.getElementById("new_client")
	var wordArray = ["baseball", "football", "hockey", "basketball"]
	var guess = document.getElementById("guess")
	var submit = document.getElementById("submit")


	if(submit){

		submit.addEventListener("click", function(){

			var word = wordArray[Math.floor(Math.random()*wordArray.length)];
			console.log(word)

			if(word == guess.value){

				clientForm.submit()

			}else{

				window.location.reload()
			}


		})
	}
