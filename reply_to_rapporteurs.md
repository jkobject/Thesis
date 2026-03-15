Reply to rapporteurs
Valentina
A central conceptual question that would benefit from more explicit treatment concerns the relationship between the denoising training objective and the nature of the regulatory interactions captured by attention. Since scPRINT is trained to reconstruct downsampled expression profiles, the model is optimized to exploit global co-expression structure. This creates no obvious inductive bias toward direct regulatory interactions over indirect transitive paths of the form A→B→C. The manuscript does not fully address why attention weights in this setting should preferentially reflect direct regulation rather than co-expression. Given that biological interpretability of the inferred networks is a central claim, a more explicit theoretical treatment of this issue would substantially strengthen the work.
As long as steady-state expression data are used, nothing more than co-expression can be achieved, and we do not make a claim to the contrary. The goal is not to infer GRN per se, but to understand the ability of foundation models to leverage an understanding of gene relationships (albeit through co-expression patterns) to achieve their tasks and how this general understanding enables them to perform many other downstream tasks. However, we do believe that foundation models can go beyond co-expression. Indeed, using ESM3 embeddings confers knowledge of protein structure and evolutionary relationships, and using gene location provides additional information on the probability of co-regulation. working across species further provides patterns of expression not just within cells but across kingdoms. Obviously, nothing is causal yet without interventional or temporal data, and that is a point left to be worked out
→ I have added this sentence: “Given the model’s pre-training and losses, it cannot be expected of them to contain more than co-expression patterns. Compared to a complex co-expression model like GENIE3, they often indeed even underperform it. However, we show that we can get closer to the best co-expression-based gene network inference tools, such as GENIE3, by using improved training. Finally, the addition of inductive biases like the gene’s sequence and evolutionary similarities can help provide information unavailable in the expression data alone.”


Figure 12 appears somewhat generic and does not substantially contribute to the understanding of the specific models proposed, while Figure 13 introduces skip connections and their effect on the loss landscape without fully clarifying their precise role in the proposed architectures. Minor typographical errors are present but do not affect readability.
→ I have moved figures 12 and 13, as well as their related content to another section called background for people unfamiliar with neural networks and why they indeed work
→ I have rechecked the paper for grammatical errors and updated it


Another potential critique: Across all three chapters, key architectural parameters, including the number of transformer layers, attention heads, and embedding dimensions for each model variant, are not consolidated in a form that allows the reader to directly connect design choices to performance outcomes. This is particularly consequential in Chapter 3, where 42 configurations are evaluated: without a summary table of specifications alongside results, it is difficult to draw clean conclusions from the ablation. Adding such a table would substantially improve reproducibility and the interpretability of the benchmarking.
For Chapter 1, the values are available in Table 5.1.2. The values are always the same for all elements and are defined in the first part of the methods. Providing it in the table would have taken too much space.
For Chapter 2, the values are in the method section 2.4.6
For Chapter 3, the values are in the method section 3.5.1
Charlotte
At the moment, the introduction requires a complete rewrite from scratch. In particular:
Remove the preamble and any personal narrative. A thesis introduction should be academic in tone and content. Personal motivation, objectives, or a “PhD journey” framing can go into acknowledgements, but not in the introduction.
Do not introduce basic textbook material. There is no need to explain the central dogma or basic principles of gene regulation, especially not with explicit figures. Likewise, avoid a generic sequencing overview. Background should be minimal and only included if it directly supports what you do in the thesis. Don’t confuse Introduction and Background, this are two different chapters. For now, in fact, you have no Background/Related Work section, it seems?
I have added the “personal” section to the Ph.D. journey voluntarily, knowing that it is not often included in a Ph.D. thesis, but it is something I have always felt was missing when presenting one’s work. I would like to keep the section in the acknowledgements if you agree.
Indeed, in France, for a publication-based thesis, the introduction/discussion is seen as a place where the student can present material they couldn’t include in their papers. Having never appreciated the classical academic writing style, I set out to write in a style I enjoy reading and to be more personal. I have reworded many paragraphs, moved almost all sections, and made changes based on your thoughtful feedback.
→ I fully rewrote the structure of the introduction / objective chapters into:
1. Acknowledgement
   1. remerciements
   2. Personal Motivation â moved the personal stuff here
      1. background to the thesis
      2. personal objectives

   2. â¦ lists â¦ (kept unchanged)

   3. Background: â moved all the more basic review elements and definitions here
      1. Biology (rna, networks, sequencing)
      2. Machine learning (definitions, neural nets, loss landscapesâ¦)

         4. Introduction: (added and modified elements initially in the introduction and objectives chapters, following your proposed structure:
         1. Motivation and problem setting: Described the complexity of cellular biology and why computational modeling is needed.
         2. Why modern large models: Explained, at a high level, why the building blocks and their interactions motivate large-scale learning approaches
         3. Scientific aim: Motivated the need for mechanistic insight
         4. Thesis scope:
         1. Clearly state what has been done,
         2. What we did not do. I mentioned that we did not do temporal or interventional data and why. I also added a subsection on what was initially planned but not done (initially part of the âobjectiveâ chapter)
         5. Thesis outline and contributions: Briefly described what each chapter contains, aligned with the actual results. (mostly what was in the objective chapter). summarized the core contributions and impact.

            5. Chapter 1 â¦ (kept unchanged)

Since the thesis is at the crossroads of machine learning and Biology. I made the choice to add some background and go through some definitions on purpose to present things to both biologists and computer scientists. In the Doctoral school template, there is no background section, and they say to add it in the intro. I will add a specific subsection to clearly separate the background, the introduction, and related works.


Fix the structure and narrative flow. The current version is fuzzy and reads like a list of loosely connected topics. It jumps between broad promises of biology, the central dogma, gene regulatory networks, sequencing, and unrelated figures (for example, the Feynman image) without a coherent progression.
Align the introduction with what the thesis actually covers. The introduction currently lists many topics (including on page 20) that are not addressed in your work. The introduction should set up the specific problem setting, methods, and contributions that your thesis delivers.
I am not sure what the Feynman diagrams are in my thesis, but I have reordered sections and topics a lot.
â I have reordered sections to get preamble [my background for the thesis, personal objectives for the thesis], background [biology, machine learning], introduction [with your proposed structure: initial objectives, potential impacts, â¦],


Improve language, formatting, and academic style. There are many spelling errors, missing full stops, sloppy language, and generally non-academic phrasing. Also, please correct punctuation spacing: English does not use a space before â?â or â:â (this is a common French typography habit and it stands out in English writing).
I reviewed the thesis's spelling with Grammarly, but made multiple changes based on feedback from Gabriel and Laura. 
âI have done another pass now and updated many spelling issues, especially in some early parts of the introduction
â For the academic phrasing, I have made some changes in the introduction section, mostly. But you might also refer to the more âpersonalâ section. The tone has stayed similar, but it was moved to the acknowledgments
â For the space. Although there is no space in my LaTeX document, the university's thesis styling guide automatically added them. I changed the styling guide from a French Thesis to an English thesis; this removed the spaces.