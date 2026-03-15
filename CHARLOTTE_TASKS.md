# Charlotte Bunne Feedback — Task List

## Context
Charlotte Bunne (reviewer) sent detailed feedback on 24 Feb 2026 and followed up on 14 Mar 2026 saying her remarks were not addressed.
The thesis has been substantially revised since (Codex PRs in late Feb), but Charlotte may not have seen the latest version.

## Goal
Create branch `charlotte-response` with:
1. A `RESPONSE_TO_CHARLOTTE.md` file — point-by-point replies to each of her comments
2. Any remaining edits to `chapters/intro.tex` and `chapters/background.tex` that are still needed

---

## Charlotte's Points (from email 24 Feb 2026)

### POINT 1 — Remove personal narrative / preamble
**Charlotte:** "Remove the preamble and any personal narrative. Personal motivation, objectives, or a 'PhD journey' framing can go into acknowledgements, but not in the introduction."
**Status check:** Does `chapters/intro.tex` still have a "Personal Motivation" section or personal narrative?
**Action:** Remove any remaining personal/narrative preamble from intro.tex. Move to acknowledgements if needed.
**Response draft:** "Personal motivation and PhD journey sections have been removed from the introduction. The chapter now opens directly with the scientific problem setting."

---

### POINT 2 — Fix structure and narrative flow
**Charlotte:** "The current version is fuzzy and reads like a list of loosely connected topics. It jumps between broad promises of biology, the central dogma, gene regulatory networks, sequencing, and unrelated figures (e.g., Feynman image) without a coherent progression."
**Status check:** Does the intro still have "The promises of cellular biology" or the Feynman image?
**Action:** Remove any remaining informal/unfocused sections. Ensure coherent progression.
**Response draft:** "The introduction has been completely restructured following your suggested outline (see below). The Feynman image and 'promises of biology' framing have been removed."

---

### POINT 3 — Do not introduce basic textbook material
**Charlotte:** "There is no need to explain the central dogma or basic principles of gene regulation. Background should be minimal and only included if it directly supports what you do."
**Status check:** Does intro.tex still have central dogma explanations or basic sequencing overviews?
**Action:** Any remaining textbook-level content should be moved to background.tex or removed.
**Response draft:** "Elementary background material (central dogma, basic RNA biology, sequencing overview) has been moved to the dedicated Background chapter (Chapter 2) or removed. The introduction now only references background where directly relevant to our contributions."

---

### POINT 4 — Separate Introduction and Background chapters
**Charlotte:** "Don't confuse Introduction and Background, these are two different chapters. For now, in fact, you have no Background/Related Work section, it seems?"
**Status check:** `chapters/background.tex` now exists — confirm it's properly included in main.tex and has the right content.
**Action:** Verify background.tex is complete and referenced in main.tex. Make sure the intro does NOT duplicate its content.
**Response draft:** "A dedicated Background chapter (Chapter 2) has been added, covering: single-cell RNA-seq principles, gene regulatory networks, foundation model architectures (LLMs, bio-FMs), and related work. The Introduction no longer contains textbook background."

---

### POINT 5 — Align introduction with actual thesis content
**Charlotte:** "The introduction currently lists many topics (including on page 20) that are not addressed in your work."
**Action:** Review intro for any overclaiming or topics not covered in the thesis. Remove or qualify.
**Response draft:** "The introduction has been revised to strictly align with the scope of contributions. The thesis scope section now clearly delimits what is and is not covered."

---

### POINT 6 — Language, spelling, academic style
**Charlotte:** "Many spelling errors, missing full stops, sloppy language, non-academic phrasing. Also, French typography habit: no space before '?' or ':'."
**Action:**
- Search intro.tex and background.tex for ` ?` and ` :` patterns and fix
- Review for informal language ("maboul", colloquialisms)
- Fix missing punctuation
**Response draft:** "A thorough language revision has been performed. French typography habits (space before '?' and ':') have been corrected throughout. Informal phrasing has been replaced with academic register."

---

### POINT 7 — Adopt suggested structure
**Charlotte's suggested structure:**
1. Motivation and problem setting
2. Why modern large models (focused, non-textbook)
3. Scientific aim (mechanistic insight, GRN)
4. Thesis scope and contributions
5. Thesis outline

**Action:** Verify intro.tex follows this structure. Adjust section headers and order if needed.
**Response draft:** "The introduction now follows the structure you suggested: (1) Motivation and problem setting, (2) Foundation models and their rationale, (3) Scientific aim, (4) Scope and contributions, (5) Chapter overview."

---

## Charlotte's Follow-up (14 Mar 2026)
"Yes, I have the same version but you did not address any of my remarks."
**Note:** This may be because she was looking at an outdated cached version of the PDF. The substantial Codex restructuring happened 26 Feb (PR #3, PR #4). We should document the exact commits that address her feedback.

Key commits to reference in response:
- `07ff110` — "wip intro" (26 Feb) — major intro rewrite
- `35bb09e` — "moving the background elsewhere"
- `cd52704` — "reworked the background part"
- `d72e822` / `0a30b9c` — Merge PRs #3 and #4
- `4acfece` — "updates from gabriel" (11 Mar)

---

## Execution Steps
- [ ] 1. Create branch `charlotte-response` from main
- [ ] 2. Audit intro.tex for remaining issues (points 1-6 above)
- [ ] 3. Fix remaining language issues (French punctuation, informal phrasing)
- [ ] 4. Verify background.tex is complete and properly structured
- [ ] 5. Create `RESPONSE_TO_CHARLOTTE.md` with point-by-point reply
- [ ] 6. Commit all changes
- [ ] 7. Push branch and open PR on GitHub
