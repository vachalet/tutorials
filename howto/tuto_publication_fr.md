---
title: "Tuto gh"
date: 2025-08-17
---
# Tuto rapide pour publier son "tuto"

## 📋 Vue d'ensemble

Ce tutoriel vous guide pour publier vos rapports de jeu sur GitHub Pages en 4 étapes principales :

1. **Préparer** vos fichiers Markdown
2. **Créer** votre fork GitHub  
3. **Ajouter** vos fichiers
4. **Contribuer** au projet principal

---

## ÉTAPE 1 : Préparer les fichiers Markdown

### 1.1 Créer vos fichiers .md

- Préparez vos fichiers au format `.md` (Markdown)
- Consultez les tutoriels en ligne ou utilisez des convertisseurs
- **Nommage :** Utilisez des noms sans espaces (utilisez `-` ou `_`)
- **Images :** Évitez les extensions en majuscules

### 1.2 Ajouter l'en-tête obligatoire

**⚠️ IMPORTANT :** Insérez ce bloc au début de chaque fichier :

```yaml
---
title: "Your_Race: Runde 1"
date: 2023-10-15
---
```

- La **date** détermine l'ordre d'affichage sur votre page
- J'ai mis la date de génération du tour. (donc su cr ou nr)
- Pour intro/conclusion : ajustez la date pour le bon positionnement

### 1.3 Règles de formatage

- **Retour à la ligne :** finir par `space+space+return`
- **Titres :** utiliser `#`, `##`, `###`
- **Images :** format `![alt](./image.png "titre")`

**Ressources utiles :**
- [Discord Enno](https://discord.com/channels/509396702663278592/1193551778952781846/1404064429024346177)
- [Exemple Goblins](https://eressea.github.io/tutorials/goblins/)

---

## ÉTAPE 2 : Créer votre fork GitHub

### 2.1 Créer un compte GitHub
Si ce n'est pas déjà fait : https://github.com

### 2.2 Forker le repository

1. **Aller sur :** https://github.com/eressea/tutorials
2. **Cliquer sur :** bouton "Fork" (en haut à droite)
3. **Sélectionner :** votre compte personnel
4. **Attendre :** la création du fork

### 2.3 Configurer votre fork

**Configuration Generale**  

![General](./tuto1.png "General")

** Activer GitHub Pages**  

![GitHub Pages](./tuto2.png "GitHub Pages")

**💡 Note :** Pour synchroniser plus tard → bouton "Sync fork"

**⚠️ Ne touchez pas à la brache gh-pages** Elle sert à publier vos pages.


---

## ÉTAPE 3 : Ajouter vos fichiers

### 3.1 Installer GitHub Desktop

**Télécharger :** https://desktop.github.com/download/

### 3.2 Premier lancement

1. **Authentification :** via votre navigateur
2. **Cloner :** sélectionner votre repository
3. **Cliquer :** "Clone votre_compte/tutorials"
4. **Dossier par défaut :** `C:\Users\<YourUserName>\Documents\GitHub\tutorials`

### 3.3 Organiser vos fichiers

- **Créer :** un dossier `your_race` à côté du dossier `goblins`
- **Ajouter :** vos fichiers `.md` dans ce dossier

### 3.4 Workflow Git

#### Voir les modifications
![Github Desktop 1](./tuto3.png "Github Desktop 1")

#### Commit (sauvegarder)
1. **Sélectionner :** les fichiers à commiter
2. **Écrire :** description courte des changements
3. **Cliquer :** "Commit * files to main"

#### Push (envoyer)
![Push Request](./tuto4.png "Push Request")

**Cliquer :** "Push origin" pour envoyer vers GitHub

---

## ÉTAPE 4 : Contribuer au projet

### 4.1 Vérifier votre travail

#### ✅ Tester vos pages
1. **Aller sur :** votre site (lien dans Settings → GitHub Pages)
2. **Vérifier :** l'affichage des pages
3. **Si problème :** sur votre PC : modifier → commit → push
4. **⏱️ Patience :** la mise à jour peut prendre du temps

#### ✅ Synchroniser votre fork
- **Vérifier :** si votre fork est à jour
- **Si nécessaire :** utiliser "Sync fork"

### 4.2 Créer une Pull Request

#### Quand tout est prêt :
![Pull Request](./tuto5.png "Pull Request")

1. **Aller dans :** "Pull Request"
2. **Cliquer :** "New Pull Request"
3. **Réviser :** tout ce qui sera proposé
4. **Commenter :** expliquer vos changements
5. **Valider :** envoyer la demande

#### 🎉 Résultat
Votre contribution est maintenant entre les mains d'Enno pour validation !

---

## 🚀 Résumé des étapes

| Étape | Action | Outil |
|-------|--------|-------|
| 1 | Préparer fichiers .md | Éditeur texte |
| 2 | Fork + config | GitHub web |
| 3 | Ajouter fichiers | GitHub Desktop |
| 4 | Pull Request | GitHub web |

## 📞 Besoin d'aide ?

- Sur Discord : https://discord.com/channels/509396702663278592/1404841577402077332
- Documentation GitHub pour les détails Git
