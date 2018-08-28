
	var bettorType
  	var wordArray = ["loser", "negative", "parlay", "teaser", "hook", "football", "baseball", "hockey", "degenerate", "whale", "stuck", "steaming"]
  	var clientForm = document.getElementById("new_client")
  	var wordBank = []
	var wordArray
	var guess = document.getElementById("guess")
	var submit = document.getElementById("submit")
	var wordDisplay = document.getElementById("wordBank")

	


	
	function shuffle(array){
		
		for (var i = 0; i < 300; i++){
			
			var location1 = Math.floor((Math.random() * array.length));
			var location2 = Math.floor((Math.random() * array.length));
			var tmp = array[location1];

			array[location1] = array[location2];
			array[location2] = tmp;
		}
	}
	

	if (bettorType == "small timer"){

		var word = wordArray[Math.floor(Math.random()*wordArray.length)];
		var index = wordArray.indexOf(word);
		
		if (index > -1) {
  			wordArray.splice(index, 1);
		}

		wordBank.push(word)

		shuffle(wordArray)

		wordBank.push(wordArray.pop())
		wordBank.push(wordArray.pop())

		shuffle(wordBank)

		for(i=0; i<wordBank.length; i++){

			wordDisplay.innerHTML += " " + wordBank[i] + '<br>' 
			


		}
		

		console.log(word)
		console.log(wordBank)


	}else if (bettorType == "pay dumper"){

		var word = wordArray[Math.floor(Math.random()*wordArray.length)];

		var index = wordArray.indexOf(word);
		
		if (index > -1) {
  			wordArray.splice(index, 1);
		}
		
		wordBank.push(word)

		shuffle(wordArray)

		wordBank.push(wordArray.pop())
		wordBank.push(wordArray.pop())
		wordBank.push(wordArray.pop())
		wordBank.push(wordArray.pop())

		shuffle(wordBank)

		for(i=0; i<wordBank.length; i++){

			wordDisplay.innerHTML += " " + wordBank[i] + '<br>'
			


		}

		console.log(word)
		console.log(wordBank)


	}else{


		var word = wordArray[Math.floor(Math.random()*wordArray.length)];
		var index = wordArray.indexOf(word);
		
		if (index > -1) {
  			
  			wordArray.splice(index, 1);
		}

		wordBank.push(word)

		shuffle(wordArray)

		wordBank.push(wordArray.pop())
		wordBank.push(wordArray.pop())
		wordBank.push(wordArray.pop())
		wordBank.push(wordArray.pop())
		wordBank.push(wordArray.pop())
		wordBank.push(wordArray.pop())
		wordBank.push(wordArray.pop())
		wordBank.push(wordArray.pop())
		wordBank.push(wordArray.pop())

		shuffle(wordBank)

		for(i=0; i<wordBank.length; i++){

			wordDisplay.innerHTML += " " + wordBank[i] + '<br>'



		}

		console.log(word)
		console.log(wordBank)



	}


	if(submit){

		submit.addEventListener("click", function(){

			if(word == guess.value){

				clientForm.submit()

			}else{

				window.location.reload()
			}


		})
	}
