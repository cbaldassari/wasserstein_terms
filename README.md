# Understanding the complexities of the fine structure of interest rates: a Wasserstein barycenter learning approach

by
Carlo Mari,
Cristiano Baldassari.

This repository contains the code to reproduce all the results reported in the paper "Unsupervised understanding of the fine structure of interest rates: a Wasserstein barycenter approach".

## Abstract
A novel methodology to investigate the fine structure of interest rates based on machine learning techniques is proposed. The aim is to capture in an unsupervised way the common stochastic structure that drives the dynamics of interest rates of different maturities. The proposed approach is based on the Wasserstein barycenter, a powerful tool of analysis that allows us to construct, from a set of assigned probability distributions, a single probability distribution that captures the essential features of the set. To identify common stochastic factors, a Gaussian Mixture Model is fitted to the Wasserstein barycenter by maximum likelihood using the Expectation-Maximization algorithm with an initialization strategy based on graph machine learning techniques. A fine-tuning of single-term interest rates is also discussed. The methodology is tested on the US zero-coupon Treasury yield curve.

## Reproducing the results

The provided Python [notebook](https://github.com/cbaldassari/wasserstein_terms/blob/main/wasstax.ipynb) contains the code that implements the  method of Wasserstein Barycenter' distribution calculation, in particular with the GMM initialization technique that is explained in depth in our other papers/repositories: 
-../cbaldassari/gmm_init, 
-../cbaldassari/gmm_embedding_init, 
-../cbaldassari/time_series_network. Further more, you can find the code to implement the optimization in the file 

## Getting the code
You can download a copy of all the files in this repository by cloning the
[git](https://github.com/cbaldassari/wasserstein_terms) repository:
```
    git clone https://github.com/cbaldassari/wasserstein_terms
```
or [download a zip archive](https://github.com/cbaldassari/wasserstein_terms/archive/refs/heads/main.zip).
