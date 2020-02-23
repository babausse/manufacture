# Manufacture Ruby

## Installation de l'environnement

### Linux, WSL, Cygwin

Bravo, vous êtes les grands gagnants, allez à (cette adresse)[http://rvm.io/install] et installez RVM (Ruby Version Manager)

Lorsque c'est fait, fermez et réouvrez tous les terminaux, puis exécutez la commande `rvm install 2.6.5`

### Windows

Allez à (cette adresse)[https://rubyinstaller.org/downloads] et téléchargez Ruby Installer 2.6.5-1 avec le devkit.

Exécutez le fichier, laissez-vous guider.

## Vérifier l'installation

### Linux, WSL, Cygwin, Windows

* Tapez `irb` dans votre terminal, normalement vous devez arriver dans un invite de commande ruby
* entrez la ligne de code `puts 'Hello world!'` dans le terminal
* le programme doit alors afficher "Hello world!"

Hint : la constante `RUBY_VERSION` contient votre version de ruby, essayez-la pour vous assurer d'avoir installé la bonne.

## Les examples de code

Pour exécuter un fichier d'exemple, placez-vous à la racine du projet dans un terminal et entrez la commande

```
ruby <chemin_relatif_du_fichier>
```

Eg `ruby examples/functions.rb`

Vous pourrez alors comparer le code avec la diapositive correspondante. Des commentaires additionnels sont présents dans le code.