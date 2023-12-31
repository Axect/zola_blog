---
title: "DeeLeMa"
date: 2023-11-10
weight: 3
extra:
  featured: true
  link: https://github.com/Yonsei-HEPCOSMO/DeeLeMa
  image: /media/DeeLeMa.png
  version: 0.1.0
description: Deep learning for mass estimation.
  <ul>
  <li> Build with a foundation on symmetric event topology. </li>
  <li> Estimate the missing energy-momenta distribution. </li>
  </ul>
taxonomies:
  tags:
    - Physics
    - Machine Learning
    - PyTorch
---

## Overview

$\textsf{DeeLeMa}$ is a deep learning network designed to analyze energies and momenta in particle collisions at high-energy colliders. Built with a foundation on symmetric event topology, $\textsf{DeeLeMa}$'s generated mass distributions demonstrate robust peaks at the physical masses, even after accounting for combinatoric uncertainties and detector smearing effects. With its adaptability to different event topologies, $\textsf{DeeLeMa}$'s effectiveness shines when corresponding kinematic symmetries are adopted.

The current version of $\textsf{DeeLeMa}$ (v1.0.0) is constructed on the $t\bar{t}$-like antler event topology which is shown below figure.
<p align="center">
<img src="https://github.com/Yonsei-HEP-COSMO/DeeLeMa/blob/main/img/topology.png?raw=true" width="350">
    <br>
    <m>$t\bar{t}$-like antler event topology</m>
</p>

## Requirements

### Using Pip

```bash
pip3 install -r requirements.txt
```

### Using PDM (Recommended)

If you haven't installed `pdm` yet:

```bash
# Linux / Mac
curl -sSL https://pdm.fming.dev/install-pdm.py | python3 -

# Windows
(Invoke-WebRequest -Uri https://pdm.fming.dev/install-pdm.py -UseBasicParsing).Content | python -
```

With PDM installed:

```bash
# Install dependencies from pyproject.toml
pdm install

# Activate virtual environment (venv)
source .venv/bin/activate
```

## Getting Started

1. **Clone the Repository**

    ```bash
    git clone https://github.com/Yonsei-HEP-COSMO/DeeLeMa.git
    ```

2. **Install Dependencies**: 
   
   Follow the [Requirements](#requirements) section for instructions.

3. **Training**:

    ⚠️ **Caution**
    > Before training, ensure you modify the data path in `train.py` to point to the location of your data.
    > For more details, refer to [`train.py`](./train.py).

   To train the model, execute the following command:

    ```bash
    python train.py
    ```

4. **Monitoring**:
   
   To monitor the training process, run `tensorboard`:

    ```bash
    tensorboard --logdir=logs/
    ```

    ⚠️ **Caution**
    > If you use PDM then should run tensorboard in activated virtual environment.
  
    

## Citation

If $\textsf{DeeLeMa}$ benefits your research, please acknowledge our efforts by citing the following paper:

```bibtex
@article{Ban:2022hfk,
    author = "Ban, Kayoung and Kang, Dong Woo and Kim, Tae-Geun and Park, Seong Chan and Park, Yeji",
    title = "{DeeLeMa: Missing Information Search with Deep Learning for Mass Estimation}",
    eprint = "2212.12836",
    archivePrefix = "arXiv",
    primaryClass = "hep-ph",
    month = "12",
    year = "2022"
}
```

## Reference

* K. Ban, D. W. Kang, T.-G Kim, S. C. Park, and Y. Park,  *DeeLeMa: Missing Information Search with Deep Learning for Mass Estimation*, [arXiv:2212.12836](https://arxiv.org/abs/2212.12836)

## License

$\textsf{DeeLeMa}$ is released under the MIT License. For more details, see the `LICENSE` file in the repository.

