# Instalar y cargar el paquete eulerr
if (!require(eulerr)) install.packages("eulerr", dependencies = TRUE)
library(eulerr)

# Definir los conjuntos
huevos <- c(
  "platypus", "chicken", "crow", "dove", "duck", "flamingo", "gull", "hawk", "kiwi", 
  "lark", "ostrich", "parakeet", "penguin", "pheasant", "rhea", "skimmer", "skua", 
  "sparrow", "swan", "vulture", "wren", "pitviper", "slowworm", "tortoise", "tuatara", 
  "bass", "carp", "catfish", "chub", "dogfish", "haddock", "herring", "pike", "piranha", 
  "seahorse", "sole", "stingray", "tuna", "frog", "newt", "toad", "flea", "gnat", 
  "honeybee", "housefly", "ladybird", "moth", "termite", "wasp", "clam", "crab", 
  "crayfish", "lobster", "octopus", "seawasp", "slug", "starfish", "worm"
)

pelo <- c(
  "aardvark", "antelope", "bear", "boar", "buffalo", "calf", "cavy", "cheetah", "deer", 
  "elephant", "fruitbat", "giraffe", "girl", "goat", "gorilla", "hamster", "hare", 
  "leopard", "lion", "lynx", "mink", "mole", "mongoose", "opossum", "oryx", "platypus", 
  "polecat", "pony", "puma", "pussycat", "raccoon", "reindeer", "seal", "sealion", 
  "squirrel", "vampire", "vole", "wallaby", "wolf", "honeybee", "housefly", "moth", "wasp"
)

domesticos <- c(
  "calf", "cavy", "girl", "goat", "hamster", "pony", "pussycat", "reindeer", "chicken", 
  "dove", "parakeet", "carp", "honeybee"
)

# Unión
union_huevos_domesticos <- union(huevos, domesticos)
union_huevos_pelo <- union(huevos, pelo)
union_domesticos_pelo <- union(domesticos, pelo)

# Intersección
interseccion_huevos_domesticos <- intersect(huevos, domesticos)
interseccion_huevos_pelo <- intersect(huevos, pelo)
interseccion_domesticos_pelo <- intersect(domesticos, pelo)
interseccion_todos <- intersect(intersect(huevos, domesticos), pelo)

# Diferencia
diferencia_huevos_domesticos <- setdiff(huevos, domesticos)
diferencia_huevos_pelo <- setdiff(huevos, pelo)
diferencia_domesticos_pelo <- setdiff(domesticos, pelo)

# Visualizar con eulerr
fit <- euler(c(
  Huevos = length(setdiff(huevos, union(domesticos, pelo))),
  Domesticos = length(setdiff(domesticos, union(huevos, pelo))),
  Pelo = length(setdiff(pelo, union(huevos, domesticos))),
  "Huevos&Domesticos" = length(interseccion_huevos_domesticos),
  "Huevos&Pelo" = length(interseccion_huevos_pelo),
  "Domesticos&Pelo" = length(interseccion_domesticos_pelo),
  "Huevos&Domesticos&Pelo" = length(interseccion_todos)
))

# Colores diferenciados para las áreas exclusivas
colors <- c(
  Huevos = "#FF9999", 
  Domesticos = "#99CCFF", 
  Pelo = "#99FF99", 
  "Huevos&Domesticos" = "#FFCC99", 
  "Huevos&Pelo" = "#FF99CC", 
  "Domesticos&Pelo" = "#99CC99", 
  "Huevos&Domesticos&Pelo" = "#CC99FF"
)

# Plot
plot(fit, fills = colors, quantities = TRUE, main = "Operaciones de Huevos, Domésticos y Animales con Pelo")



SEGUNDO EJEMPLO:

# Instalar y cargar el paquete eulerr
if (!require(eulerr)) install.packages("eulerr", dependencies = TRUE)
library(eulerr)

# Definir los conjuntos
aletas <- c(
  "dolphin", "porpoise", "seal", "sealion", "bass", "carp", "catfish", "chub", 
  "dogfish", "haddock", "herring", "pike", "piranha", "seahorse", "sole", "stingray", "tuna"
)

predator <- c(
  "aardvark", "bear", "boar", "cheetah", "dolphin", "girl", "leopard", "lion", "lynx", "mink", 
  "mole", "mongoose", "opossum", "platypus", "polecat", "porpoise", "puma", "pussycat", 
  "raccoon", "seal", "sealion", "wolf", "crow", "gull", "hawk", "kiwi", "penguin", "rhea", 
  "skimmer", "skua", "vulture", "pitviper", "seasnake", "slowworm", "tuatara", "bass", 
  "catfish", "chub", "dogfish", "herring", "pike", "piranha", "stingray", "tuna", "frog", 
  "newt", "ladybird", "clam", "crab", "crayfish", "lobster", "octopus", "scorpion", 
  "seawasp", "starfish"
)

breathes <- c(
  "aardvark", "antelope", "bear", "boar", "buffalo", "calf", "cavy", "cheetah", "deer", 
  "dolphin", "elephant", "fruitbat", "giraffe", "girl", "goat", "gorilla", "hamster", "hare", 
  "leopard", "lion", "lynx", "mink", "mole", "mongoose", "opossum", "oryx", "platypus", 
  "polecat", "pony", "porpoise", "puma", "pussycat", "raccoon", "reindeer", "seal", 
  "sealion", "squirrel", "vampire", "vole", "wallaby", "wolf", "chicken", "crow", "dove", 
  "duck", "flamingo", "gull", "hawk", "kiwi", "lark", "ostrich", "parakeet", "penguin", 
  "pheasant", "rhea", "skimmer", "skua", "sparrow", "swan", "vulture"
)

# Unión
union_aletas_predator <- union(aletas, predator)
union_aletas_breathes <- union(aletas, breathes)
union_predator_breathes <- union(predator, breathes)

# Intersección
interseccion_aletas_predator <- intersect(aletas, predator)
interseccion_aletas_breathes <- intersect(aletas, breathes)
interseccion_predator_breathes <- intersect(predator, breathes)
interseccion_todos <- intersect(intersect(aletas, predator), breathes)

# Diferencia
diferencia_aletas_predator <- setdiff(aletas, predator)
diferencia_aletas_breathes <- setdiff(aletas, breathes)
diferencia_predator_breathes <- setdiff(predator, breathes)

# Visualizar con eulerr
fit <- euler(c(
  Aletas = length(setdiff(aletas, union(predator, breathes))),
  Predator = length(setdiff(predator, union(aletas, breathes))),
  Breathes = length(setdiff(breathes, union(aletas, predator))),
  "Aletas&Predator" = length(interseccion_aletas_predator),
  "Aletas&Breathes" = length(interseccion_aletas_breathes),
  "Predator&Breathes" = length(interseccion_predator_breathes),
  "Aletas&Predator&Breathes" = length(interseccion_todos)
))

# Colores diferenciados para las áreas exclusivas
colors <- c(
  Aletas = "#FF9999", 
  Predator = "#99CCFF", 
  Breathes = "#99FF99", 
  "Aletas&Predator" = "#FFCC99", 
  "Aletas&Breathes" = "#FF99CC", 
  "Predator&Breathes" = "#99CC99", 
  "Aletas&Predator&Breathes" = "#CC99FF"
)

# Plot
plot(fit, fills = colors, quantities = TRUE, main = "Operaciones de Aletas, Predator y Breathes")

