# Determinantes del Empleo Informal en Ecuador (ENEMDU - INEC)
**Proyecto Final de Econometría Aplicada**

Este repositorio contiene la estimación econométrica de modelos de respuesta binaria (Logit/Probit) para analizar la probabilidad de empleo informal en el Ecuador, utilizando datos de la Encuesta Nacional de Empleo, Desempleo y Subempleo (ENEMDU) del INEC[cite: 1].

## Enlaces Directos del Proyecto
- **Minipaper Académico (PDF):** [Ver Documento PDF](ORTEGA_SOFIA_PROYECTO_FINAL_ECONOMETRIA.pdf)[cite: 1]
- **Dashboard Interactivo:** [Despliegue en Vercel](#) *(Enlace de visualización)*[cite: 1]

## Diccionario de Variables
| Variable | Tipo | Descripción | Valores / Unidades |
| :--- | :--- | :--- | :--- |
| `informal` | Binaria (Dependiente) | Condición de ocupación informal | 1 = Informal, 0 = Formal[cite: 1] |
| `escolaridad` | Continua | Años de educación aprobados | 0 a 19 años[cite: 1] |
| `edad` | Continua | Edad del trabajador | 18 a 65 años[cite: 1] |
| `sexo` | Categórica | Sexo del individuo | 1 = Hombre, 0 = Mujer[cite: 1] |
| `area` | Categórica | Zona de residencia | 1 = Urbano, 0 = Rural[cite: 1] |
| `fexp` | Continua | Factor de expansión del INEC | Ponderador representativo[cite: 1] |

## Estructura del Repositorio
- `datos/`: Bases de datos procesadas y tratadas (`enemdu_procesada.csv`)[cite: 1].
- `src/`: Scripts modulares en Python con la estimación de modelos econométricos y efectos marginales (`modelo_econometrico.py`)[cite: 1].
- `prompts/`: Registro detallado sobre el uso responsable de Inteligencia Artificial (`registro_uso_ia.md`)[cite: 1].
- `requirements.txt`: Dependencias del proyecto para garantizar reproducibilidad[cite: 1].

## Requisitos de Ejecución
```bash
pip install -r requirements.txt
python src/modelo_econometrico.py

- **Dashboard Interactivo:** [Ver Dashboard en Vercel](https://proyecto-econometria-enemdu-eu17-nine.vercel.app)  
                                                       
