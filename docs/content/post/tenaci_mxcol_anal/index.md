---
title: "report"
subtitle: "G, Tenacidad, Perfeccionismo: Group Differnces and Correlation Analyses."
author: "Ma. Fernanda Serrano"
date: 2024-05-02
tags: ["altas capacidades", "numeric variables", "Fer Serrano", "tenacidad", "perfeccionismo"]
output: hugodown::md_document
rmd_hash: 671f8a731c4d5cb3

---

# DIFFERENCES AMONG GROUPS

## ANOVAS FOR CATEGORICAL INFORMATION

1.  INCLUDING CAPACITY.
2.  Analyses of influence of categorical variables, groups, to G Tenaci and Perfec.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>## COMPUTE ANALYSES AND GRAPHICS</span></span>
<span><span class='nv'>categorical_results</span> <span class='o'>&lt;-</span> <span class='nf'>merged_lm_responses_to_predictors</span><span class='o'>(</span><span class='nv'>scores_grit_esfuer_preoc</span>, <span class='nv'>categorical_info</span>, threshold_significance <span class='o'>=</span> <span class='m'>0.05</span>, categorical_flag <span class='o'>=</span> <span class='kc'>FALSE</span>,</span>
<span>side <span class='o'>=</span> <span class='m'>1</span>, cex <span class='o'>=</span> <span class='m'>0.5</span>, pch <span class='o'>=</span> <span class='m'>1.1</span>, alpha <span class='o'>=</span> <span class='m'>1</span><span class='o'>/</span><span class='m'>3</span>, size <span class='o'>=</span> <span class='m'>1.1</span><span class='o'>)</span></span>
<span><span class='c'>#&gt; $fG</span></span>
<span><span class='c'>#&gt; $fG$escuela</span></span>
<span><span class='c'>#&gt;        xcepac xprimcongreso   xsecaugusto </span></span>
<span><span class='c'>#&gt;  8.453539e-16  6.966841e-03  1.962082e-07 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $fG$grado</span></span>
<span><span class='c'>#&gt;         x1b         x2a         x3a         x3b          x6          x8 </span></span>
<span><span class='c'>#&gt; 0.002125176 0.002636762 0.001098538 0.004825131 0.034494787 0.037487880 </span></span>
<span><span class='c'>#&gt;          x9 </span></span>
<span><span class='c'>#&gt; 0.046386617 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $fG$ciudad</span></span>
<span><span class='c'>#&gt;        xcdmx xguadalajara </span></span>
<span><span class='c'>#&gt; 6.772918e-11 9.875281e-36 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $fG$capacidad</span></span>
<span><span class='c'>#&gt; [1] 2.005137e-17</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Tenaci</span></span>
<span><span class='c'>#&gt; $Tenaci$escuela</span></span>
<span><span class='c'>#&gt; xprimcongreso </span></span>
<span><span class='c'>#&gt;   0.006709368 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Tenaci$grado</span></span>
<span><span class='c'>#&gt;         x6a         x6c </span></span>
<span><span class='c'>#&gt; 0.009994055 0.003121953 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Tenaci$ciudad</span></span>
<span><span class='c'>#&gt;       xcdmx </span></span>
<span><span class='c'>#&gt; 0.001419448 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Tenaci$nacionalidad</span></span>
<span><span class='c'>#&gt;   xmexicano </span></span>
<span><span class='c'>#&gt; 0.006650907 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Tenaci$capacidad</span></span>
<span><span class='c'>#&gt; [1] 0.04793674</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Esfuer</span></span>
<span><span class='c'>#&gt; $Esfuer$escuela</span></span>
<span><span class='c'>#&gt; xprimcongreso </span></span>
<span><span class='c'>#&gt;    0.04431305 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Esfuer$grado</span></span>
<span><span class='c'>#&gt;         x1d         x2b         x2c         x3a         x6a         x6c </span></span>
<span><span class='c'>#&gt; 0.044021673 0.002543359 0.001648638 0.027042924 0.012576949 0.030856235 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Esfuer$ciudad</span></span>
<span><span class='c'>#&gt;        xcdmx xguadalajara </span></span>
<span><span class='c'>#&gt;  0.003100297  0.008215657 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Esfuer$nacionalidad</span></span>
<span><span class='c'>#&gt;   xmexicano </span></span>
<span><span class='c'>#&gt; 0.003205683 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Preocu</span></span>
<span><span class='c'>#&gt; $Preocu$escuela</span></span>
<span><span class='c'>#&gt;      xcepac </span></span>
<span><span class='c'>#&gt; 0.004002426 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Preocu$grado</span></span>
<span><span class='c'>#&gt;         x2c </span></span>
<span><span class='c'>#&gt; 0.003962269 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Preocu$ciudad</span></span>
<span><span class='c'>#&gt; xguadalajara </span></span>
<span><span class='c'>#&gt; 2.899829e-05 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Preocu$nacionalidad</span></span>
<span><span class='c'>#&gt;    xmexicano </span></span>
<span><span class='c'>#&gt; 0.0002189558 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [1] "fG escuela"</span></span>
<span><span class='c'>#&gt; [1] "fG grado"</span></span>
<span><span class='c'>#&gt; [1] "fG ciudad"</span></span>
<span><span class='c'>#&gt; [1] "fG capacidad"</span></span>
<span><span class='c'>#&gt; [1] "Tenaci escuela"</span></span>
<span><span class='c'>#&gt; [1] "Tenaci grado"</span></span>
<span><span class='c'>#&gt; [1] "Tenaci ciudad"</span></span>
<span><span class='c'>#&gt; [1] "Tenaci nacionalidad"</span></span>
<span><span class='c'>#&gt; [1] "Tenaci capacidad"</span></span>
<span><span class='c'>#&gt; [1] "Esfuer escuela"</span></span>
<span><span class='c'>#&gt; [1] "Esfuer grado"</span></span>
<span><span class='c'>#&gt; [1] "Esfuer ciudad"</span></span>
<span><span class='c'>#&gt; [1] "Esfuer nacionalidad"</span></span>
<span><span class='c'>#&gt; [1] "Preocu escuela"</span></span>
<span><span class='c'>#&gt; [1] "Preocu grado"</span></span>
<span><span class='c'>#&gt; [1] "Preocu ciudad"</span></span>
<span><span class='c'>#&gt; [1] "Preocu nacionalidad"</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span>
<span></span></code></pre>
<img src="figs/anovas_G_tenaci_perfec_cat_info-1.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF fG IN escuela GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 10 &lt;U+00D7&gt; 4</span></span></span>
<span><span class='c'>#&gt;    escuela        mean    sd   num</span></span>
<span><span class='c'>#&gt;    <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>         <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 1</span> andes         101.  10.9     63</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 2</span> bicentenario  100.  11.4     67</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 3</span> cepac         116.  12.1    101</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 4</span> coltec         98   11.2     49</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 5</span> diosa          98.9 11.3    265</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 6</span> esperanza      96.8 11.2     19</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 7</span> pidahi        104.   9.67    25</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 8</span> primcongreso   95.9 12.9     81</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 9</span> secaugusto     92.6 11.9    247</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>10</span> villavicencio  99.3 10.8    285</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span>
<span></span></code></pre>
<img src="figs/anovas_G_tenaci_perfec_cat_info-2.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF fG IN grado GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 20 &lt;U+00D7&gt; 4</span></span></span>
<span><span class='c'>#&gt;    grado  mean    sd   num</span></span>
<span><span class='c'>#&gt;    <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 1</span> 1a     94.3 13.2     32</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 2</span> 1b    104.  19.9     35</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 3</span> 1c     92.0 15.0     26</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 4</span> 1d     99.3 16.4     31</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 5</span> 2a    103.  14.0     52</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 6</span> 2b    100.  14.2     34</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 7</span> 2c    100.  14.7     38</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 8</span> 2d    100.  12.4     28</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 9</span> 3a    104.  14.2     36</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>10</span> 3b    104.  21.0     29</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>11</span> 3c     88.3  8.54    15</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>12</span> 3d     95.6 13.6     17</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>13</span> 6      99.4 11.1    252</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>14</span> 6a     94.0 11.4     21</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>15</span> 6b     97.2  7.47    16</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>16</span> 6c     95.5 18.2     19</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>17</span> 6d     96.9 12.7     25</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>18</span> 7      98.7 11.6    195</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>19</span> 8      99.4 10.9    172</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>20</span> 9      99.3 10.7    129</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span>
<span></span></code></pre>
<img src="figs/anovas_G_tenaci_perfec_cat_info-3.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF fG IN ciudad GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 6 &lt;U+00D7&gt; 4</span></span></span>
<span><span class='c'>#&gt;   ciudad       mean    sd   num</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>       <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> bogota       99.6 11.0    443</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> cajica       95.1  6.88    15</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> cdmx         94.2 12.4    353</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>4</span> chia         98.9 11.5    242</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>5</span> funza        98.3 11.1     48</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>6</span> guadalajara 116.  12.1    101</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span>
<span></span></code></pre>
<img src="figs/anovas_G_tenaci_perfec_cat_info-4.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF fG IN capacidad GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 2 &lt;U+00D7&gt; 4</span></span></span>
<span><span class='c'>#&gt;   capacidad  mean    sd   num</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>     <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> alta      102.   12.8   560</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> tipica     96.3  12.1   642</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span>
<span></span></code></pre>
<img src="figs/anovas_G_tenaci_perfec_cat_info-5.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF Tenaci IN escuela GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 10 &lt;U+00D7&gt; 4</span></span></span>
<span><span class='c'>#&gt;    escuela        mean    sd   num</span></span>
<span><span class='c'>#&gt;    <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>         <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 1</span> andes          3.20 0.642    63</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 2</span> bicentenario   3.28 0.603    67</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 3</span> cepac          3.24 0.524   101</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 4</span> coltec         3.13 0.686    49</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 5</span> diosa          3.22 0.580   265</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 6</span> esperanza      3.08 0.605    19</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 7</span> pidahi         3.26 0.612    25</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 8</span> primcongreso   2.91 0.625    81</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 9</span> secaugusto     3.11 0.650   247</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>10</span> villavicencio  3.21 0.642   285</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span>
<span></span></code></pre>
<img src="figs/anovas_G_tenaci_perfec_cat_info-6.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF Tenaci IN grado GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 20 &lt;U+00D7&gt; 4</span></span></span>
<span><span class='c'>#&gt;    grado  mean    sd   num</span></span>
<span><span class='c'>#&gt;    <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 1</span> 1a     3.18 0.602    32</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 2</span> 1b     3.17 0.653    35</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 3</span> 1c     3.33 0.779    26</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 4</span> 1d     2.92 0.738    31</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 5</span> 2a     3.31 0.586    52</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 6</span> 2b     2.95 0.552    34</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 7</span> 2c     3.10 0.560    38</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 8</span> 2d     3.11 0.685    28</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 9</span> 3a     3.10 0.481    36</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>10</span> 3b     3.38 0.559    29</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>11</span> 3c     3.12 0.457    15</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>12</span> 3d     3.12 0.609    17</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>13</span> 6      3.22 0.634   252</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>14</span> 6a     2.74 0.578    21</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>15</span> 6b     2.97 0.470    16</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>16</span> 6c     2.66 0.714    19</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>17</span> 6d     3.22 0.567    25</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>18</span> 7      3.17 0.605   195</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>19</span> 8      3.23 0.637   172</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>20</span> 9      3.23 0.585   129</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span>
<span></span></code></pre>
<img src="figs/anovas_G_tenaci_perfec_cat_info-7.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF Tenaci IN ciudad GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 6 &lt;U+00D7&gt; 4</span></span></span>
<span><span class='c'>#&gt;   ciudad       mean    sd   num</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>       <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> bogota       3.22 0.635   443</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> cajica       3.04 0.453    15</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> cdmx         3.08 0.647   353</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>4</span> chia         3.22 0.582   242</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>5</span> funza        3.14 0.690    48</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>6</span> guadalajara  3.24 0.524   101</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span>
<span></span></code></pre>
<img src="figs/anovas_G_tenaci_perfec_cat_info-8.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF Tenaci IN nacionalidad GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 3 &lt;U+00D7&gt; 4</span></span></span>
<span><span class='c'>#&gt;   nacionalidad  mean    sd   num</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>        <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> colombiano    3.21 0.624   703</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> mexicano      3.11 0.625   454</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> venezolano    3.16 0.518    45</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span>
<span></span></code></pre>
<img src="figs/anovas_G_tenaci_perfec_cat_info-9.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF Tenaci IN capacidad GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 2 &lt;U+00D7&gt; 4</span></span></span>
<span><span class='c'>#&gt;   capacidad  mean    sd   num</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>     <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> alta       3.21 0.618   560</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> tipica     3.14 0.625   642</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span>
<span></span></code></pre>
<img src="figs/anovas_G_tenaci_perfec_cat_info-10.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF Esfuer IN escuela GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 10 &lt;U+00D7&gt; 4</span></span></span>
<span><span class='c'>#&gt;    escuela        mean    sd   num</span></span>
<span><span class='c'>#&gt;    <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>         <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 1</span> andes          48.1  9.87    63</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 2</span> bicentenario   48.4  9.90    67</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 3</span> cepac          45.3 10.9    101</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 4</span> coltec         46.1  8.37    49</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 5</span> diosa          47.0  8.99   265</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 6</span> esperanza      48.6 11.0     19</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 7</span> pidahi         46.1 10.7     25</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 8</span> primcongreso   45.1  8.27    81</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 9</span> secaugusto     46.4  7.86   247</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>10</span> villavicencio  47.7  8.27   285</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span>
<span></span></code></pre>
<img src="figs/anovas_G_tenaci_perfec_cat_info-11.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF Esfuer IN grado GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 20 &lt;U+00D7&gt; 4</span></span></span>
<span><span class='c'>#&gt;    grado  mean    sd   num</span></span>
<span><span class='c'>#&gt;    <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 1</span> 1a     49.6  6.61    32</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 2</span> 1b     47.4  7.77    35</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 3</span> 1c     46.0 10.6     26</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 4</span> 1d     45.1  8.46    31</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 5</span> 2a     47.3  9.58    52</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 6</span> 2b     43   10.7     34</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 7</span> 2c     42.9 10.0     38</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 8</span> 2d     45.6  8.02    28</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 9</span> 3a     44.8  9.42    36</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>10</span> 3b     47.9  8.09    29</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>11</span> 3c     46.5  5.37    15</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>12</span> 3d     48    7.32    17</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>13</span> 6      47.4  9.27   252</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>14</span> 6a     43.4  6.41    21</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>15</span> 6b     46.4  7.23    16</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>16</span> 6c     44.1 10.6     19</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>17</span> 6d     46.4  8.39    25</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>18</span> 7      48.2  8.75   195</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>19</span> 8      46.7  8.87   172</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>20</span> 9      47.7  8.37   129</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span>
<span></span></code></pre>
<img src="figs/anovas_G_tenaci_perfec_cat_info-12.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF Esfuer IN ciudad GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 6 &lt;U+00D7&gt; 4</span></span></span>
<span><span class='c'>#&gt;   ciudad       mean    sd   num</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>       <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> bogota       47.9  8.86   443</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> cajica       48.5  7.94    15</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> cdmx         46.1  8.18   353</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>4</span> chia         46.9  9.08   242</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>5</span> funza        46.1  8.45    48</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>6</span> guadalajara  45.3 10.9    101</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span>
<span></span></code></pre>
<img src="figs/anovas_G_tenaci_perfec_cat_info-13.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF Esfuer IN nacionalidad GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 3 &lt;U+00D7&gt; 4</span></span></span>
<span><span class='c'>#&gt;   nacionalidad  mean    sd   num</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>        <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> colombiano    47.5  9.01   703</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> mexicano      45.9  8.85   454</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> venezolano    47.9  6.74    45</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span>
<span></span></code></pre>
<img src="figs/anovas_G_tenaci_perfec_cat_info-14.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF Preocu IN escuela GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 10 &lt;U+00D7&gt; 4</span></span></span>
<span><span class='c'>#&gt;    escuela        mean    sd   num</span></span>
<span><span class='c'>#&gt;    <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>         <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 1</span> andes          63.2  17.6    63</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 2</span> bicentenario   60.9  15.3    67</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 3</span> cepac          55.6  19.8   101</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 4</span> coltec         66.2  14.2    49</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 5</span> diosa          64.8  17.0   265</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 6</span> esperanza      62.4  17.4    19</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 7</span> pidahi         59.4  19.0    25</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 8</span> primcongreso   60.5  16.9    81</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 9</span> secaugusto     62.6  14.5   247</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>10</span> villavicencio  64.0  16.0   285</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span>
<span></span></code></pre>
<img src="figs/anovas_G_tenaci_perfec_cat_info-15.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF Preocu IN grado GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 20 &lt;U+00D7&gt; 4</span></span></span>
<span><span class='c'>#&gt;    grado  mean    sd   num</span></span>
<span><span class='c'>#&gt;    <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 1</span> 1a     64.5  16.8    32</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 2</span> 1b     60.1  17.7    35</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 3</span> 1c     63.2  16.1    26</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 4</span> 1d     59.2  13.2    31</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 5</span> 2a     60.6  18.0    52</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 6</span> 2b     57.4  16.5    34</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 7</span> 2c     53.1  15.5    38</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 8</span> 2d     61.5  17.2    28</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 9</span> 3a     61.4  18.3    36</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>10</span> 3b     63.1  17.4    29</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>11</span> 3c     64.5  13.3    15</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>12</span> 3d     63.4  13.8    17</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>13</span> 6      64.3  17.0   252</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>14</span> 6a     57.9  13.3    21</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>15</span> 6b     58.5  12.0    16</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>16</span> 6c     60.9  20.0    19</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>17</span> 6d     63.8  19.9    25</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>18</span> 7      64.5  16.9   195</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>19</span> 8      62.7  14.3   172</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>20</span> 9      64.5  16.9   129</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span>
<span></span></code></pre>
<img src="figs/anovas_G_tenaci_perfec_cat_info-16.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF Preocu IN ciudad GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 6 &lt;U+00D7&gt; 4</span></span></span>
<span><span class='c'>#&gt;   ciudad       mean    sd   num</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>       <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> bogota       63.2  16.3   443</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> cajica       66.9  17.1    15</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> cdmx         61.9  15.4   353</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>4</span> chia         64.9  16.8   242</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>5</span> funza        66.2  14.4    48</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>6</span> guadalajara  55.6  19.8   101</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span>
<span></span><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF Preocu IN nacionalidad GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 3 &lt;U+00D7&gt; 4</span></span></span>
<span><span class='c'>#&gt;   nacionalidad  mean    sd   num</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>        <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> colombiano    64.2  16.3   703</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> mexicano      60.5  16.7   454</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> venezolano    61.5  17.8    45</span></span>
<span></span><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; Attaching package: 'gridExtra'</span></span>
<span></span><span><span class='c'>#&gt; The following object is masked from 'package:dplyr':</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt;     combine</span></span>
<span></span></code></pre>
<img src="figs/anovas_G_tenaci_perfec_cat_info-17.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'># SHOW RESULTS</span></span>
<span><span class='nv'>categorical_results</span></span>
<span><span class='c'>#&gt; $fG</span></span>
<span><span class='c'>#&gt; $fG$escuela</span></span>
<span><span class='c'>#&gt;        xcepac xprimcongreso   xsecaugusto </span></span>
<span><span class='c'>#&gt;  8.453539e-16  6.966841e-03  1.962082e-07 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $fG$grado</span></span>
<span><span class='c'>#&gt;         x1b         x2a         x3a         x3b          x6          x8 </span></span>
<span><span class='c'>#&gt; 0.002125176 0.002636762 0.001098538 0.004825131 0.034494787 0.037487880 </span></span>
<span><span class='c'>#&gt;          x9 </span></span>
<span><span class='c'>#&gt; 0.046386617 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $fG$ciudad</span></span>
<span><span class='c'>#&gt;        xcdmx xguadalajara </span></span>
<span><span class='c'>#&gt; 6.772918e-11 9.875281e-36 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $fG$capacidad</span></span>
<span><span class='c'>#&gt; [1] 2.005137e-17</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Tenaci</span></span>
<span><span class='c'>#&gt; $Tenaci$escuela</span></span>
<span><span class='c'>#&gt; xprimcongreso </span></span>
<span><span class='c'>#&gt;   0.006709368 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Tenaci$grado</span></span>
<span><span class='c'>#&gt;         x6a         x6c </span></span>
<span><span class='c'>#&gt; 0.009994055 0.003121953 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Tenaci$ciudad</span></span>
<span><span class='c'>#&gt;       xcdmx </span></span>
<span><span class='c'>#&gt; 0.001419448 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Tenaci$nacionalidad</span></span>
<span><span class='c'>#&gt;   xmexicano </span></span>
<span><span class='c'>#&gt; 0.006650907 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Tenaci$capacidad</span></span>
<span><span class='c'>#&gt; [1] 0.04793674</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Esfuer</span></span>
<span><span class='c'>#&gt; $Esfuer$escuela</span></span>
<span><span class='c'>#&gt; xprimcongreso </span></span>
<span><span class='c'>#&gt;    0.04431305 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Esfuer$grado</span></span>
<span><span class='c'>#&gt;         x1d         x2b         x2c         x3a         x6a         x6c </span></span>
<span><span class='c'>#&gt; 0.044021673 0.002543359 0.001648638 0.027042924 0.012576949 0.030856235 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Esfuer$ciudad</span></span>
<span><span class='c'>#&gt;        xcdmx xguadalajara </span></span>
<span><span class='c'>#&gt;  0.003100297  0.008215657 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Esfuer$nacionalidad</span></span>
<span><span class='c'>#&gt;   xmexicano </span></span>
<span><span class='c'>#&gt; 0.003205683 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Preocu</span></span>
<span><span class='c'>#&gt; $Preocu$escuela</span></span>
<span><span class='c'>#&gt;      xcepac </span></span>
<span><span class='c'>#&gt; 0.004002426 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Preocu$grado</span></span>
<span><span class='c'>#&gt;         x2c </span></span>
<span><span class='c'>#&gt; 0.003962269 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Preocu$ciudad</span></span>
<span><span class='c'>#&gt; xguadalajara </span></span>
<span><span class='c'>#&gt; 2.899829e-05 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $Preocu$nacionalidad</span></span>
<span><span class='c'>#&gt;    xmexicano </span></span>
<span><span class='c'>#&gt; 0.0002189558</span></span>
<span></span></code></pre>

