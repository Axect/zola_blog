---
title: Peroxide
date: 2023-11-28
extra:
  featured: true
  link: https://github.com/Axect/Peroxide
  image: /media/peroxide_logo.png
description: A comprehensive numerical computation library for Rust.
  <ul>
  <li> Linear algebra with various matrix and vector operations. </li>
  <li> Numerical integrations and automatic differentiation. </li>
  <li> Statistics with various probability distributions. </li>
  <li> Splines and interpolations. </li>
  <li> Optimization, root finding, and differential equation solving. </li>
  </ul>
taxonomies:
  tags:
    - Rust
    - Numerical
    - Statistics
    - Linear Algebra
---
[![On crates.io](https://img.shields.io/crates/v/peroxide.svg)](https://crates.io/crates/peroxide)
[![On docs.rs](https://docs.rs/peroxide/badge.svg)](https://peroxide.surge.sh)
[![builds.sr.ht status](https://builds.sr.ht/~axect/Peroxide/.build.yml.svg)](https://builds.sr.ht/~axect/Peroxide/.build.yml?)
![github](https://github.com/Axect/Peroxide/workflows/Github/badge.svg) 
![maintenance](https://img.shields.io/badge/maintenance-actively--developed-brightgreen.svg)

Rust numeric library contains linear algebra, numerical analysis, statistics and machine learning tools with R, MATLAB, Python like macros.

## Why Peroxide?

### 1. Customize features

Peroxide provides various features.

* `default` - Pure Rust (No dependencies of architecture - Perfect cross compilation)
* `O3` - BLAS & LAPACK (Perfect performance but little bit hard to set-up - Strongly recommend to look [Peroxide with BLAS](https://github.com/Axect/Peroxide_BLAS))
* `plot` - With matplotlib of python, we can draw any plots.
* `nc` - To handle netcdf file format with DataFrame
* `csv` - To handle csv file format with Matrix or DataFrame
* `parquet` - To handle parquet file format with DataFrame
* `serde` - serialization with [Serde](https://serde.rs/).

If you want to do high performance computation and more linear algebra, then choose `O3` feature.
If you don't want to depend C/C++ or Fortran libraries, then choose `default` feature.
If you want to draw plot with some great templates, then choose `plot` feature.

You can choose any features simultaneously.
 
### 2. Easy to optimize

Peroxide uses 1D data structure to describe matrix. So, it's too easy to integrate BLAS.
It means peroxide guarantees perfect performance for linear algebraic computations.

### 3. Friendly syntax

Rust is so strange for Numpy, MATLAB, R users. Thus, it's harder to learn the more rusty libraries.
With peroxide, you can do heavy computations with R, Numpy, MATLAB like syntax.

For example,

```rust
#[macro_use]
extern crate peroxide;
use peroxide::prelude::*;

fn main() {
    // MATLAB like matrix constructor
    let a = ml_matrix("1 2;3 4");

    // R like matrix constructor (default)
    let b = matrix(c!(1,2,3,4), 2, 2, Row);

    // Or use zeros
    let mut z = zeros(2, 2);
    z[(0,0)] = 1.0;
    z[(0,1)] = 2.0;
    z[(1,0)] = 3.0;
    z[(1,1)] = 4.0;
    
    // Simple but effective operations
    let c = a * b; // Matrix multiplication (BLAS integrated)

    // Easy to pretty print
    c.print();
    //       c[0] c[1]
    // r[0]     1    3
    // r[1]     2    4

    // Easy to do linear algebra
    c.det().print();
    c.inv().print();

    // and etc.
}
```

### 4. Can choose two different coding styles.

In peroxide, there are two different options.

* `prelude`: To simple use.
* `fuga`: To choose numerical algorithms explicitly.

For examples, let's see norm.

In `prelude`, use `norm` is simple: `a.norm()`. But it only uses L2 norm for `Vec<f64>`. (For `Matrix`, Frobenius norm.)
```rust
#[macro_use]
extern crate peroxide;
use peroxide::prelude::*;

fn main() {
    let a = c!(1, 2, 3);
    let l2 = a.norm();      // L2 is default vector norm
    
    assert_eq!(l2, 14f64.sqrt());
}
```

In `fuga`, use various norms. But you should write longer than `prelude`.
```rust
#[macro_use]
extern crate peroxide;
use peroxide::fuga::*;
   
fn main() {
    let a = c!(1, 2, 3);
    let l1 = a.norm(Norm::L1);
    let l2 = a.norm(Norm::L2);
    let l_inf = a.norm(Norm::LInf);
    assert_eq!(l1, 6f64);
    assert_eq!(l2, 14f64.sqrt());
    assert_eq!(l_inf, 3f64);
}
```

### 5. Batteries included

Peroxide can do many things. 

* Linear Algebra
    * Effective Matrix structure
    * Transpose, Determinant, Diagonal
    * LU Decomposition, Inverse matrix, Block partitioning
    * QR Decomposition (`O3` feature)
    * Singular Value Decomposition (SVD) (`O3` feature)
    * Cholesky Decomposition (`O3` feature)
    * Reduced Row Echelon form
    * Column, Row operations
    * Eigenvalue, Eigenvector
* Functional Programming
    * More easy functional programming with `Vec<f64>`
    * For matrix, there are three maps
        * `fmap` : map for all elements
        * `col_map` : map for column vectors
        * `row_map` : map for row vectors
* Automatic Differentiation
    * Taylor mode Forward AD - for nth order AD
    * Exact jacobian
    * `Real` trait to constrain for `f64` and `AD` (for ODE)
* Numerical Analysis
    * Lagrange interpolation
    * Splines
        * Cubic Spline
        * Cubic Hermite Spline
            * Estimate slope via Akima
            * Estimate slope via Quadratic interpolation
    * Non-linear regression
        * Gradient Descent
        * Levenberg Marquardt
    * Ordinary Differential Equation
        * Euler
        * Runge Kutta 4th order
        * Backward Euler (Implicit)
        * Gauss Legendre 4th order (Implicit)
    * Numerical Integration
        * Newton-Cotes Quadrature
        * Gauss-Legendre Quadrature (up to 30 order)
        * Gauss-Kronrod Quadrature (Adaptive)
            * G7K15, G10K21, G15K31, G20K41, G25K51, G30K61
    * Root Finding
        * Bisection
        * False Position (Regula Falsi)
        * Secant
        * Newton
* Statistics
    * More easy random with `rand` crate
    * Ordered Statistics
        * Median
        * Quantile (Matched with R quantile)
    * Probability Distributions
        * Bernoulli
        * Uniform
        * Binomial
        * Normal
        * Gamma
        * Beta
        * Student's-t
    * RNG algorithms
        * Acceptance Rejection
        * Marsaglia Polar
        * Ziggurat
        * Wrapper for `rand-dist` crate
    * Confusion Matrix & Metrics
* Special functions
    * Wrapper for `puruspe` crate (pure rust)
* Utils
    * R-like macro & functions
    * Matlab-like macro & functions
    * Numpy-like macro & functions
    * Julia-like macro & functions
* Plotting
    * With `pyo3` & `matplotlib`
* DataFrame
    * Support various types simultaneously
    * Read & Write `csv` files (`csv` feature)
    * Read & Write `netcdf` files (`nc` feature)
    * Read & Write `parquet` files (`parquet` feature)

### 6. Compatible with Mathematics

After `0.23.0`, peroxide is compatible with mathematical structures.
`Matrix`, `Vec<f64>`, `f64` are considered as inner product vector spaces.
And `Matrix`, `Vec<f64>` are linear operators - `Vec<f64>` to `Vec<f64>` and `Vec<f64>` to `f64`.
For future, peroxide will include more & more mathematical concepts. (But still practical.)

### 7. Written in Rust

Rust & Cargo are awesome for scientific computations. 
You can use any external packages easily with Cargo, not make.
And default runtime performance of Rust is also great. If you use many iterations for computations,
then Rust become great choice.

## Latest README version

Corresponding to `0.32.0`

## Pre-requisite

* For `O3` feature - Need `OpenBLAS`
* For `plot` feature - Need `matplotlib` of python
* For `nc` feature - Need `netcdf`

## Install

* Run below commands in your project directory

1. Default
    ```bash
    cargo add peroxide
    ```
2. OpenBLAS
    ```bash
    cargo add peroxide --features O3
    ```
3. Plot
    ```bash
    cargo add peroxide --features plot
    ```
4. NetCDF dependency for DataFrame
    ```bash
    cargo add peroxide --features nc
    ```
5. CSV dependency for DataFrame
    ```bash
    cargo add peroxide --features csv
    ```
6. Parquet dependency for DataFrame
    ```bash
    cargo add peroxide --features parquet
    ```
7. All features
    ```bash
    cargo add peroxide --features "O3 plot nc csv parquet"
    ```


## Useful tips for features

* If you want to use *QR* or *SVD* or *Cholesky Decomposition* then should use `O3` feature (there are no implementations for these decompositions in `default`)
* If you want to write your numerical results, then use `parquet` or `nc` features (corresponding to `parquet` or `netcdf` format. (It is much more effective than `csv` and `json`.)
* To plot, use `parquet` or `nc` feature to export data as parquet or netcdf format and use python to draw plot.
    * `plot` feature has limited plot abilities.
    * To read parquet file in python, use `pandas` & `pyarrow` libraries.
    * There is a template of python code for netcdf. - [Socialst](https://github.com/Axect/Socialst/blob/master/Templates/PyPlot_Template/nc_plot.py)

## Documentation

* [![On docs.rs](https://docs.rs/peroxide/badge.svg)](https://peroxide.surge.sh)

## Example

[Peroxide Gallery](https://github.com/Axect/Peroxide_Gallery)

## Version Info

To see [RELEASES.md](https://github.com/Axect/Peroxide/blob/master/RELEASES.md)
