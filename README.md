# Exercism

## Table des Matières

* [Bash](#bash)
     * [Structure d'un fichier Bash](#structure-fichier-bash)
     * [Récupérer le nombre de paramètres en Bash](#recuperer-nombre-parametres-bash)
     * [Récupérer les paramètres en Bash](#recuperer-parametres-bash)
     * [Connaître la taille d'une chaine de caractères en Bash](#connaitre-taille-chaine-caracteres-bash)
     * [Boucles en Bash](#boucles-bash)
       * [if else en Bash](#if-else-bash)
       * [for en Bash](#for-bash)
     * [Incrémenter une variable en Bash](#incrementer-variable-bash)
     * [Opérations mathématiques en Bash](#operations-mathematiques-bash)
     * [Vérifier si une chaîne est contenue dans une autre en Bash](#verifier-si-chaine-contenue-dans-une-autre-bash)
     * [Lowercase/Uppercase en Bash](#lowercase-uppercase-bash)
     * [Enlever un caractère d'une chaîne en Bash](#enlever-caractere-chaine-bash)
     * [Concaténer deux chaînes de caractères en Bash](#concatener-deux-chaines-bash)
     * [Comparer deux chaînes de caractères en Bash](#comparer-deux-chaines-bash)
     * [Comparer deux entiers en Bash](#comparer-deux-entiers-bash)
     * [Récupérer la position d'une sous-chaîne dans une chaîne en Bash](#recuperer-position-sous-chaine-dans-chaine-bash)
* [C++](#c++)
     * [Structure d'un fichier C++](#structure-fichier-c++)
     * [Récupérer le nombre de paramètres en C++](#recuperer-nombre-parametres-c++)
     * [Récupérer les paramètres en C++](#recuperer-parametres-c++)
     * [Connaître la taille d'une chaine de caractères en C++](#connaitre-taille-chaine-caracteres-c++)
     * [Boucles en C++](#boucles-c++)
       * [if else en C++](#if-else-c++)
       * [for en C++](#for-c++)
     * [Incrémenter une variable en C++](#incrementer-variable-c++)
     * [Opérations mathématiques en C++](#operations-mathematiques-c++)
     * [Vérifier si une chaîne est contenue dans une autre en C++](#verifier-si-chaine-contenue-dans-une-autre-c++)
     * [Lowercase/Uppercase en C++](#lowercase-uppercase-c++)
     * [Enlever un caractère d'une chaîne en C++](#enlever-caractere-chaine-c++)
     * [Concaténer deux chaînes de caractères en C++](#concatener-deux-chaines-c++)
     * [Comparer deux chaînes de caractères en C++](#comparer-deux-chaines-c++)
     * [Comparer deux entiers en C++](#comparer-deux-entiers-c++)
     * [Récupérer la position d'une sous-chaîne dans une chaîne en C++](#recuperer-position-sous-chaine-dans-chaine-c++)
* [JavaScript](#javascript)
     * [Récupérer le nombre de paramètres en JavaScript](#recuperer-nombre-parametres-javascript)
     * [Récupérer les paramètres en JavaScript](#recuperer-parametres-javascript)
     * [Connaître la taille d'une chaine de caractères en JavaScript](#connaitre-taille-chaine-caracteres-javascript)
     * [Boucles en JavaScript](#boucles-javascript)
       * [if else en JavaScript](#if-else-javascript)
       * [for en JavaScript](#for-javascript)
     * [Incrémenter une variable en JavaScript](#incrementer-variable-javascript)
     * [Opérations mathématiques en JavaScript](#operations-mathematiques-javascript)
     * [Vérifier si une chaîne est contenue dans une autre en JavaScript](#verifier-si-chaine-contenue-dans-une-autre-javascript)
     * [Lowercase/Uppercase en JavaScript](#lowercase-uppercase-javascript)
     * [Enlever un caractère d'une chaîne en JavaScript](#enlever-caractere-chaine-javascript)
     * [Concaténer deux chaînes de caractères en JavaScript](#concatener-deux-chaines-javascript)
     * [Comparer deux chaînes de caractères en JavaScript](#comparer-deux-chaines-javascript)
     * [Comparer deux entiers en JavaScript](#comparer-deux-entiers-javascript)
     * [Récupérer la position d'une sous-chaîne dans une chaîne en JavaScript](#recuperer-position-sous-chaine-dans-chaine-javascript)
* [Python](#python)
     * [Structure d'un fichier Python](#structure-fichier-python)
     * [Récupérer le nombre de paramètres en Python](#recuperer-nombre-parametres-python)
     * [Récupérer les paramètres en Python](#recuperer-parametres-python)
     * [Connaître la taille d'une chaine de caractères en Python](#connaitre-taille-chaine-caracteres-python)
     * [Boucles en Python](#boucles-python)
       * [if else en Python](#if-else-python)
       * [for en Python](#for-python)
     * [Incrémenter une variable en Python](#incrementer-variable-python)
     * [Opérations mathématiques en Python](#operations-mathematiques-python)
     * [Vérifier si une chaîne est contenue dans une autre en Python](#verifier-si-chaine-contenue-dans-une-autre-python)
     * [Lowercase/Uppercase en Python](#lowercase-uppercase-python)
     * [Enlever un caractère d'une chaîne en Python](#enlever-caractere-chaine-python)
     * [Concaténer deux chaînes de caractères en Python](#concatener-deux-chaines-python)
     * [Comparer deux chaînes de caractères en Python](#comparer-deux-chaines-python)
     * [Comparer deux entiers en Python](#comparer-deux-entiers-python)
     * [Récupérer la position d'une sous-chaîne dans une chaîne en Python](#recuperer-position-sous-chaine-dans-chaine-python)

## Bash <a id="bash"></a>

### Structure d'un fichier Bash <a id="structure-fichier-bash"></a>

```bash
#!/usr/bin/env bash

# le reste du programme
```

### Récupérer le nombre de paramètres en Bash <a id="recuperer-nombre-parametres-bash"></a>

```bash
#!/usr/bin/env bash

nbr=$#
echo "Nombre de paramètres: ${nbr}"
```

### Récupérer les paramètres en Bash <a id="recuperer-parametres-bash"></a>

```bash
#!/usr/bin/env bash

parametre1=$1
parametre2=$2
echo "Le premier paramètre: ${parametre1}"
echo "Le second paramètre: ${parametre2}"
```

### Connaître la taille d'une chaine de caractères en Bash <a id="connaitre-taille-chaine-caracteres-bash"></a>

```bash
#!/usr/bin/env bash

input=$1

echo "La taille de la chaîne '${input}' est: ${#input}"
```

### Boucles en Bash <a id="boucles-bash"></a>

#### if else en Bash <a id="if-else-bash"></a>

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

#### for en Bash <a id="for-bash"></a>

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

### Incrémenter une variable en Bash <a id="incrementer-variable-bash"></a>

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

### Opérations mathématiques en Bash <a id="operations-mathematiques-bash"></a>

```bash
#!/usr/bin/env bash

echo "5 plus 3 = $((5+3))"
echo "5 fois 3 = $((5*3))"
echo "5 puissance 3: $((5**3))"
echo "5 modulo 3: $((5%3))"
echo "2 puissance 100 avec bc: $(echo "2 ^ 100" | bc)"
echo "2 puissance 100 sans bc: $((2**100))"
```

### Vérifier si une chaîne est contenue dans une autre en Bash <a id="verifier-si-chaine-contenue-dans-une-autre-bash"></a>

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

### Lowercase/Uppercase en Bash <a id="lowercase-uppercase-bash"></a>

```bash
#!/usr/bin/env bash

chaine="CouCou"

lowercase=$(tr '[:upper:]' '[:lower:]' <<< "$chaine")
uppercase=$(tr '[:lower:]' '[:upper:]' <<< "$chaine")

echo "${chaine} en lowercase: ${lowercase}"
echo "${chaine} en uppercase: ${uppercase}"
```

### Enlever un caractère d'une chaîne en Bash <a id="enlever-caractere-chaine-bash"></a>

```bash
#!/usr/bin/env bash

chaine="coucou"
chaineModifiee=$( echo $chaine | tr -d 'c' )

echo "chaîne de départ: ${chaine}"
echo "chaine modifiée: ${chaineModifiee}"
```

### Concaténer deux chaînes de caractères en Bash <a id="concatener-deux-chaines-bash"></a>

```bash
#!/usr/bin/env bash

chaine1="Hello, "
chaine2="World!"

concatenation="${chaine1}${chaine2}"

echo "chaine 1: '${chaine1}'"
echo "chaine 2: '${chaine2}'"
echo "concaténation: '${concatenation}'"
```

### Comparer deux chaînes de caractères en Bash <a id="comparer-deux-chaines-bash"></a>

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

### Comparer deux entiers en Bash <a id="comparer-deux-entiers-bash"></a>

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

### Récupérer la position d'une sous-chaîne dans une chaîne en Bash <a id="recuperer-position-sous-chaine-dans-chaine-bash"></a>

```bash
chaine="<fis4 e'1 >16 <fis4 e'1 >16 r16<fis4 e'1 >16 r16<fis4 c'2 >16 <fis4 e'1 >16 r16<b2 g'1 >16 r8.g8.3 r16"
# recherche de la première position de la chaine "16"
recherche="16"
debut_chaine="${chaine%%${recherche}*}"
position=$((${#debut_chaine}+1))
echo ${position}
```

## C++ <a id="c++"></a>

### Structure d'un fichier C++ en C++ <a id="structure-fichier-c++"></a>

```cpp
#include <iostream>

int main() {
    // le reste du programme
    return 0;
}
```

### Récupérer le nombre de paramètres en C++ <a id="recuperer-nombre-parametres-c++"></a>

```cpp
#include <iostream>

int main(int argc, char *argv[]) {
    int nbr = argc - 1;
    std::cout << "Nombre de paramètres: " << nbr << std::endl;
    return 0;
}
```

### Récupérer les paramètres en C++ <a id="recuperer-parametres-c++"></a>

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

### Connaître la taille d'une chaine de caractères en C++ <a id="connaitre-taille-chaine-caracteres-c++"></a>

```cpp
#include <iostream>
#include <string>

int main(int argc, char *argv[]) {
    std::string input = argv[1];
    std::cout << "La taille de la chaîne '" << input << "' est: " << input.size() << std::endl;
    return 0;
}
```

### Boucles en C++ <a id="boucles-c++"></a>

#### if else en C++ <a id="if-else-c++"></a>

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

#### for en C++ <a id="for-c++"></a>

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

### Incrémenter une variable en C++ <a id="incrementer-variable-c+"></a>

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

### Opérations mathématiques en C++ <a id="operations-mathematiques-c++"></a>

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

### Vérifier si une chaîne est contenue dans une autre en C++ <a id="verifier-si-chaine-contenue-dans-une-autre-c++"></a>

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

### Lowercase/Uppercase en C++ <a id="lowercase-uppercase-c++"></a>

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

### Enlever un caractère d'une chaîne en C++ <a id="enlever-caractere-chaine-c++"></a>

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

### Concaténer deux chaînes de caractères en C++ <a id="concatener-deux-chaines-c++"></a>

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

### Comparer deux chaînes de caractères en C++ <a id="comparer-deux-chaines-c++"></a>

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

### Comparer deux entiers en C++ <a id="comparer-deux-entiers-c++"></a>

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

### Récupérer la position d'une sous-chaîne dans une chaîne en C++ <a id="recuperer-position-sous-chaine-dans-chaine-c++"></a>

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

## JavaScript <a id="javascript"></a>

### Récupérer le nombre de paramètres en JavaScript <a id="recuperer-nombre-parametres-javascript"></a>

```javascript
const nbr = process.argv.length - 2;
console.log("Nombre de paramètres:", nbr);
```

### Récupérer les paramètres en JavaScript <a id="recuperer-parametres-javascript"></a>

```javascript
const parametre1 = process.argv[2];
const parametre2 = process.argv[3];
console.log("Le premier paramètre:", parametre1);
console.log("Le second paramètre:", parametre2);
```

### Connaître la taille d'une chaine de caractères en JavaScript <a id="connaitre-taille-chaine-caracteres-javascript"></a>

```javascript
const readline = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
});

readline.question("Entrez une chaîne de caractères: ", (input_string) => {
    console.log(`La taille de la chaîne '${input_string}': ${input_string.length}`);
    readline.close();
});
```

### Boucles en JavaScript <a id="boucles-javascript"></a>

#### if else en JavaScript <a id="if-else-javascript"></a>

```javascript
const nbr = process.argv.length - 2;

if (nbr === 1) {
    console.log("Il y a un seul paramètre");
} else if (nbr === 2) {
    console.log("Il y a deux paramètres");
} else {
    console.log("Il y a plus de deux paramètres");
}
```

#### for en JavaScript <a id="for-javascript"></a>

```javascript
const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});

readline.question("Entrez une chaîne de caractères: ", (input_string) => {
  console.log("Méthode 1:");
  for (const char of input_string) {
      console.log(char);
  }

  console.log("Méthode 2:");
  for (let i = 0; i < input_string.length; i++) {
      console.log(input_string[i]);
  }

  readline.close();
});
```

### Incrémenter une variable en JavaScript <a id="incrementer-variable-javascript"></a>

```javascript
let nbr = 0;
console.log("Avant incrémentation:", nbr);
for (let i = 1; i <= 5; i++) {
    nbr++;
}
console.log("Après incrémentation:", nbr);
```

### Opérations mathématiques en JavaScript <a id="operations-mathematiques-javascript"></a>

```javascript
console.log("5 plus 3 =", 5 + 3);
console.log("5 fois 3 =", 5 * 3);
console.log("5 puissance 3:", 5 ** 3);
console.log("5 modulo 3:", 5 % 3);
console.log("2 puissance 100:", 2 ** 100);
```

### Vérifier si une chaîne est contenue dans une autre en JavaScript <a id="verifier-si-chaine-contenue-dans-une-autre-javascript"></a>

```javascript
const chaine = "coucou";
const sousChaine = "ou";

if (chaine.includes(sousChaine)) {
    console.log(`'${chaine}' contient '${sousChaine}'`);
}
```

### Lowercase/Uppercase en JavaScript <a id="lowercase-uppercase-javascript"></a>

```javascript
const chaine = "CouCou";

const lowercase = chaine.toLowerCase();
const uppercase = chaine.toUpperCase();

console.log(`${chaine} en lowercase: ${lowercase}`);
console.log(`${chaine} en uppercase: ${uppercase}`);
```

### Enlever un caractère d'une chaîne en JavaScript <a id="enlever-caractere-chaine-javascript"></a>

```javascript
const chaine = "coucou";
const chaineModifiee = chaine.replace('c', '');

console.log("Chaîne de départ:", chaine);
console.log("Chaîne modifiée:", chaineModifiee);
```

### Concaténer deux chaînes de caractères en JavaScript <a id="concatener-deux-chaines-javascript"></a>

```javascript
const chaine1 = "Hello, ";
const chaine2 = "World!";

const concatenation = chaine1 + chaine2;

console.log("Chaine 1: '", chaine1, "'");
console.log("Chaine 2: '", chaine2, "'");
console.log("Concaténation: '", concatenation, "'");
```

### Comparer deux chaînes de caractères en JavaScript <a id="comparer-deux-chaines-javascript"></a>

```javascript
const chaine1 = "coucou";
const chaine2 = "CouCou";

if (chaine1 === "coucou") {
    console.log(`${chaine1} = coucou`);
}

if (chaine1 === chaine2) {
    console.log(`${chaine1} = ${chaine2}`);
} else {
    console.log(`${chaine1} != ${chaine2}`);
}
```

### Comparer deux entiers en JavaScript <a id="comparer-deux-entiers-javascript"></a>

```javascript
const nbr = 3;

if (nbr === 3) {
    console.log(`${nbr} = 3`);
}

if (nbr !== 5) {
    console.log(`${nbr} != 5`);
}

if (nbr >= 2 || nbr > 2) {
    console.log(`${nbr} >= 2, ${nbr} > 2`);
}

if (nbr <= 4 || nbr < 4) {
    console.log(`${nbr} <= 4, ${nbr} < 4`);
}
```

### Récupérer la position d'une sous-chaîne dans une chaîne en JavaScript <a id="recuperer-position-sous-chaine-dans-chaine-javascript"></a>

```javascript
const chaine = "<fis4 e'1 >16 <fis4 e'1 >16 r16<fis4 e'1 >16 r16<fis4 c'2 >16 <fis4 e'1 >16 r16<b2 g'1 >16 r8.g8.3 r16";
// recherche de la première position de la chaine "16"
const recherche = "16";
const position = chaine.indexOf(recherche) + 1;
console.log(position);
```

## Python <a id="python"></a>

### Structure d'un fichier Python <a id="structure-fichier-python"></a>

```python
#!/usr/bin/env python3

# le reste du programme
```

### Récupérer le nombre de paramètres en Python <a id="recuperer-nombre-parametres-python"></a>

```python
#!/usr/bin/env python3

import sys

nbr = len(sys.argv) - 1
print("Nombre de paramètres:", nbr)
```

### Récupérer les paramètres en Python <a id="recuperer-parametres-python"></a>

```python
#!/usr/bin/env python3

import sys

parametre1 = sys.argv[1]
parametre2 = sys.argv[2]
print("Le premier paramètre:", parametre1)
print("Le second paramètre:", parametre2)
```

### Connaître la taille d'une chaine de caractères en Python <a id="connaitre-taille-chaine-caracteres-python"></a>

```python
#!/usr/bin/env python3

input_string = input("Entrez une chaîne de caractères: ")

print("La taille de la chaîne '{}': {}".format(input_string, len(input_string)))
```

### Boucles en Python <a id="boucles-python"></a>

#### if else en Python <a id="if-else-python"></a>

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

#### for en Python <a id="for-python"></a>

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

### Incrémenter une variable en Python <a id="incrementer-variable-python"></a>

```python
#!/usr/bin/env python3

nbr = 0
print("Avant incrémentation:", nbr)
for i in range(1, 6):
    nbr += 1

print("Après incrémentation:", nbr)
```

### Opérations mathématiques en Python <a id="operations-mathematiques-python"></a>

```python
#!/usr/bin/env python3

print("5 plus 3 =", 5 + 3)
print("5 fois 3 =", 5 * 3)
print("5 puissance 3:", 5 ** 3)
print("5 modulo 3:", 5 % 3)
print("2 puissance 100:", 2 ** 100)
```

### Vérifier si une chaîne est contenue dans une autre en Python <a id="verifier-si-chaine-contenue-dans-une-autre-python"></a>

```python
#!/usr/bin/env python3

chaine = "coucou"
sousChaine = "ou"

if sousChaine in chaine:
    print("'{}' contient '{}'".format(chaine, sousChaine))
```

### Lowercase/Uppercase en Python <a id="lowercase-uppercase-python"></a>

```python
#!/usr/bin/env python3

chaine = "CouCou"

lowercase = chaine.lower()
uppercase = chaine.upper()

print("{} en lowercase: {}".format(chaine, lowercase))
print("{} en uppercase: {}".format(chaine, uppercase))
```

### Enlever un caractère d'une chaîne en Python <a id="enlever-caractere-chaine-python"></a>

```python
#!/usr/bin/env python3

chaine = "coucou"
chaineModifiee = chaine.replace('c', '')

print("Chaîne de départ:", chaine)
print("Chaîne modifiée:", chaineModifiee)
```

### Concaténer deux chaînes de caractères en Python <a id="concatener-deux-chaines-python"></a>

```python
#!/usr/bin/env python3

chaine1 = "Hello, "
chaine2 = "World!"

concatenation = chaine1 + chaine2

print("Chaine 1: '{}'".format(chaine1))
print("Chaine 2: '{}'".format(chaine2))
print("Concaténation: '{}'".format(concatenation))
```

### Comparer deux chaînes de caractères en Python <a id="comparer-deux-chaines-python"></a>

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

### Comparer deux entiers en Python <a id="comparer-deux-entiers-python"></a>

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

### Récupérer la position d'une sous-chaîne dans une chaîne en Python <a id="recuperer-position-sous-chaine-dans-chaine-python"></a>

```python
chaine = "<fis4 e'1 >16 <fis4 e'1 >16 r16<fis4 e'1 >16 r16<fis4 c'2 >16 <fis4 e'1 >16 r16<b2 g'1 >16 r8.g8.3 r16"
# recherche de la première position de la chaine "16"
recherche = "16"
position = chaine.find(recherche) + 1
print(position)
```


