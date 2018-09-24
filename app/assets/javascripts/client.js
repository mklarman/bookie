
	var bettorType
  	var wordArray = ["loser", "negative", "parlay", "teaser", "hook", "football", "baseball", "hockey", "degenerate", "whale", "stuck", "steaming"]
  	var clientForm = document.getElementById("new_client")
  	var wordBank = []
	var wordArray
	var guess = document.getElementById("guess")
	var submit = document.getElementById("submit")
	var wordDisplay = document.getElementById("wordBank")
	var word
	var wordOne = document.getElementById("word_one")
	var wordTwo = document.getElementById("word_two")
	var wordThree = document.getElementById("word_three")
	var wordFour = document.getElementById("word_four")
	var wordFive = document.getElementById("word_five")
	var wordSix = document.getElementById("word_six")
	var wordSeven = document.getElementById("word_seven")
	var wordEight = document.getElementById("word_eight")
	var wordNine = document.getElementById("word_nine")
	var wordTen = document.getElementById("word_ten")
	
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

		word = wordArray[Math.floor(Math.random()*wordArray.length)];
		var index = wordArray.indexOf(word);
		
		if (index > -1) {
  			wordArray.splice(index, 1);
		}

		wordBank.push(word)

		shuffle(wordArray)

		wordBank.push(wordArray.pop())
		wordBank.push(wordArray.pop())

		shuffle(wordBank)

		if (wordOne){

			wordOne.innerHTML = wordBank[0]
			wordTwo.innerHTML = wordBank[1]
			wordThree.innerHTML = wordBank[2]

		}
		

	}else if (bettorType == "pay dumper"){

		word = wordArray[Math.floor(Math.random()*wordArray.length)];

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


		if (wordOne){
			
			wordOne.innerHTML = wordBank[0]
			wordTwo.innerHTML = wordBank[1]
			wordThree.innerHTML = wordBank[2]
			wordFour.innerHTML = wordBank[3]
			wordFive.innerHTML = wordBank[4]

		}


	}else{


		word = wordArray[Math.floor(Math.random()*wordArray.length)];
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

		if (wordOne){

			wordOne.innerHTML = wordBank[0]
			wordTwo.innerHTML = wordBank[1]
			wordThree.innerHTML = wordBank[2]
			wordFour.innerHTML = wordBank[3]
			wordFive.innerHTML = wordBank[4]
			wordSix.innerHTML = wordBank[5]
			wordSeven.innerHTML = wordBank[6]
			wordEight.innerHTML = wordBank[7]
			wordNine.innerHTML = wordBank[8]
			wordTen.innerHTML = wordBank[9]

		}



	}

if (wordOne){	
	
	wordOne.addEventListener("click", function(){

		if (wordOne.innerHTML == word){

			clientForm.submit()
		
		}else{

			window.location.reload()

		}

		
	})

}


if (wordTwo){
	
	wordTwo.addEventListener("click", function(){

		if (wordTwo.innerHTML == word){

			clientForm.submit()
		
		}else{

			window.location.reload()

		}

		
	})

}

if (wordThree){

	wordThree.addEventListener("click", function(){

		if (wordThree.innerHTML == word){

			clientForm.submit()
		
		}else{

			window.location.reload()

		}

		
	})

}

if (wordFour){

	wordFour.addEventListener("click", function(){

		if (wordFour.innerHTML == word){

			clientForm.submit()
		
		}else{

			window.location.reload()

		}

		
	})

}

if (wordFive){

	wordFive.addEventListener("click", function(){

		if (wordFive.innerHTML == word){

			clientForm.submit()
		
		}else{

			window.location.reload()

		}

		
	})

}

if (wordSix){

	wordSix.addEventListener("click", function(){

		if (wordSix.innerHTML == word){

			clientForm.submit()
		
		}else{

			window.location.reload()

		}

		
	})

}

if (wordSeven){

	wordSeven.addEventListener("click", function(){

		if (wordSeven.innerHTML == word){

			clientForm.submit()
		
		}else{

			window.location.reload()

		}

		
	})

}

if (wordEight){

	wordEight.addEventListener("click", function(){

		if (wordEight.innerHTML == word){

			clientForm.submit()
		
		}else{

			window.location.reload()

		}

		
	})

}

if (wordNine){

	wordNine.addEventListener("click", function(){

		if (wordNine.innerHTML == word){

			clientForm.submit()
		
		}else{

			window.location.reload()

		}

		
	})

}

if (wordTen){

	wordTen.addEventListener("click", function(){

		if (wordTen.innerHTML == word){

			clientForm.submit()
		
		}else{

			window.location.reload()

		}

		
	})

}







	console.log(word)


	
