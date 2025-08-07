# 1. DESCARGAR UNA SECUENCIA REAL DEL GEN TP53

# Vamos a descargar un fragmento de ADN desde el NCBI, en formato FASTA.
#Asegúrate que quede con extensión .fasta y no .txt

# 2. CARGAR LA SECUENCIA EN R

 # Instalar y cargar librerías:

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("Biostrings")

library(Biostrings)

 #Leer archivo FASTA:
secuencia <- readDNAStringSet("/Users/user/Documents/BIOINFORMATICA_CHATGPT/TP53.fasta")
 #secuencia

#  3. CORTAR UNA REGIÓN DEL GEN TP53

 #Ver longitud de la secuencia:
width(secuencia)

 #Cortar los primeros 1000 nucleótidos:
region1 <- subseq(secuencia[[1]], start = 1, end = 1000)
 #Cortar otra región interna (ej: 2000 a 2500):
region2 <- subseq(secuencia[[1]], start = 2000, end = 2500)

# 4. GUARDAR LA REGIÓN CORTADA COMO NUEVO ARCHIVO FASTA

 #Guardar región1:
region1_set <- DNAStringSet(region1)
names(region1_set) <- "TP53_region_1_1000"
writeXStringSet(region1_set, filepath = "TP53_region_1_1000.fasta")

 #Guardar región2:
region2_set <- DNAStringSet(region2)
names(region2_set) <- "TP53_region_2000_2500"
writeXStringSet(region2_set, filepath = "TP53_region_2000_2500.fasta")

#  BONUS: Ver los primeros nucleótidos
as.character(region1)[1]
