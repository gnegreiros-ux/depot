# Prompt — Mise à jour de la présentation HTML
## Fichier : `presentation-systemes-design-agentique.html`

---

## Contexte

Tu travailles sur un fichier HTML autonome : une présentation de formation en 15 slides sur les systèmes de design agentiques. Le fichier utilise :
- Un système de navigation JS natif (boutons ← →, touches clavier)
- Un compteur de slides `#slide-counter` à mettre à jour
- Des variables CSS dans `:root` (palette navy/cyan/blue/amber/white)
- Deux polices Google Fonts : `Atkinson Hyperlegible` (titres) et `DM Sans` (corps)
- Des classes utilitaires existantes : `.slide`, `.accent-bar`, `.glow`, `.layout-split`, `.col-left`, `.col-right`, `.col-full`, `.card`, `.quote`, `.big-statement`, `.label`, `.pill`, `.anim`

**Ne jamais modifier les styles CSS existants.** Utilise uniquement les classes et variables déjà définies.

---

## Travail à faire

Ajouter **3 nouvelles slides** dans la présentation. Les IDs existants ne changent pas — les nouvelles slides s'insèrent entre des slides existantes et reçoivent leurs propres IDs.

Après les ajouts, **mettre à jour** :
- Le compteur dans le HTML : `<span id="slide-counter">1 / 15</span>` → `1 / 18`
- La barre de progression initiale dans le JS : `(1 / total) * 100` → calculée automatiquement depuis `slides.length` (déjà dynamique, rien à changer si `total = slides.length`)

---

## Slide à ajouter #1 — ID `s9b`

**Insertion : après `<!-- S9 — NOUVEAUX ACTEURS -->` et avant `<!-- S10 — LE PROBLÈME -->`**

**Concept :** Distinction chatbot vs système agentique (orchestration).
**Source :** Romina Kavcic, The Design System Guide, mai 2026.

**Contenu de la slide :**

- Label : `Chatbot vs Système agentique`
- Titre h2 : `Un agent qui répond. Un système qui coordonne.`
- Layout : deux colonnes côte à côte dans `.layout-split`

**Colonne gauche** — Chatbot (fond `rgba(255,85,85,0.07)`, bordure `rgba(255,85,85,0.2)`) :
- Icône emoji : 💬
- Titre h3 couleur `var(--red)` : `Usage chatbot`
- 3 items `.pill` ou lignes descriptives :
  - Réactif — répond à une question
  - Génère un composant à la demande
  - S'arrête après chaque réponse

**Colonne droite** — Système agentique (fond `rgba(20,217,200,0.07)`, bordure `rgba(20,217,200,0.25)`) :
- Icône emoji : 🔁
- Titre h3 couleur `var(--cyan)` : `Système agentique`
- 3 items `.pill` ou lignes descriptives :
  - Plusieurs agents coordonnés
  - Travail à travers outils, fichiers, workflows
  - Points d'approbation humaine à chaque étape critique

**Citation en bas de slide (`.quote`) :**
> Un chatbot répond. Un agent agit. Un système d'agents coordonne le travail à travers des outils, des workflows et des points d'approbation. — Romina Kavcic

**Décoration :** `.glow` bleu `rgba(43,127,255,0.35)` en haut à droite, `.accent-bar` à gauche.

---

## Slide à ajouter #2 — ID `s12b`

**Insertion : après `<!-- S12 — CE QUI CHANGE -->` et avant `<!-- S13 — DOC VIVANTE -->`**

**Concept :** Les composants deviennent des contrats.
**Source :** Romina Kavcic, The Design System Guide, mai 2026.

**Contenu de la slide :**

- Label : `Changement de paradigme`
- Titre h2 : `Le composant devient un contrat.`
- Layout : `.layout-split` avec col-left (texte) et col-right (visuel comparatif)

**Colonne gauche :**
- Paragraphe d'intro : `Dans un système classique, un composant est quelque chose qu'on importe. Dans un système agentique, il porte ses règles, ses contraintes et ses conditions d'escalade.`
- Citation `.quote` :
  > Le bouton ne se résume plus à son code — il devient un contrat entre design, code, intention produit, accessibilité et comportement. — Romina Kavcic

**Colonne droite — deux blocs visuels empilés :**

Bloc du haut (fond `rgba(255,85,85,0.08)`, bordure rouge, coin arrondi) :
- Petite étiquette : `Système classique`
- Snippet code style `font-family: monospace; font-size: 13px; color: var(--grey0)` :
  ```
  <Button variant="primary">
    Soumettre
  </Button>
  ```

