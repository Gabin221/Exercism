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

#### if else

```bash
#!/usr/bin/env bash

nbr=$#
if [ $nbr -eq 1 ]; 
then 
    echo "Il y a un seul paramètre"
elif [ $nbr -eq 2 ]; 
then
    echo "Il y a deux paramètres"
else
    echo "Il y a plus de deux paramètres"
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

echo "Autre possibilité:"

for (( i=1; i<=${#input}; i++ ))
do
    echo $(echo $input[i] | cut -c$i)
done
```

### Incrémenter une variable

```bash
#!/usr/bin/env bash

nbr=0
echo "Avant incrémentation: ${nbr}"
for (( i=1; i<=5; i++ ))
do
    nbr=$((nbr+1))
done

echo "Après incrémentation: ${nbr}"
```

### Opérations mathématiques

```bash
#!/usr/bin/env bash

echo "5 plus 3 = $((5+3))"
echo "5 fois 3 = $((5*3))"
echo "5 puissance 3: $((5**3))"
echo "5 modulo 3: $((5%3))"
echo "2 puissance 100 avec bc: $(echo "2 ^ 100" | bc)"
echo "2 puissance 100 sans bc: $((2**100))"
```

### Vérifier si une chaîne est contenue dans une autre

```bash
#!/usr/bin/env bash

chaine="coucou"
sousChaine="ou"

if [[ ${chaine} =~ ${sousChaine} ]];
then
    echo "'${chaine}' contient '${sousChaine}'"
fi

echo "Autre possibilité:"

if [[ $chaine == *"$sousChaine"* ]];
then
    echo "'${chaine}' contient '${sousChaine}'"
fi
```

### Lowercase/Uppercase

```bash
#!/usr/bin/env bash

chaine="CouCou"

lowercase=$(tr '[:upper:]' '[:lower:]' <<< "$chaine")
uppercase=$(tr '[:lower:]' '[:upper:]' <<< "$chaine")

echo "${chaine} en lowercase: ${lowercase}"
echo "${chaine} en uppercase: ${uppercase}"
```

### Enlever un caractère d'une chaîne

```bash
#!/usr/bin/env bash

chaine="coucou"
chaineModifiee=$( echo $chaine | tr -d 'c' )

echo "chaîne de départ: ${chaine}"
echo "chaine modifiée: ${chaineModifiee}"
```

### Concaténer deux chaînes de caractères

```bash
#!/usr/bin/env bash

chaine1="Hello, "
chaine2="World!"

concatenation="${chaine1}${chaine2}"

echo "chaine 1: '${chaine1}'"
echo "chaine 2: '${chaine2}'"
echo "concaténation: '${concatenation}'"
```

### Comparer deux chaînes de caractères

```bash
#!/usr/bin/env bash

chaine1="coucou"
chaine2="CouCou"

if [ "$chaine1" = "coucou" ];
then 
    echo "${chaine1} = coucou"
fi
if [ "$chaine1" = "$chaine2" ];
then 
    echo "${chaine1} = ${chaine2}"
else
    echo "${chaine2} != ${chaine2}"
fi
```

### Comparer deux entiers

```bash
#!/usr/bin/env bash

nbr=3
if [ $nbr -eq 3 ]; 
then 
    echo "${nbr} = 3"
fi
if [ $nbr -ne 5 ]; 
then 
    echo "${nbr} != 3"
fi
if [ $nbr -ge 2 ] || [ $nbr -gt 2 ]; 
then 
    echo "${nbr} >= 2, ${nbr} > 2"
fi
if [ $nbr -le 4 ] || [ $nbr -lt 4 ]; 
then 
    echo "${nbr} <= 4, ${nbr} < 4"
fi
```

### Récupérer la position d'une sous-chaîne dans une chaîne

```bash
chaine="<fis4 e'1 >16 <fis4 e'1 >16 r16<fis4 e'1 >16 r16<fis4 c'2 >16 <fis4 e'1 >16 r16<b2 g'1 >16 r8.g8.3 r16"
# recherche de la première position de la chaine "16"
recherche="16"
debut_chaine="${chaine%%${recherche}*}"
position=$((${#debut_chaine}+1))
echo ${position}
```

