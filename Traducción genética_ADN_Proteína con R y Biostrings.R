# 1. Carga las librerías y el archivo FASTA

library(Biostrings)

# Cargar tu archivo FASTA del gen TP53
secuencia <- readDNAStringSet("/Users/user/Documents/BIOINFORMATICA_CHATGPT/TP53.fasta")

# Verifica que se cargó bien
secuencia

#  2. Cortar una región del gen (ejemplo: nt 1001–1500)
fragmento <- subseq(secuencia[[1]], start = 1001, end = 1500)
fragmento                                                          #Este fragmento debe tener un múltiplo de 3 nucleótidos para traducirse bien.

# 3. Traducir el fragmento a proteína
proteina <- translate(fragmento)
proteina