Bloc du bas (fond `rgba(20,217,200,0.07)`, bordure cyan, coin arrondi) :
- Petite étiquette : `Système agentique`
- Liste de 4 règles en petit texte `font-size: 13px` avec une puce `→` colorée en `var(--cyan)` :
  - Utiliser pour l'action principale d'un flux
  - Ne pas utiliser sans pattern de confirmation si destructif
  - Contraste minimum 4.5:1 requis
  - Escalader si la variante demandée n'existe pas

**Décoration :** `.glow` cyan `rgba(20,217,200,0.25)` en bas à droite, `.accent-bar` à gauche.

---

## Slide à ajouter #3 — ID `s13b`

**Insertion : après `<!-- S13 — DOC VIVANTE -->` et avant `<!-- S14 — CE QUE CE N'EST PAS -->`**

**Concept :** Taxonomie des 4 types d'agents spécialisés + orchestrateur.
**Source :** Romina Kavcic, The Design System Guide, mai 2026.

**Contenu de la slide :**

- Label : `En pratique`
- Titre h2 : `Quatre agents. Un orchestrateur.`
- Layout : `.col-full` avec grille de 4 cards + bloc orchestrateur en bas

**Grille 4 cards** (`display: grid; grid-template-columns: repeat(4, 1fr); gap: 16px`) — chaque card utilise la classe `.card` existante ou un `div` avec `padding: 20px 22px; border-radius: 12px; background: rgba(255,255,255,0.04); border: 1px solid rgba(255,255,255,0.08)` :

| Card | Emoji | Titre (h3) | Description |
|---|---|---|---|
| 1 | 🎨 | Agent designer | Surveille la dérive dans Figma. Produit des rapports — ne modifie pas automatiquement. |
| 2 | 💻 | Agent développeur | Détecte les mauvais usages de tokens dans le code et ouvre des PRs de correction. |
| 3 | 📝 | Agent documentation | Maintient la doc synchronisée : changelogs, guides de migration, notes d'accessibilité. |
| 4 | ✅ | Agent QA | Exécute les vérifications avant merge : accessibilité, régressions visuelles, conformité tokens. |

**Bloc orchestrateur** en bas, pleine largeur (`background: rgba(20,217,200,0.07); border: 1px solid rgba(20,217,200,0.25); border-radius: 12px; padding: 18px 28px`) :
- Emoji + titre inline : `🔀  Orchestrateur`  en `var(--cyan)` `font-weight: 700`
- Texte : `Coordonne les agents. Décide quels changements sont sûrs, lesquels nécessitent une approbation humaine, et quand escalader.`

**Décoration :** `.glow` purple `rgba(155,127,255,0.3)` centré en haut, `.accent-bar` à gauche.

---

## Vérifications finales obligatoires

1. Le compteur `<span id="slide-counter">1 / 15</span>` doit afficher `1 / 18`.
2. Ouvrir le fichier dans un navigateur et naviguer jusqu'aux slides `s9b`, `s12b`, `s13b` pour confirmer qu'elles s'affichent correctement.
3. Vérifier que la navigation clavier (← →) fonctionne toujours sur les 18 slides.
4. Aucune modification aux styles CSS, au logo RAMQ, au système de navigation JS, ni aux 15 slides existantes.
5. Toutes les nouvelles slides ont la classe `.slide` (sans `active`), un `.accent-bar`, et au moins un élément avec classe `.anim`.

---

## Référence de style — classes existantes à réutiliser

```css
/* Couleurs disponibles dans :root */
--navy, --cyan, --blue, --white, --grey0, --grey, --amber, --red, --purple

/* Classes utilitaires disponibles */
.slide           → position absolute, display none (active = flex)
.accent-bar      → barre verticale gauche cyan→blue
.glow            → cercle flou décoratif, filter blur(90px)
.layout-split    → display flex, flex-direction row
.col-left        → padding 48px 56px, flex-direction column, gap 24px
.col-right       → flex-direction column, justify-content center
.col-full        → padding 48px 64px, flex-direction column, gap 32px
.card            → display flex, gap 16px, padding 18px 22px, border-radius 12px
.quote           → border-left amber, bg amber 20%, italic
.big-statement   → Atkinson 28px bold, em en cyan
.label           → DM Sans 11px, uppercase, letter-spacing 3.5px
.anim            → classe présente sur tous les éléments animés
```
