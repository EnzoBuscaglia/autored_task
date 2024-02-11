# AutoRed Data Science Task

## Part I

1. To initialize an sqlite3 database with one empty table structured as the given dataset autos.csv and also import the content of the dataset into that table, run the script:

`initialize_and_import_from_csv.sh`

2. To create a new table in the db with the results of the query and also export that table as a new .csv file, run the script:

`create_and_export_to_csv.sh`

## Part II

1. Run the jupyter cells inside autos_predictions.ipynb.

1.1. Optional, to load the cleaned dataset into the sqlite database, run the script:

`import_cleaned_table`

2.a. Given that the Mean Absolute Error (MAE) of the neural network is less than 0.3% of the minimum example value ($6M CLP), considering only this metric, I would prefer the multivariable linear regression model, mainly due to the high implementation and deployment requirements of neural networks. Training a neural network requires appropriate hardware, a more complex development environment (GPU libraries), and significantly more design and training time than what the first point of this section requires. Along with this, given the small size of the dataset of just 20,000 records, a neural network runs the risk of overlearning from the dataset, and the risk of overfitting is greater compared to a much simpler linear regression model.

2.b. I would integrate the metrics used in the previous point: R² (coefficient of determination) and RMSE (Root Mean Squared Error). The former, since it allows characterizing the model's ability to capture the variability of the data when making predictions. The latter, since RMSE exacerbates the penalty on larger errors, which could be important when wanting to reduce large errors in price prediction. I would also verify if indeed the setup and training time of the neural network is significantly greater than that of the multivariable linear regression model as pointed out in the previous point.

---

2.a. Dado que el EAM de la red neuronal es inferior al 0,3% del valor mínimo del ejemplo ($ CLP 6MM) solo considerando esta métrica preferiría el modelo de regresión lineal multivariable, principalmente debido a los altos requerimientos de implementación y despliegue de las redes neuronales.
Para entrenar una red neuronal se requiere del hardware adecuado, un entorno de desarrollo más complejo (librerías de GPU) y un tiempo de diseño y entrenamiento de los modelos mucho mayor que el que requiere el punto 1 de este apartado.
Junto con lo anterior, dado el tamaño reducido del conjunto de datos de apenas 20 mil datos, una red neuronal corre el riesgo de sobre aprender del conjunto de datos y el riesgo de overfitting es mayor en comparación con un modelo de regresión lineal que es mucho más simple.

2.b. Integraría las métricas que utilicé en el punto anterior: R² (coeficiente de determinación) y RSME (raíz del error cuadrático medio). El primero, ya que permite caracterizar la capacidad del modelo de capturar la variabilidad de los datos al momento de hacer predicciones. El segundo, puesto que el RSME agrava la penalización sobre los errores más grandes, lo que podría resultar importante al momento de querer reducir grandes errores en la predicción de precios.
También corroboraría si efectivamente el tiempo de "setup" y entrenamiento de la red neuronal es efectivamente mucho mayor que la del modelo de regresión lineal multivariable como señalé en el punto anterior.
