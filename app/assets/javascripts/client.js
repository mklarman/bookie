
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

	var linkHolder



	


	
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

		linkHolder = []

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

			links_i = document.createElement('div')
			links_i.style.height = "30px"
			links_i.style.width = "100px"
			links_i.style.border = "1 px solid red"

			links_i.innerHTML = " " + wordBank[i] + '<br>'

			links_i.addEventListener("click", function(){

				if (wordBank[i] == word){

					clientForm.submit()
				
				}else{

					window.location.reload()

				}

			})

			wordDisplay.appendChild(links_i)

			linkHolder.push(links_i)
			
			for (i=0; i< linkHolder.length; i++){

				wordDisplay.innerHTML += linkHolder[i] + " "
			}
			


		}
		

		


	}else if (bettorType == "pay dumper"){

		var word = wordArray[Math.floor(Math.random()*wordArray.length)];

		var index = wordArray.indexOf(word);

		linkHolder = []
		
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

			links_i = document.createElement('div')
			links_i.style.height = "30px"
			links_i.style.width = "100px"
			links_i.style.border = "1 px solid red"

			links_i.innerHTML = " " + wordBank[i] + '<br>'

			links_i.addEventListener("click", function(){

				if (wordBank[i] == word){

					clientForm.submit()
				
				}else{

					window.location.reload()

				}

			})

			wordDisplay.appendChild(links_i)

			linkHolder.push(links_i)
			
			for (i=0; i< linkHolder.length; i++){

				wordDisplay.innerHTML += linkHolder[i] + " "
			}
			


		}



	}else{


		var word = wordArray[Math.floor(Math.random()*wordArray.length)];
		var index = wordArray.indexOf(word);

		linkHolder = []
		
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

			links_i = document.createElement('div')
			links_i.style.height = "30px"
			links_i.style.width = "100px"
			links_i.style.border = "1 px solid red"

			links_i.innerHTML = " " + wordBank[i] + '<br>'

			links_i.addEventListener("click", function(){

				if (wordBank[i] == word){

					clientForm.submit()
				
				}else{

					window.location.reload()

				}

			})

			wordDisplay.appendChild(links_i)

			linkHolder.push(links_i)
			
			for (i=0; i< linkHolder.length; i++){

				wordDisplay.innerHTML += linkHolder[i] + " "
			}
			


		}



	}

	var testDiv = document.createElement("div")
	testDiv.setAttribute("id", "test")

	var reloadTest = document.getElementById("test")
	reloadTest.style.height = "100px"
	reloadTest.style.width = "100px"
	reloadTest.style.border = "1px solid red"
	reloadTest.innerHTML = "HELLO"

	body.appendChild(reloadTest)

	console.log(linkHolder)

	var secretWords = document.getElementsByClassName("words")
	console.log(links)

	function addLinks (){

		// for(s=0; s< secretWords.length; s++){

		// 	secretWords[s].addEventListener("click", function(){

		// 		if (secretWords[s] == word){

		// 			clientForm.submit()

		// 		}else{

		// 			window.location.reload()


		// 		}

		// 	})

		// }

	}





	console.log(word)


	
