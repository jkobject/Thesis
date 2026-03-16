# Response to Reviewer Charlotte Bunne

Dear Charlotte,

Thank you for your detailed and constructive feedback on the thesis manuscript. I address each of your points below.

---

## 1. Personal narrative / preamble

**Your comment:** "Remove the preamble and any personal narrative. A thesis introduction should be academic in tone and content."

**Response:** The "Personal Motivation" section has been removed from the Introduction entirely. Personal context has been moved to the Acknowledgements section, as you suggested. The Introduction now opens directly with the scientific problem setting.

---

## 2. Structure and narrative flow

**Your comment:** "The current version is fuzzy and reads like a list of loosely connected topics... without a coherent progression."

**Response:** The Introduction has been fully restructured following your proposed outline:
1. Motivation and problem setting
2. Foundation models and the rationale for large-scale learning approaches (technical, non-textbook)
3. Scientific aim
4. Thesis scope and contributions (with explicit statement of what is and is not covered)
5. Chapter-by-chapter overview

The "Promises of cellular biology" framing and the Feynman figure reference have been removed.

---

## 3. Basic textbook material

**Your comment:** "There is no need to explain the central dogma or basic principles of gene regulation... Do not confuse Introduction and Background."

**Response:** All pedagogical background material (RNA biology, central dogma, gene regulatory networks, single-cell sequencing, basic ML concepts) has been moved to a dedicated **Background chapter** (Chapter 2), which is intended for readers less familiar with either biology or machine learning. The Introduction no longer contains textbook-level content.

---

## 4. Introduction vs. Background separation

**Your comment:** "For now, in fact, you have no Background/Related Work section, it seems?"

**Response:** A full Background chapter has been added (chapters/background.tex), covering: (1) cell regulation and RNA biology, (2) gene regulatory networks, (3) single-cell sequencing technologies, and (4) foundational ML/AI concepts. This chapter is clearly separated from the Introduction in the thesis structure.

---

## 5. Scope alignment

**Your comment:** "The introduction currently lists many topics that are not addressed in your work."

**Response:** The Scope section now explicitly states what the thesis does not address (perturbation response prediction as a primary target, temporal dynamics, spatial transcriptomics as a primary modality). Any topics that appear on page 20 but are not covered have been removed or qualified.

---

## 6. Language, style, and punctuation

**Your comment:** "Many spelling errors, missing full stops, sloppy language. English does not use a space before '?' or ':'."

**Response:** The manuscript was reviewed with Grammarly and manually corrected. French typography habits (space before '?' and ':') have been removed. The LaTeX document class has been updated from a French thesis template to an English one, which also resolved automatic spacing insertion. The academic register has been reviewed and informal phrasing corrected throughout the Introduction.

---

## 7. Technical depth of the scFM state of the art

**Your comment (via PI):** "When you talk about the state-of-the-art use a more technical tone and give details on the different models instead of just listing and citing some."

**Response:** The Bio-Foundation Models section has been substantially expanded. Each model now includes:
- **Architecture specifics** (attention mechanism, encoder/decoder design, tokenization strategy)
- **Training dataset** (size, source, organism coverage)
- **Pretraining objective** (masked token prediction, autoregressive generation, contrastive learning, etc.)
- **Key benchmark results** and demonstrated capabilities
- **Limitations** identified by independent evaluations

Models now covered in technical depth: scBERT, Geneformer, scGPT, UCE, scFoundation, scCello (Yuan et al., NeurIPS 2024), and LangCell (Zhao et al., 2024).

---

## Note on versioning

The substantial structural revisions described above are reflected in the thesis manuscript version dated March 11, 2026, which corresponds to the version submitted via the standard thesis submission portal and shared with you alongside this response.

Best regards,  
Jérémie Kalfon
