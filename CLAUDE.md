# CLAUDE.md — Thesis Project

## Overview
Thèse de doctorat de Jérémie Kalfon, Cantini Lab.
**Sujet :** Transformers pour le single-cell RNA-seq — scPRINT-2, un foundation model pour cellules uniques.
**Soutenance :** 25 mars 2026
**Directrice :** Charlotte (PI)

## Structure du repo
```
main.tex              # Entry point LaTeX
chapters/
  intro.tex           # Introduction (restructurée Feb 2026)
  background.tex      # Background / Related Work (chapitre dédié, ajouté Feb 2026)
  ...
figures/
bibliography.bib
RESPONSE_TO_CHARLOTTE.md   # Lettre de réponse point-par-point à Charlotte
CHARLOTTE_TASKS.md         # Liste des tâches issues du feedback Charlotte
reply_to_rapporteurs.md    # Réponse aux rapporteurs
```

## Branches
- `main` — branche principale
- `charlotte-response` — ⚠️ branche active avec les corrections suite au feedback Charlotte Bunne

## État actuel (2026-03-16)
**Branche active : `charlotte-response`**

### ✅ Fait
- Introduction entièrement restructurée (PR #3, PR #4, commits 0a30b9c / d72e822, 26 Feb 2026)
- Section "Personal Motivation" supprimée → déplacée dans remerciements
- "Promises of cellular biology" + figure Feynman supprimées
- Background chapter (`chapters/background.tex`) créé avec : cell regulation, GRN, scRNA-seq, ML fondations
- Lettre de réponse `RESPONSE_TO_CHARLOTTE.md` créée (point-par-point)
- Doublons GRN supprimés, section limitations dépersonnalisée
- Références scCello et LangCell ajoutées + corrigées
- Registre académique revu, typographie française corrigée (espaces avant `?` et `:`)
- Section intro scFM étendue et restructurée

### ⏳ En cours / À faire
- [ ] Charlotte a répondu le 14 mars : "vous n'avez pas adressé mes remarques" — potentiellement elle avait une ancienne version. Vérifier si elle a vu les dernières modifications (commits depuis le 26 Feb)
- [ ] Vérifier les 7 points de Charlotte dans CHARLOTTE_TASKS.md un par un sur l'état actuel du tex
- [ ] Push branch → ouvrir PR si pas encore fait
- [ ] Envoyer le PDF final à Charlotte avec note expliquant les commits qui adressent ses points

## Commits clés
| Commit | Description |
|--------|-------------|
| `07ff110` | "wip intro" — major rewrite de l'intro (26 Feb) |
| `35bb09e` | "moving the background elsewhere" |
| `cd52704` | "reworked the background part" |
| `0a30b9c` | Merge PR #4 |
| `d72e822` | Merge PR #3 |
| `4acfece` | "updates from gabriel" (11 Mar) |
| `868e19d` | charlotte-response: fix opening, remove Monod figure |
| `2cd4f94` | fix: remove 'promises of cellular biology', vulgarisation language |

## Contexte Charlotte Bunne
Charlotte a envoyé son feedback le **24 Feb 2026**, puis relancé le **14 Mar 2026** en disant que ses remarques n'avaient pas été adressées. Probable malentendu : les grosses restructurations ont eu lieu le 26 Feb (après son premier email), elle avait peut-être une version cachée.

Ses 7 points : (1) pas de narration personnelle, (2) structure + flow cohérent, (3) pas de contenu textbook basique, (4) séparer Intro et Background, (5) aligner avec le contenu réel, (6) langue/orthographe/ponctuation, (7) structure suggérée.

→ Tous documentés en détail dans `CHARLOTTE_TASKS.md`

## Modèle scPRINT-2
Le modèle est dans `~/projects/scPRINT-2/`. Papers et reviews dans `~/scprint2/`.
C'est un single-cell foundation model : 350M+ cellules, 16 espèces.

## Notes pour agents
- Toujours travailler sur la branche `charlotte-response` pour les corrections Charlotte
- Vérifier `CHARLOTTE_TASKS.md` pour les points précis à adresser
- Le LaTeX compile avec `pdflatex main.tex` (ou `latexmk -pdf main.tex`)
- La réponse officielle est dans `RESPONSE_TO_CHARLOTTE.md` — la mettre à jour si de nouvelles corrections sont faites
