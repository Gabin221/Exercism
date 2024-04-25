# Exercism

## Table des Matières
1. [Bash](#bash)
    1. [Structure d'un fichier Bash](#structure-dun-fichier-bash)
    2. [Récupérer le nombre de paramètres](#récupérer-le-nombre-de-paramètres)
    3. [Récupérer les paramètres](#récupérer-les-paramètres)
    4. [Connaître la taille d'une chaine de caractères](#connaître-la-taille-dune-chaîne-de-caractères)
    5. [Boucles](#boucles)
        1. [if else](#if-else)
        2. [for](#for)
    6. [Incrémenter une variable](#incrémenter-une-variable)
    7. [Opérations mathématiques](#opérations-mathématiques)
    8. [Vérifier si une chaîne est contenue dans une autre](#vérifier-si-une-chaîne-est-contenue-dans-une-autre)
    9. [Lowercase/Uppercase](#lowercaseuppercase)
    10. [Enlever un caractère d'une chaîne](#enlever-un-caractère-dune-chaîne)
    11. [Concaténer deux chaînes de caractères](#concaténer-deux-chaînes-de-caractères)
    12. [Comparer deux chaînes de caractères](#comparer-deux-chaînes-de-caractères)
    13. [Comparer deux entiers](#comparer-deux-entiers)
    14. [Récupérer la position d'une sous-chaîne dans une chaîne](#récupérer-la-position-dune-sous-chaîne-dans-une-chaîne)
2. [C++](#c++)
    1. [Structure d'un fichier C++](#structure-dun-fichier-c++)
    2. [Récupérer le nombre de paramètres](#récupérer-le-nombre-de-paramètres-1)
    3. [Récupérer les paramètres](#récupérer-les-paramètres-1)
    4. [Connaître la taille d'une chaine de caractères](#connaître-la-taille-dune-chaîne-de-caractères-1)
    5. [Boucles](#boucles-1)
        1. [if else](#if-else-1)
        2. [for](#for-1)
    6. [Incrémenter une variable](#incrémenter-une-variable-1)
    7. [Opérations mathématiques](#opérations-mathématiques-1)
    8. [Vérifier si une chaîne est contenue dans une autre](#vérifier-si-une-chaîne-est-contenue-dans-une-autre-1)
    9. [Lowercase/Uppercase](#lowercaseuppercase-1)
    10. [Enlever un caractère d'une chaîne](#enlever-un-caractère-dune-chaîne-1)
    11. [Concaténer deux chaînes de caractères](#concaténer-deux-chaînes-de-caractères-1)
    12. [Comparer deux chaînes de caractères](#comparer-deux-chaînes-de-caractères-1)
    13. [Comparer deux entiers](#comparer-deux-entiers-1)
    14. [Récupérer la position d'une sous-chaîne dans une chaîne](#récupérer-la-position-dune-sous-chaîne-dans-une-chaîne-1)
3. [Python](#python)
    1. [Structure d'un fichier Python](#structure-dun-fichier-python)
    2. [Récupérer le nombre de paramètres](#récupérer-le-nombre-de-paramètres-2)
    3. [Récupérer les paramètres](#récupérer-les-paramètres-2)
    4. [Connaître la taille d'une chaine de caractères](#connaître-la-taille-dune-chaîne-de-caractères-2)
    5. [Boucles](#boucles-2)
        1. [if else](#if-else-2)
        2. [for](#for-2)
    6. [Incrémenter une variable](#incrémenter-une-variable-2)
    7. [Opérations mathématiques](#opérations-mathématiques-2)
    8. [Vérifier si une chaîne est contenue dans une autre](#vérifier-si-une-chaîne-est-contenue-dans-une-autre-2)
    9. [Lowercase/Uppercase](#lowercaseuppercase-2)
    10. [Enlever un caractère d'une chaîne](#enlever-un-caractère-dune-chaîne-2)
    11. [Concaténer deux chaînes de caractères](#concaténer-deux-chaînes-de-caractères-2)
    12. [Comparer deux chaînes de caractères](#comparer-deux-chaînes-de-caractères-2)
    13. [Comparer deux entiers](#comparer-deux-entiers-2)
    14. [Récupérer la position d'une sous-chaîne dans une chaîne](#récupérer-la-position-dune-sous-chaîne-dans-une-chaîne-2)


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

## C++

### Structure d'un fichier C++

```cpp
#include <iostream>

int main() {
    // le reste du programme
    return 0;
}
```

### Récupérer le nombre de paramètres

```cpp
#include <iostream>

int main(int argc, char *argv[]) {
    int nbr = argc - 1;
    std::cout << "Nombre de paramètres: " << nbr << std::endl;
    return 0;
}
```

### Récupérer les paramètres

```cpp
#include <iostream>

int main(int argc, char *argv[]) {
    if (argc >= 3) {
        std::cout << "Le premier paramètre: " << argv[1] << std::endl;
        std::cout << "Le second paramètre: " << argv[2] << std::endl;
    }
    return 0;
}
```

### Connaître la taille d'une chaine de caractères

```cpp
#include <iostream>
#include <string>

int main(int argc, char *argv[]) {
    std::string input = argv[1];
    std::cout << "La taille de la chaîne '" << input << "' est: " << input.size() << std::endl;
    return 0;
}
```

### Boucles

#### if else

```cpp
#include <iostream>

int main(int argc, char *argv[]) {
    int nbr = argc - 1;
    if (nbr == 1) {
        std::cout << "Il y a un seul paramètre" << std::endl;
    } else if (nbr == 2) {
        std::cout << "Il y a deux paramètres" << std::endl;
    } else {
        std::cout << "Il y a plus de deux paramètres" << std::endl;
    }
    return 0;
}
```

#### for

```cpp
#include <iostream>
#include <string>

int main(int argc, char *argv[]) {
    std::string input = argv[1];

    for (int i = 0; i < input.size(); i++) {
        std::cout << input[i] << std::endl;
    }

    std::cout << "Autre possibilité:" << std::endl;

    for (char c : input) {
        std::cout << c << std::endl;
    }

    return 0;
}
```

### Incrémenter une variable

```cpp
#include <iostream>

int main() {
    int nbr = 0;
    std::cout << "Avant incrémentation: " << nbr << std::endl;
    for (int i = 1; i <= 5; i++) {
        nbr++;
    }
    std::cout << "Après incrémentation: " << nbr << std::endl;
    return 0;
}
```

### Opérations mathématiques

```cpp
#include <iostream>

int main() {
    std::cout << "5 plus 3 = " << (5 + 3) << std::endl;
    std::cout << "5 fois 3 = " << (5 * 3) << std::endl;
    std::cout << "5 puissance 3: " << (5 * 5 * 5) << std::endl;
    std::cout << "5 modulo 3: " << (5 % 3) << std::endl;
    return 0;
}
```

### Vérifier si une chaîne est contenue dans une autre

```cpp
#include <iostream>
#include <string>

int main() {
    std::string chaine = "coucou";
    std::string sousChaine = "ou";

    if (chaine.find(sousChaine) != std::string::npos) {
        std::cout << "'" << chaine << "' contient '" << sousChaine << "'" << std::endl;
    }

    std::cout << "Autre possibilité:" << std::endl;

    if (chaine.find(sousChaine) != std::string::npos) {
        std::cout << "'" << chaine << "' contient '" << sousChaine << "'" << std::endl;
    }

    return 0;
}
```

### Lowercase/Uppercase

```cpp
#include <iostream>
#include <algorithm>
#include <string>

int main() {
    std::string chaine = "CouCou";

    std::transform(chaine.begin(), chaine.end(), chaine.begin(), ::tolower);
    std::cout << chaine << " en lowercase: " << chaine << std::endl;

    std::transform(chaine.begin(), chaine.end(), chaine.begin(), ::toupper);
    std::cout << chaine << " en uppercase: " << chaine << std::endl;

    return 0;
}
```

### Enlever un caractère d'une chaîne

```cpp
#include <iostream>
#include <string>

int main() {
    std::string chaine = "coucou";
    chaine.erase(std::remove(chaine.begin(), chaine.end(), 'c'), chaine.end());

    std::cout << "chaîne de départ: " << chaine << std::endl;

    return 0;
}
```

### Concaténer deux chaînes de caractères

```cpp
#include <iostream>
#include <string>

int main() {
    std::string chaine1 = "Hello, ";
    std::string chaine2 = "World!";
    std::string concatenation = chaine1 + chaine2;

    std::cout << "chaine 1: '" << chaine1 << "'" << std::endl;
    std::cout << "chaine 2: '" << chaine2 << "'" << std::endl;
    std::cout << "concaténation: '" << concatenation << "'" << std::endl;

    return 0;
}
```

### Comparer deux chaînes de caractères

```cpp
#include <iostream>
#include <string>

int main() {
    std::string chaine1 = "coucou";
    std::string chaine2 = "CouCou";

    if (chaine1 == "coucou") {
        std::cout << chaine1 << " = coucou" << std::endl;
    }
    if (chaine1 == chaine2) {
        std::cout << chaine1 << " = " << chaine2 << std::endl;
    } else {
        std::cout << chaine2 << " != " << chaine2 << std::endl;
    }

    return 0;
}
```

### Comparer deux entiers

```cpp
#include <iostream>

int main() {
    int nbr = 3;

    if (nbr == 3) {
        std::cout << nbr << " = 3" << std::endl;
    }
    if (nbr != 5) {
        std::cout << nbr << " != 3" << std::endl;
    }
    if (nbr >= 2 || nbr > 2) {
        std::cout << nbr << " >= 2, " << nbr << " > 2" << std::endl;
    }
    if (nbr <= 4 || nbr < 4) {
        std::cout << nbr << " <= 4, " << nbr << " < 4" << std::endl;
    }

    return 0;
}
```

### Récupérer la position d'une sous-chaîne dans une chaîne

```cpp
#include <iostream>
#include <string>

int main() {
    std::string chaine = "<fis4 e'1 >16 <fis4 e'1 >16 r16<fis4 e'1 >16 r16<fis4 c'2 >16 <fis4 e'1 >16 r16<b2 g'1 >16 r8.g8.3 r16";
    std::string recherche = "16";

    size_t position = chaine.find(recherche);
    std::cout << position << std::endl;

    return 0;
}
```

## Python

### Structure d'un fichier Python

```python
#!/usr/bin/env python3

# le reste du programme
```

### Récupérer le nombre de paramètres

```python
#!/usr/bin/env python3

import sys

nbr = len(sys.argv) - 1
print("Nombre de paramètres:", nbr)
```

### Récupérer les paramètres

```python
#!/usr/bin/env python3

import sys

parametre1 = sys.argv[1]
parametre2 = sys.argv[2]
print("Le premier paramètre:", parametre1)
print("Le second paramètre:", parametre2)
```

### Connaître la taille d'une chaine de caractères

```python
#!/usr/bin/env python3

input_string = input("Entrez une chaîne de caractères: ")

print("La taille de la chaîne '{}': {}".format(input_string, len(input_string)))
```

### Boucles

#### if else

```python
#!/usr/bin/env python3

import sys

nbr = len(sys.argv) - 1

if nbr == 1:
    print("Il y a un seul paramètre")
elif nbr == 2:
    print("Il y a deux paramètres")
else:
    print("Il y a plus de deux paramètres")
```

#### for

```python
#!/usr/bin/env python3

input_string = input("Entrez une chaîne de caractères: ")

print("Méthode 1:")
for char in input_string:
    print(char)

print("Méthode 2:")
for i in range(len(input_string)):
    print(input_string[i])
```

### Incrémenter une variable

```python
#!/usr/bin/env python3

nbr = 0
print("Avant incrémentation:", nbr)
for i in range(1, 6):
    nbr += 1

print("Après incrémentation:", nbr)
```

### Opérations mathématiques

```python
#!/usr/bin/env python3

print("5 plus 3 =", 5 + 3)
print("5 fois 3 =", 5 * 3)
print("5 puissance 3:", 5 ** 3)
print("5 modulo 3:", 5 % 3)
print("2 puissance 100:", 2 ** 100)
```

### Vérifier si une chaîne est contenue dans une autre

```python
#!/usr/bin/env python3

chaine = "coucou"
sousChaine = "ou"

if sousChaine in chaine:
    print("'{}' contient '{}'".format(chaine, sousChaine))
```

### Lowercase/Uppercase

```python
#!/usr/bin/env python3

chaine = "CouCou"

lowercase = chaine.lower()
uppercase = chaine.upper()

print("{} en lowercase: {}".format(chaine, lowercase))
print("{} en uppercase: {}".format(chaine, uppercase))
```

### Enlever un caractère d'une chaîne

```python
#!/usr/bin/env python3

chaine = "coucou"
chaineModifiee = chaine.replace('c', '')

print("Chaîne de départ:", chaine)
print("Chaîne modifiée:", chaineModifiee)
```

### Concaténer deux chaînes de caractères

```python
#!/usr/bin/env python3

chaine1 = "Hello, "
chaine2 = "World!"

concatenation = chaine1 + chaine2

print("Chaine 1: '{}'".format(chaine1))
print("Chaine 2: '{}'".format(chaine2))
print("Concaténation: '{}'".format(concatenation))
```

### Comparer deux chaînes de caractères

```python
#!/usr/bin/env python3

chaine1 = "coucou"
chaine2 = "CouCou"

if chaine1 == "coucou":
    print("{} = coucou".format(chaine1))

if chaine1 == chaine2:
    print("{} = {}".format(chaine1, chaine2))
else:
    print("{} != {}".format(chaine1, chaine2))
```

### Comparer deux entiers

```python
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
```

### Récupérer la position d'une sous-chaîne dans une chaîne

```python
chaine = "<fis4 e'1 >16 <fis4 e'1 >16 r16<fis4 e'1 >16 r16<fis4 c'2 >16 <fis4 e'1 >16 r16<b2 g'1 >16 r8.g8.3 r16"
# recherche de la première position de la chaine "16"
recherche = "16"
position = chaine.find(recherche) + 1
print(position)
```