</div>

# CORRELATION ANALYSES

Analysis of association among the following variables:

-   G
-   GRIT
-   Esfuerzo
-   Preocupacion

Correlation Analisis.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nf'>scatterplot_significant_correlations</span><span class='o'>(</span><span class='nv'>cormatrixrows</span>, <span class='nv'>cormatrixrcols</span>, sign<span class='o'>=</span><span class='m'>0.05</span><span class='o'>)</span></span>
<span><span class='c'>#&gt; [1] "Tenaci Esfuer _ r = 0.31817045 _ pval = 0"</span></span>
<span><span class='c'>#&gt; [1] "fG Preocu _ r = -0.0859733 _ pval = 0.003"</span></span>
<span><span class='c'>#&gt; [1] "Tenaci Preocu _ r = 0.18849035 _ pval = 0"</span></span>
<span></span><span><span class='c'>#&gt; `geom_smooth()` using formula = 'y ~ x'</span></span>
<span><span class='c'>#&gt; `geom_smooth()` using formula = 'y ~ x'</span></span>
<span><span class='c'>#&gt; `geom_smooth()` using formula = 'y ~ x'</span></span>
<span></span></code></pre>
<img src="figs/fG_ten_esf_preo_correlations-1.png" width="700px" style="display: block; margin: auto;" /><img src="figs/fG_ten_esf_preo_correlations-2.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [[1]]</span></span>
<span></span></code></pre>
<img src="figs/fG_ten_esf_preo_correlations-3.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [[2]]</span></span>
<span><span class='c'>#&gt; [[2]][[1]]</span></span>
<span></span><span><span class='c'>#&gt; `geom_smooth()` using formula = 'y ~ x'</span></span>
<span></span></code></pre>
<img src="figs/fG_ten_esf_preo_correlations-4.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [[2]][[2]]</span></span>
<span></span><span><span class='c'>#&gt; `geom_smooth()` using formula = 'y ~ x'</span></span>
<span></span></code></pre>
<img src="figs/fG_ten_esf_preo_correlations-5.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [[2]][[3]]</span></span>
<span></span><span><span class='c'>#&gt; `geom_smooth()` using formula = 'y ~ x'</span></span>
<span></span></code></pre>
<img src="figs/fG_ten_esf_preo_correlations-6.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span></span>
<span></span>
<span></span></code></pre>

</div>

