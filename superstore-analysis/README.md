# Superstore Sales Analysis — End to End
Proyecto de análisis de datos end-to-end utilizando Python, SQL Server y Power BI.

## Problema de negocio
Una empresa retail necesita entender qué categorías, regiones y productos generan pérdidas, 
y cómo la política de descuentos impacta en la rentabilidad.

## Stack tecnológico
- **Python** (Pandas) — ETL y limpieza de datos
- **SQL Server** — Modelado dimensional y queries analíticas
- **Power BI** — Dashboard interactivo

## Arquitectura
CSV → Python ETL → SQL Server (esquema estrella) → Power BI Dashboard

## Estructura del proyecto
- `etl/` — Notebooks de exploración y transformación de datos
- `sql/` — Scripts de creación de tablas y queries analíticas
- `dashboard/` — Archivo .pbix y capturas del dashboard
- `data/raw/` — Dataset original
- `data/processed/` — Tablas limpias exportadas

## Insights principales
1. **Furniture** tiene el margen más bajo (4.27%) a pesar de ser la segunda categoría en ventas
2. **Tables** pierde $17,725 con un descuento promedio del 26% — la subcategoría más destructiva
3. **Central** es la única región con margen negativo (-19.8%)
4. Las ventas crecieron consistentemente de 2014 a 2017 con pico en Q4 cada año

## Dashboard
![Resumen](dashboard/screenshots/Screenshot%202026-03-06%20122859.png)