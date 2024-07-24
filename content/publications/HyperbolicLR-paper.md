---
title: "HyperbolicLR: Epoch insensitive learning rate scheduler"
date: 2024-07-21
weight: 0
extra:
  featured: true
  link: https://arxiv.org/abs/2407.15200
  bibtex: /media/HyperbolicLR.bib
  pubtype: Article
  image: /media/arxiv-logo.svg

description: "This paper introduces novel learning rate schedulers, HyperbolicLR and ExpHyperbolicLR, designed to address the learning curve decoupling problem in deep learning optimization.
  <ul>
  <li><b>Novel Schedulers</b>: Proposes HyperbolicLR and ExpHyperbolicLR, based on hyperbolic curves, to maintain consistent learning rate changes across varying epoch numbers.</li>
  <li><b>Performance Consistency</b>: Demonstrates superior stability and consistent performance improvements across increasing epoch numbers in various deep learning tasks.</li>
  <li><b>Decoupling Mitigation</b>: Introduces the Smoothed Learning Curve Difference metric to quantify and mitigate the learning curve decoupling problem.</li>
  <li><b>Wide Applicability</b>: Shows versatility across different model architectures and tasks, including image classification, time series prediction, and operator learning.</li>
  </ul>"

taxonomies:
  tags:
    - Machine Learning
    - Deep Learning
    - Optimization
    - Learning Rate Scheduler
---

## Authors

- [**Tae-Geun Kim**](https://axect.github.io) (Yonsei University, South Korea)

## Abstract

This study proposes two novel learning rate schedulers: the Hyperbolic Learning Rate Scheduler (HyperbolicLR) and the Exponential Hyperbolic Learning Rate Scheduler (ExpHyperbolicLR). These schedulers attempt to address the inconsistent learning curves often observed in conventional schedulers when adjusting the number of epochs. By leveraging the asymptotic behavior of hyperbolic curves, the proposed schedulers maintain more consistent learning curves across varying epoch settings. Experimental results on various deep learning tasks and architectures demonstrate that both HyperbolicLR and ExpHyperbolicLR maintain more consistent performance improvements compared to conventional schedulers as the number of epochs increases. These findings suggest that our hyperbolic-based learning rate schedulers offer a more robust and efficient approach to training deep neural networks, especially in scenarios where computational resources or time constraints limit extensive hyperparameter searches.

## Important links

- [arXiv: 2407.15200](https://arxiv.org/abs/2407.15200)
- [GitHub: Axect/HyperbolicLR](https://github.com/Axect/HyperbolicLR)

## Citation

```bib
@misc{kim2024hyperboliclr,
    title={HyperbolicLR: Epoch insensitive learning rate scheduler}, 
    author={Tae-Geun Kim},
    year={2024},
    eprint={2407.15200},
    archivePrefix={arXiv},
    primaryClass={cs.LG},
    url={https://arxiv.org/abs/2407.15200}, 
}
```
