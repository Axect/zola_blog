---
title: "Unsupervised seq2seq learning for automatic SQA introduces multi-channel EIT monitoring"
date: 2023-05-16
weight: 0
extra:
  featured: true
  link: https://arxiv.org/abs/2305.09368
  bibtex: /media/EIT-anomaly.bib
  pubtype: Article
  image: /media/arxiv-logo.svg

description: "This study introduces an unsupervised learning approach to assess motion-induced reliability degradation of cardiac volume signals (CVS) in multi-channel electrical impedance-based hemodynamic monitoring.
  <ul>
  <li><b>Innovative Methodology</b>: Utilizes long-short term memory and variational auto-encoder structures in an encoder-decoder model for self-reproducing CVS input sequences and extrapolating future sequences.</li>
  <li><b>Advanced Detection and Analysis</b>: Detects low-quality, motion-influenced CVS by comparing input sequences with their neural representations, using a two-sigma rule for determining cutoff values.</li>
  <li><b>Enhanced Annotation and Error Reduction</b>: Demonstrates that machine-guided annotation can effectively identify motion-induced anomalies with less human error and effort, achieving competitive performance even without labeled data.</li>
  </ul>"

taxonomies:
  tags:
    - Medical
    - Machine Learning
    - Anomaly Detection
    - Time Series
---

## Authors

- First authors
  - Chang Min Hyun (Yonsei University, South Korea)
  - [**Tae-Geun Kim**](https://axect.github.io) (Yonsei University, South Korea)
- Corresponding authors
  - Chang Min Hyun (Yonsei University, South Korea)
  - Kyunghhun Lee (Kyung Hee University, South Korea)

## Abstract

This study proposes an unsupervised sequence-to-sequence learning approach that automatically assesses the motion-induced reliability degradation of the cardiac volume signal (CVS) in multi-channel electrical impedance-based hemodynamic monitoring. The proposed method attempts to tackle shortcomings in existing learning-based assessment approaches, such as the requirement of manual annotation for motion influence and the lack of explicit mechanisms for realizing motion-induced abnormalities under contextual variations in CVS over time. By utilizing long-short term memory and variational auto-encoder structures, an encoder--decoder model is trained not only to self-reproduce an input sequence of the CVS but also to extrapolate the future in a parallel fashion. By doing so, the model can capture contextual knowledge lying in a temporal CVS sequence while being regularized to explore a general relationship over the entire time-series. A motion-influenced CVS of low-quality is detected, based on the residual between the input sequence and its neural representation with a cut--off value determined from the two-sigma rule of thumb over the training set. Our experimental observations validated two claims: (i) in the learning environment of label-absence, assessment performance is achievable at a competitive level to the supervised setting, and (ii) the contextual information across a time series of CVS is advantageous for effectively realizing motion-induced unrealistic distortions in signal amplitude and morphology. We also investigated the capability as a pseudo-labeling tool to minimize human-craft annotation by preemptively providing strong candidates for motion-induced anomalies. Empirical evidence has shown that machine-guided annotation can reduce inevitable human-errors during manual assessment while minimizing cumbersome and time-consuming processes.

## Important links

- [ArXiv: 2305.09368](https://arxiv.org/abs/2305.09368)

## Citation

```bib
@misc{hyun2023unsupervised,
      title={Unsupervised sequence-to-sequence learning for automatic signal quality assessment in multi-channel electrical impedance-based hemodynamic monitoring}, 
      author={Chang Min Hyun and Tae-Geun Kim and Kyounghun Lee},
      year={2023},
      eprint={2305.09368},
      archivePrefix={arXiv},
      primaryClass={eess.SP}
}
```
