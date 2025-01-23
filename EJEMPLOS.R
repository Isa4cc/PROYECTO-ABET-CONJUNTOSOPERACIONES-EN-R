# Instalar y cargar el paquete eulerr
if (!require(eulerr)) install.packages("eulerr", dependencies = TRUE)
library(eulerr)

# Definir los conjuntos
breathes <- c(
  "aardvark", "antelope", "bear", "boar", "buffalo", "calf", "cavy", "cheetah", "deer", 
  "dolphin", "elephant", "fruitbat", "giraffe", "girl", "goat", "gorilla", "hamster", "hare", 
  "leopard", "lion", "lynx", "mink", "mole", "mongoose", "opossum", "oryx", "platypus", 
  "polecat", "pony", "porpoise", "puma", "pussycat", "raccoon", "reindeer", "seal", 
  "sealion", "squirrel", "vampire", "vole", "wallaby", "wolf", "chicken", "crow", "dove", 
  "duck", "flamingo", "gull", "hawk", "kiwi", "lark", "ostrich", "parakeet", "penguin", 
  "pheasant", "rhea", "skimmer", "skua", "sparrow", "swan", "vulture", "wren", "pitviper", 
  "slowworm", "tortoise", "tuatara", "frog", "newt", "toad", "flea", "gnat", "honeybee", 
  "housefly", "ladybird", "moth", "termite", "wasp", "scorpion", "slug", "worm"
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

# Crear el conjunto universo
universo <- union(breathes, predator)

# Calcular la diferencia Predator - Breathes
diferencia_breathes_predator <- setdiff(breathes, predator)
print(diferencia_breathes_predator)

# Crear el diagrama de Venn mostrando las cantidades en las áreas
fit <- euler(c(
  Breathes = length(breathes) - length(intersect(predator, breathes)),
  Predator = length(predator) - length(intersect(predator, breathes)),
  "Breathes&Predator" = length(intersect(predator, breathes))
))

# Dibujar el diagrama de Venn
plot(fit, fills = c(Predator = "#FF9999", Breathes = "#FFFFFF", "Breathes&Predator" = "#FFFFFF"),
     quantities = TRUE, 
     main = "Diagrama de Venn: Breathes - Predator")