## Python

### Structure d'un fichier Python

"""
#!/usr/bin/env python3

# le reste du programme
"""

### Récupérer le nombre de paramètres

#!/usr/bin/env python3

import sys

nbr = len(sys.argv) - 1
print("Nombre de paramètres:", nbr)

### Récupérer les paramètres

#!/usr/bin/env python3

import sys

parametre1 = sys.argv[1] if len(sys.argv) > 1 else None
parametre2 = sys.argv[2] if len(sys.argv) > 2 else None
print("Le premier paramètre:", parametre1)
print("Le second paramètre:", parametre2)

### Connaître la taille d'une chaine de caractères

#!/usr/bin/env python3

input_string = input("Entrez une chaîne de caractères: ")

print("La taille de la chaîne '{}': {}".format(input_string, len(input_string)))

### Boucles

#### if else

#!/usr/bin/env python3

import sys

nbr = len(sys.argv) - 1

if nbr == 1:
    print("Il y a un seul paramètre")
elif nbr == 2:
    print("Il y a deux paramètres")
else:
    print("Il y a plus de deux paramètres")

#### for

#!/usr/bin/env python3

input_string = input("Entrez une chaîne de caractères: ")

print("Méthode 1:")
for char in input_string:
    print(char)

print("Méthode 2:")
for i in range(len(input_string)):
    print(input_string[i])

### Incrémenter une variable

#!/usr/bin/env python3

nbr = 0
print("Avant incrémentation:", nbr)
for i in range(1, 6):
    nbr += 1

print("Après incrémentation:", nbr)

### Opérations mathématiques

#!/usr/bin/env python3

print("5 plus 3 =", 5 + 3)
print("5 fois 3 =", 5 * 3)
print("5 puissance 3:", 5 ** 3)
print("5 modulo 3:", 5 % 3)
print("2 puissance 100:", 2 ** 100)

### Vérifier si une chaîne est contenue dans une autre

#!/usr/bin/env python3

chaine = "coucou"
sousChaine = "ou"

if sousChaine in chaine:
    print("'{}' contient '{}'".format(chaine, sousChaine))

### Lowercase/Uppercase

#!/usr/bin/env python3

chaine = "CouCou"

lowercase = chaine.lower()
uppercase = chaine.upper()

print("{} en lowercase: {}".format(chaine, lowercase))
print("{} en uppercase: {}".format(chaine, uppercase))

### Enlever un caractère d'une chaîne

#!/usr/bin/env python3

chaine = "coucou"
chaineModifiee = chaine.replace('c', '')

print("Chaîne de départ:", chaine)
print("Chaîne modifiée:", chaineModifiee)

### Concaténer deux chaînes de caractères

#!/usr/bin/env python3

chaine1 = "Hello, "
chaine2 = "World!"

concatenation = chaine1 + chaine2

print("Chaine 1: '{}'".format(chaine1))
print("Chaine 2: '{}'".format(chaine2))
print("Concaténation: '{}'".format(concatenation))

### Comparer deux chaînes de caractères

#!/usr/bin/env python3

chaine1 = "coucou"
chaine2 = "CouCou"

if chaine1 == "coucou":
    print("{} = coucou".format(chaine1))

if chaine1 == chaine2:
    print("{} = {}".format(chaine1, chaine2))
else:
    print("{} != {}".format(chaine1, chaine2))

### Comparer deux entiers

#!/usr/bin/env python3

nbr = 3

if nbr == 3:
    print("{} = 3".format(nbr))

if nbr != 5:
    print("{} != 5".format(nbr))

if nbr >= 2 or nbr > 2:
    print("{} >= 2, {} > 2".format(nbr, nbr))

if nbr <= 4 or nbr < 4:
    print("{} <= 4, {} < 4".format(nbr, nbr))

### Récupérer la position d'une sous-chaîne dans une chaîne

chaine = "<fis4 e'1 >16 <fis4 e'1 >16 r16<fis4 e'1 >16 r16<fis4 c'2 >16 <fis4 e'1 >16 r16<b2 g'1 >16 r8.g8.3 r16"
# recherche de la première position de la chaine "16"
recherche = "16"
position = chaine.find(recherche) + 1
print(position)

