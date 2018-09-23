
	var bettorType
  	var wordArray = ["loser", "negative", "parlay", "teaser", "hook", "football", "baseball", "hockey", "degenerate", "whale", "stuck", "steaming"]
  	var clientForm = document.getElementById("new_client")
  	var wordBank = []
	var wordArray
	var guess = document.getElementById("guess")
	var submit = document.getElementById("submit")
	var wordDisplay = document.getElementById("wordBank")
	var word
	var links

	


	
	function shuffle(array){
		
		for (var i = 0; i < 300; i++){
			
			var location1 = Math.floor((Math.random() * array.length));
			var location2 = Math.floor((Math.random() * array.length));
			var tmp = array[location1];

			array[location1] = array[location2];
			array[location2] = tmp;
		}
	}

	console.log(bettorType)
	

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

			links = document.createElement('div')
			links.setAttribute("class", "words")
			links.style.height = "30px"
			links.style.width = "100px"
			links.style.border = "1 px solid red"

			links.innerHTML = " " + wordBank[i] + '<br>'
			
			wordDisplay.appendChild(links)

			addLinks()
			


		}
		

		


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

			links = document.createElement('div')
			links.setAttribute("class", "words")
			links.style.height = "30px"
			links.style.width = "100px"
			links.style.border = "1 px solid red"

			links.innerHTML = " " + wordBank[i] + '<br>'
			
			wordDisplay.appendChild(links)

			var wordChoices = document.getElementsByClassName("words")[i]

			addLinks()



			
			


		}



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

			links = document.createElement('div')
			links.setAttribute("class", "words")
			links.style.height = "30px"
			links.style.width = "100px"
			links.style.border = "1 px solid red"

			links.innerHTML = " " + wordBank[i] + '<br>'
			
			wordDisplay.appendChild(links)

			var wordChoices = document.getElementsByClassName("words")[i]

			addLinks()



		}



	}

	var secretWords = document.getElementsByClassName("words")
	console.log(links)

	function addLinks (){

		for(s=0; s< secretWords.length; s++){

			secretWords[s].addEventListener("click", function(){

				if (secretWords[s] == word){

					clientForm.submit()

				}else{

					window.location.reload()


				}

			})

		}

	}





	console.log(word)


	
