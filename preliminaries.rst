Preliminaries
===============

To obtain the Zoom link of the course, you need to run a jupyter notebook and pass a questionaire.

The jupyter notebook is here:

 * https://colab.research.google.com/drive/1LAhKEThrOpriq6M2Slc8_QLpaIEbO6la?usp=sharing

   * Click File -> Save a copy ... to make your own copy.

 * Alternative: If you want to work on your own computer or do not have a Google account:
 
   * Download the notebook (.ipynb file)
   * Install the necessary packages as explained in :doc:`install`



Questionaire
-------------



To join the course, you need to fill out the following questionaire:

.. raw:: html

	<script>
	var submitAnswer = function() {

	  var total = 0;
	  total += +document.getElementById('q1').value;
	  total *= 100;
	  total += +document.getElementById('q2').value;
	  total *= 10;
	  var radios = document.getElementsByName('q3');
	  for (var i = 0, length = radios.length; i < length; i++) {
		  if (radios[i].checked) {
			 total += +radios[i].value;
			 break;
		   }
	  }
	  total *= 10;
	  var radios = document.getElementsByName('q4');
	  for (var i = 0, length = radios.length; i < length; i++) {
		  if (radios[i].checked) {
			 total += +radios[i].value;
			 break;
		   }
	  }
	  total *= 10;
	  
	  var radios = document.getElementsByName('q5');
	  for (var i = 0, length = radios.length; i < length; i++) {
		  if (radios[i].checked) {
			 total += +radios[i].value;
			 break;
		   }
	  }
	  
	  
	  document.getElementById("result").innerHTML = "<a href='" + total + ".html'>If correct, this will lead to the Zoom link</a>";
	  return false;
	};
	</script>

	<form>
		<h3>Imports</h3>
			Output of print(len(dir(...) ... )) command? (should be a integer)
		<div>
		<input type="text" id="q1" value="">
		</div>
		<h3>Narrow uniform distribution</h3>
		What is the integral over the probability density?
		<div>
			<input type="text" id="q2" value="">
		</div>
		<h3>Gaussian distribution</h3>
		Integrated probability between 1.44 and 1.56?
		<div>
			<label><input type="radio" name="q3" value="1">0.8632</label>
			<label><input type="radio" name="q3" value="2">0.9953</label>
			<label><input type="radio" name="q3" value="3">0.9973</label>
			<label><input type="radio" name="q3" value="4">0.9993</label>
			<label><input type="radio" name="q3" value="5">1.0000</label>
		</div>
		<h3>Generating random numbers</h3>
		What is the 99% quantile (99th percentile) of this distribution?
		<div>
			<label><input type="radio" name="q4" value="1">0.8975</label>
			<label><input type="radio" name="q4" value="2">1.2383</label>
			<label><input type="radio" name="q4" value="3">1.2222</label>
			<label><input type="radio" name="q4" value="4">1.5518</label>
			<label><input type="radio" name="q4" value="5">0.1732</label>
		</div>
		<h3>Levy flight</h3>
		Is the resulting distribution the same, narrower or wider than the proposal distribution?
		<div>
			<label><input type="radio" name="q5" value="1">narrower</label>
			<label><input type="radio" name="q5" value="2">same</label>
			<label><input type="radio" name="q5" value="3">wider</label>
		</div>

		<input type="button" onclick="submitAnswer();" value="Check Answers" />
		<div id="result"></div>
	</form>
