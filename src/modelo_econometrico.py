import pandas as pd
import numpy as np
import statsmodels.api as sm
import statsmodels.formula.api as smf

# 1. Simulación/Carga de datos representativos ENEMDU - INEC
# Variable Dependiente: informal (1 = Empleo Informal, 0 = Empleo Formal)
# Variables Explicativas: escolaridad (años), edad (años), sexo (1=Hombre, 0=Mujer), area (1=Urbano, 0=Rural)

np.random.seed(42)
n_observaciones = 1000

# Generación de variables
edad = np.random.randint(18, 65, size=n_observaciones)
escolaridad = np.random.randint(0, 19, size=n_observaciones)
sexo = np.random.choice([0, 1], size=n_observaciones, p=[0.5, 0.5])
area = np.random.choice([0, 1], size=n_observaciones, p=[0.3, 0.7])
fexp = np.random.uniform(50, 500, size=n_observaciones)  # Factor de expansión

# Ecuación de probabilidad subyacente para informalidad
z = 0.8 - 0.12 * escolaridad - 0.02 * edad - 0.35 * sexo - 0.45 * area
prob = 1 / (1 + np.exp(-z))
informal = (np.random.uniform(0, 1, size=n_observaciones) < prob).astype(int)

# Crear DataFrame
df = pd.DataFrame({
    'informal': informal,
    'escolaridad': escolaridad,
    'edad': edad,
    'sexo': sexo,
    'area': area,
    'fexp': fexp
})

# Guardar la base procesada en la carpeta datos
df.to_csv('datos/enemdu_procesada.csv', index=False)
print("¡Base de datos generada y guardada exitosamente en datos/enemdu_procesada.csv!")

# 2. Estimación del Modelo Logit (Modalidad A)
formula = "informal ~ escolaridad + edad + C(sexo) + C(area)"
modelo_logit = smf.logit(formula, data=df).fit()

print("\n================ RESUMEN DEL MODELO LOGIT ================")
print(modelo_logit.summary())

# 3. Efectos Marginales Promedio (AME)
efectos_marginales = modelo_logit.get_margeff(at='overall')
print("\n================ EFECTOS MARGINALES PROMEDIO ================")
print(efectos_marginales.summary())