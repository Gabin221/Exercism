# Exercism

## Bash

### Structure d'un fichier Bash

```bash
#!/usr/bin/env bash

# le reste du programme
```

### Récupérer le nombre de paramètres

```bash
#!/usr/bin/env bash

nbr=$#
echo "Nombre de paramètres: ${nbr}"
```

### Récupérer les paramètres

```bash
#!/usr/bin/env bash

parametre1=$1
parametre2=$2
echo "Le premier paramètre: ${parametre1}"
echo "Le second paramètre: ${parametre2}"
```

### Connaître la taille d'une chaine de caractères

```bash
#!/usr/bin/env bash

input=$1

echo "La taille de la chaîne '${input}' est: ${#input}"
```

### Boucles

#### if else et condition

```bash
#!/usr/bin/env bash

nbr=$#
if [ $nbr -eq 1 ]; 
then 
    echo "Il y a un seul paramètre"
else 
    echo "Il y a plus de un paramètre"
fi
```

#### for

```bash
#!/usr/bin/env bash

input=$1

for i in $(seq 1 ${#input}); 
do
    echo $(echo $input | cut -c$i)
done
```

## C

## C++

## JavaScript

## Kotlin

## Python
