library(readxl)
path_to_file <- "data/ejemplos_lectura.xlsx"
df_ejemplos <- read_xlsx(path_to_file)
df_ejemplos

# Hay hojas ocultas
excel_sheets(path_to_file)

# Para leer una hoja en concreto
df_ejemplos <- read_xlsx(path_to_file, sheet = "Fechas")
df_ejemplos

read_xlsx(path_to_file, 
          sheet = "Fechas", 
          skip = 2)




# Para leer regiones (skip primero es para fila y el segundo skip se salta las 3 columnas, el guess indica las otras 5)
df_fechas <- read_xlsx(path_to_file, 
                       sheet = "Fechas", 
                       skip = 2, 
                       col_types = c(rep("skip", 3), rep("guess", 5)))

df_fechas

# Para fechas más complicadas, trabajaremos con dplyr
df_chungo <- read_xlsx(path_to_file, sheet = "Holi")
df_chungo
