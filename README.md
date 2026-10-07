# GuitarLab

GuitarLab est une application qui nous permet d'organiser nos séances de pratique de l'instrument. Comme mettre des buts, des séances chronométrées, sauvegarder des idées, suivre notre progrès, etc.

## Description

L'objectif de cette application, c'est de bien organiser nos séances de pratique avec n'importe quel instrument (principalement la guitare), ce qui aide certains utilisateurs à suivre leur propre plan et leurs buts. C'est-à-dire que les utilisateurs peuvent créer leurs propres routines, ne pas oublier de pratiquer, sauvegarder leurs nouvelles idées sans les perdre et même suivre leur progrès. Cette application offre plusieurs avantages aux usagers pour s'améliorer encore plus dans leurs compétences musicales.

## Élément avancé

**Catégorie choisie : Notifications**

La fonctionnalité avancée principale est l'utilisation de notifications pour rappeler systématiquement aux utilisateurs de pratiquer ou de faire autre chose d'important.

1. Le serveur va parcourir les informations à chaque fois pour faire fonctionner les notifications, qui peuvent ensuite rappeler aux usagers de pratiquer en fonction de leurs buts.
2. Les notifications vont être personnalisées selon les rappels et les séances que l'utilisateur aura créés.

## Stack technologique

| Composante | Technologie | Rôle |
|---|---|---|
| Application cliente | Flutter / Dart | Développement d'une application unique pour Android et iOS |
| Authentification | Firebase Authentication | Connexion par nom d'utilisateur/mot de passe |
| Données applicatives | Firebase / base de données cloud | Stockage des profils, routines, exercices, idées, rappels et statistiques |
| Notifications | Firebase Cloud Messaging / notifications locales | Envoi des rappels pour les séances de pratique |
| Stockage des images | Firebase Storage | Stockage des photos de profil et des photos des idées musicales |

## Récits utilisateur

### RU-01 : Création de compte
**Sprint** : 1
**MVP** : Oui
**Points** : 5

**Description** : En tant qu'utilisateur, je veux me créer un compte avec un nom d'utilisateur et un mot de passe afin de commencer à utiliser l'application et sauvegarder mes informations, mes progrès et mes idées.

**Conditions de satisfaction** :

1. Le système valide la complexité minimale du mot de passe pour prévenir la création de comptes vulnérables.
2. Je peux mettre une photo dans mon profil.

### RU-02 : Application facile à utiliser

**Sprint** : 1
**MVP** : Oui
**Points** : 5

**Description** : En tant qu'utilisateur, je veux voir une interface bien simple et lisible sans avoir à chercher partout les boutons et les autres fonctionnalités nécessaires dans l'application.

**Conditions de satisfaction** :

1. Les boutons sont bien organisés, faciles à trouver, lisibles, etc.
2. L'interface est facile à comprendre et la navigation entre les différentes pages est très facile et ne comporte aucune complication.

### RU-03 : Créer une routine d'entraînement

**Sprint** : 1
**MVP** : Oui
**Points** : 5

**Description** : En tant qu'utilisateur, je veux créer mes propres routines d'entraînement pour savoir quoi pratiquer chaque jour.

**Conditions de satisfaction** :

1. Je peux facilement créer une tâche (routine) et la sauvegarder ensuite.
2. Je peux ajouter n'importe quel exercice dans la routine (pratiquer des cordes, riffs, solos, etc.).

### RU-04 : Voir un rappel d'entraînement dans la page d'accueil

**Sprint** : 1
**MVP** : Oui
**Points** : 5

**Description** : En tant qu'utilisateur, je veux voir des rappels sur ma page d'accueil.

**Conditions de satisfaction** :

1. Je veux avoir des rappels motivants.
2. Je veux que les rappels apparaissent directement dès que je rentre dans l'application.

### RU-05 : Sauvegarder mes idées et mes photos

**Sprint** : 1
**MVP** : Non
**Points** : 5

**Description** : En tant qu'utilisateur, je veux sauvegarder et organiser mes idées de chansons pour ne pas les oublier après.

**Conditions de satisfaction** :

1. Je veux sauvegarder mes idées de façon efficace pour pouvoir les utiliser facilement dans le futur.
2. Je peux ajouter des photos à mes idées pour mieux les organiser.

### RU-06 : Voir mes statistiques et ma progression

**Sprint** : 2
**MVP** : Non
**Points** : 3

**Description** : En tant qu'utilisateur, je veux suivre ma progression en voyant les statistiques et les exercices complétés pour que je puisse comprendre comment je progresse.

**Conditions de satisfaction** :

1. Je peux voir mes statistiques de pratique (barre de progression).
2. Je peux voir les exercices que j'ai complétés.

### RU-07 : Je veux modifier ma routine

**Sprint** : 2
**MVP** : Non
**Points** : 3

**Description** : En tant qu'utilisateur, je veux pouvoir modifier ma routine afin de corriger et modifier certains éléments de celle-ci.

**Conditions de satisfaction** :

1. Je peux modifier facilement la routine en cliquant sur un bouton à côté de la tâche.
2. Je peux effacer un exercice que je ne désire plus faire.

### RU-08 : Je veux supprimer une routine

**Sprint** : 2
**MVP** : Non
**Points** : 3

**Description** : En tant qu'utilisateur, je veux pouvoir supprimer une routine afin de retirer celles que je n'utilise plus.

**Conditions de satisfaction** :

1. Je peux sélectionner une routine et la supprimer ensuite.
2. Je peux avoir une confirmation avant de la supprimer.

### RU-09 : Un minuteur pour commencer ma séance de pratique

**Sprint** : 2
**MVP** : Non
**Points** : 5

**Description** : En tant qu'utilisateur, je souhaite commencer ma routine avec un minuteur afin de pouvoir suivre le temps que je consacre à chaque exercice.

**Conditions de satisfaction** :

1. Je peux démarrer le minuteur lorsque je commence un exercice.
2. Je peux arrêter le minuteur lorsque j'ai terminé mon exercice.

### RU-10 : Recevoir des notifications

**Sprint** : 2
**MVP** : Oui
**Points** : 5

**Description** : En tant qu'utilisateur, je veux recevoir des notifications pour que je n'oublie pas de faire mes séances.

**Conditions de satisfaction** :

1. Je reçois une notification lorsque mon rappel est atteint.
2. Je peux activer ou désactiver les notifications.
