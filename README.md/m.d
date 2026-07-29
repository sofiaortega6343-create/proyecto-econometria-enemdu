# Determinantes del Empleo Informal en Ecuador: Un Enfoque Econométrico

[![Vercel Dashboard](https://img.shields.io/badge/Dashboard-Vercel-blue?style=for-the-badge&logo=vercel)](https://proyecto-econometria-enemdu-qwji.vercel.app)
[![GitHub Repository](https://img.shields.io/badge/GitHub-Repository-black?style=for-the-badge&logo=github)](https://github.com/sofiaortega6343-create/proyecto-econometria-enemdu)

## 📌 Resumen del Proyecto
Este estudio analiza los factores determinantes de la probabilidad de pertenecer al sector informal en Ecuador utilizando datos microeconómicos de la **Encuesta Nacional de Empleo, Desempleo y Subempleo (ENEMDU - INEC)** sobre una muestra representativa de 1,000 trabajadores.

Se evalúan y comparan dos metodologías econométricas:
1. **Modelo de Probabilidad Lineal (MPL - MCO)** como modelo de línea base.
2. **Modelo Logit (Efectos Marginales Promedio - AME)** como especificación principal acotada en el rango $[0, 1]$.

---

## 📊 Pregunta de Investigación
> ¿En qué medida los años de escolaridad, la edad, el sexo y el área geográfica determinan la probabilidad de pertenecer al sector informal en Ecuador?

---

## 📈 Comparación de Resultados Econométricos

| Variable | Modelo 1: MPL (MCO) <br> *(Coeficiente)* | Modelo 2: Logit <br> *(Efecto Marginal - AME)* | p-value (Logit) | Interpretación Económica (Logit) |
| :--- | :---: | :---: | :---: | :--- |
| **Escolaridad** | -0.0192 | **-0.0186** | 0.000 *** | -1.86% prob. de informalidad por año lectivo adicional |
| **Edad** | -0.0038 | **-0.0035** | 0.000 *** | -0.35% prob. de informalidad por año cumplido |
| **Sexo (Hombre)** | -0.0435 | **-0.0419** | 0.081 * | -4.19% menor probabilidad frente a mujeres |
| **Área (Urbana)** | -0.0362 | **-0.0351** | 0.186 | -3.51% menor probabilidad en zona urbana |

*Significancia estadística: *** p < 0.01, ** p < 0.05, * p < 0.10*

---

## ⚙️ Diagnóstico de Modelos

| Métrica | Modelo 1: MPL (MCO) | Modelo 2: Logit |
| :--- | :---: | :---: |
| **Ajuste ($R^2$ / Pseudo $R^2$)** | $R^2 = 0.0825$ | Pseudo $R^2 = 0.0898$ |
| **Estadístico F / LR** | $F = 22.41$ ($p < 0.001$) | $\text{LR } \chi^2 = 89.42$ ($p < 0.001$) |
| **Criterios de Información** | N/A | AIC: $915.86$ \| BIC: $940.40$ |
| **Observaciones** | 1,000 | 1,000 |

---

## 💡 Conclusión y Recomendación de Política
- **Alineación Econométrica:** Ambos modelos coinciden en el signo y la magnitud de los efectos.
- **Variable Clave:** La **escolaridad** es el determinante estructural con mayor impacto y significancia estadística ($p < 0.01$). Un mayor nivel educativo disminuye de forma sistemática la probabilidad de caer en el empleo informal.
- **Preferencia Teórica:** Se selecciona el **Modelo Logit** como la especificación válida para el análisis de política pública debido a que corrige las limitantes técnicas del MPL (probabilidades fuera del intervalo $[0,1]$ e heterocedasticidad).

---

🌐 **Dashboard Interactivo:** [Ver Dashboard en Vercel](https://proyecto-econometria-enemdu-qwji.vercel.app)  
✍️ **Autor:** Sofía Ortega
                                                       
