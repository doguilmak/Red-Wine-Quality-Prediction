<h1 align=center><font size = 5>Wine Type and Quality Prediction</font></h1>

<img  src="https://learn.winecoolerdirect.com/wp-content/uploads/2015/07/red-wine.jpg"  alt="wine">

<small>Picture Source: <a  href="https://learn.winecoolerdirect.com/red-wine/">Wine Cooler Direct</a></small>

<br>

<h2>Data Set Information:</h2>

<p>The two datasets are related to red and white variants of the Portuguese <i>"Vinho Verde"</i> wine. For more details, consult: <a  href="https://www.vinhoverde.pt/en/">Web Link</a> or the reference <i>[Cortez et al., 2009]</i>. Due to privacy and logistic issues, only <i>physicochemical</i> (inputs) and <i>sensory</i> (the output) variables are available (e.g. there is no data about grape types, wine brand, wine selling price, etc.).

These datasets can be viewed as <i>classification</i> or <i>regression</i> tasks. The classes are ordered and not balanced (e.g. there are many more normal wines than excellent or poor ones). Outlier detection algorithms could be used to detect the few excellent or poor wines. Also, we are not sure if all input variables are relevant. So it could be interesting to test feature selection methods.</p>

<br> 

<h2>Keywords</h2> 

<ul>
	<li>Wine</li>
	<li>Regression</li>
	<li>Machine Learning</li>
	<li>Quality Test</li>
	<li>Artifical Neural Networks</li>
	<li>Multi-output Model</li>
	<li>K-Nearest Neighbors (K-NN)</li>
	<li>Decision Tree</li>
  <li>Grid Search</li>
</ul> 

<br>

<h2>Attribute Information</h2>

<p>For more information, read <i>[Cortez et al., 2009]</i>. Input variables <i>(based on physicochemical tests)</i>:</p>

<ol>
	<li>fixed acidity</li>
	<li>volatile acidity</li>
	<li>citric acid</li>
	<li>residual sugar</li>
	<li>chlorides</li>
	<li>free sulfur dioxide</li>
	<li>total sulfur dioxide</li>
	<li>density</li>
	<li>pH</li>
	<li>sulphates</li>
	<li>alcohol</li>
	<li><b>Output variable (based on sensory data): quality (score between 0 and 10)</b></li>
</ol>

<p>This dataset has been referred from <a  href="https://archive.ics.uci.edu/ml/datasets/Wine+Quality">archive.ics.uci.edu</a>.</p>

<br>

<h2>Relevant Papers</h2>

<p>P. Cortez, A. Cerdeira, F. Almeida, T. Matos and J. Reis. Modeling wine preferences by data mining from physicochemical properties.

In Decision Support Systems, Elsevier, 47(4):547-553, 2009.

Available at: <a  href="https://www.sciencedirect.com/science/article/abs/pii/S0167923609001377?via%3Dihub">sciencedirect.com</a></p>  

<br>

<h2>Objectives</h2>

<ul>
	<li>Understand the data set & cleanup (data pre-processing).</li>
	<li>Build <i>multi-class regression</i>  model to predict quality of the wine (as 0, 1 and 2 classes).  Afterwards, evaluate the model.</li>
	<li>Build <i>artificial neural network</i> model to predict type of wine. Afterwards, evaluate the <i>artificial neural network</i> model.</li>
	<li>Build classification models to predict wine type with <i>k-nearest neighbors (K-NN)</i> and <i>decision tree</i>. Afterwards, evaluate the models.</li>
</ul> 

<br>

<h2>Notebooks</h2>

<ol>
	<li><p>Wine type and quality prediction with <i>artificial neural networks</i> (red and white wines): <a href="https://github.com/doguilmak/Red-Wine-Quality-Prediction/blob/main/wine_ann.ipynb">wine_ann.ipynb</a>. You can use the model with loading <a  href="https://github.com/doguilmak/Red-Wine-Quality-Prediction/blob/main/saved_models/my_model.h5">model.h5</a> or you can use the whole model <a  href="https://github.com/doguilmak/Red-Wine-Quality-Prediction/tree/main/saved_models/saved_model">here</a>.</p></li>
	<li><p>Wine quality prediction with <i>multiple regression</i> (only red wine): <a href="https://github.com/doguilmak/Red-Wine-Quality-Prediction/blob/main/red_wine_multiple_reg.ipynb">red_wine_multiple_reg.ipynb</a>. You can use <a href="https://github.com/doguilmak/Red-Wine-Quality-Prediction/blob/main/saved_models/regr.save">regr.save</a>.</p></li>
	<li>Wine type prediction models made with <i>K-Nearest Neighbors (K-NN)</i> and <i>Decision Tree</i>: <a href="https://github.com/doguilmak/Red-Wine-Quality-Prediction/blob/main/wine_quality_knn_dt.ipynb">wine_quality_knn_dt.ipynb</a>. In addition, you find <i>K-NN</i> trained model as <a href="https://github.com/doguilmak/Red-Wine-Quality-Prediction/blob/main/saved_models/knn_model.sav">knn_model.sav</a> and trained <i>Decision Tree</i> model as <a href="https://github.com/doguilmak/Red-Wine-Quality-Prediction/blob/main/saved_models/dt_model.sav">dt_model.sav</a>.</li>
</ol>

<br>

<h2>Contact Me</h2>

<p>If you have something to say to me please contact me:</p> 

<ul>
	<li>Twitter: <a  href="https://twitter.com/Doguilmak">Doguilmak</a></li>
	<li>Mail address: doguilmak@gmail.com</li>
</ul>
