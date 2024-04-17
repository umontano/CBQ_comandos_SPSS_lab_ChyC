---
title: " grit, Esfuerzo,  Preocupacion"
author: "Ma. Fernanda Serrano"
date: 2024-04-10
tags: ["descriptivo", "altas capacidades", "numeric variables", "Fer Serrano", "tenacidad", "perfeccionismo"]

---

PROFILE - LEVELS
================

Results profiles and levels. \#\# table by schoo, raw version

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [[1]]</span></span>
<span><span class='c'>#&gt; [[1]][[1]]</span></span>
<span><span class='c'>#&gt; [[1]][[1]][[1]]</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 3 × 5</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># Groups:   escuela, grado [3]</span></span></span>
<span><span class='c'>#&gt;   escuela grado Medio  Alto  Bajo</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> pidahi  1a     71.4 28.6  <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> pidahi  2     100   <span style='color: #BB0000;'>NA</span>    <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> pidahi  2a     88.2  5.88  5.88</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [[1]][[1]][[2]]</span></span></code></pre>
<img src="figs/tables_school_grade-1.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [[1]][[2]]</span></span>
<span><span class='c'>#&gt; [[1]][[2]][[1]]</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 3 × 6</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># Groups:   escuela, grado [3]</span></span></span>
<span><span class='c'>#&gt;   escuela grado  Bajo  Alto Superior Medio</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span>    <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> pidahi  1a     14.3  28.6     57.1 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> pidahi  2      <span style='color: #BB0000;'>NA</span>    <span style='color: #BB0000;'>NA</span>      100   <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> pidahi  2a     <span style='color: #BB0000;'>NA</span>    64.7     29.4  5.88</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [[1]][[2]][[2]]</span></span></code></pre>
<img src="figs/tables_school_grade-2.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [[1]][[3]]</span></span>
<span><span class='c'>#&gt; [[1]][[3]][[1]]</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 3 × 6</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># Groups:   escuela, grado [3]</span></span></span>
<span><span class='c'>#&gt;   escuela grado  Bajo Medio  Alto Superior</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span>    <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> pidahi  1a     14.3  57.1  14.3     14.3</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> pidahi  2     100    <span style='color: #BB0000;'>NA</span>    <span style='color: #BB0000;'>NA</span>       <span style='color: #BB0000;'>NA</span>  </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> pidahi  2a     11.8  64.7  23.5     <span style='color: #BB0000;'>NA</span>  </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [[1]][[3]][[2]]</span></span></code></pre>
<img src="figs/tables_school_grade-3.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [[2]]</span></span>
<span><span class='c'>#&gt; [[2]][[1]]</span></span>
<span><span class='c'>#&gt; [[2]][[1]][[1]]</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 4 × 5</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># Groups:   escuela, grado [4]</span></span></span>
<span><span class='c'>#&gt;   escuela      grado  Bajo Medio  Alto</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>        <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> primcongreso 6a    33.3   66.7 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> primcongreso 6b     6.25  87.5  6.25</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> primcongreso 6c    42.1   57.9 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>4</span> primcongreso 6d     8     80   12   </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [[2]][[1]][[2]]</span></span></code></pre>
<img src="figs/tables_school_grade-4.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [[2]][[2]]</span></span>
<span><span class='c'>#&gt; [[2]][[2]][[1]]</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 4 × 6</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># Groups:   escuela, grado [4]</span></span></span>
<span><span class='c'>#&gt;   escuela      grado Medio  Alto Superior  Bajo</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>        <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span>    <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> primcongreso 6a     23.8  57.1     19.0 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> primcongreso 6b     12.5  50       37.5 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> primcongreso 6c     15.8  42.1     36.8  5.26</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>4</span> primcongreso 6d      8    64       24    4   </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [[2]][[2]][[2]]</span></span></code></pre>
<img src="figs/tables_school_grade-5.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [[2]][[3]]</span></span>
<span><span class='c'>#&gt; [[2]][[3]][[1]]</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 4 × 6</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># Groups:   escuela, grado [4]</span></span></span>
<span><span class='c'>#&gt;   escuela      grado  Bajo Medio  Alto Superior</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>        <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span>    <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> primcongreso 6a    14.3   66.7  19.0    <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> primcongreso 6b     6.25  75    12.5     6.25</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> primcongreso 6c    15.8   42.1  31.6    10.5 </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>4</span> primcongreso 6d     8     44    40       8   </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [[2]][[3]][[2]]</span></span></code></pre>
<img src="figs/tables_school_grade-6.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [[3]]</span></span>
<span><span class='c'>#&gt; [[3]][[1]]</span></span>
<span><span class='c'>#&gt; [[3]][[1]][[1]]</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 12 × 5</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># Groups:   escuela, grado [12]</span></span></span>
<span><span class='c'>#&gt;    escuela    grado  Bajo Medio  Alto</span></span>
<span><span class='c'>#&gt;    <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>      <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 1</span> secaugusto 1a    12.5   70.8 16.7 </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 2</span> secaugusto 1b    17.4   78.3  4.35</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 3</span> secaugusto 1c    11.5   65.4 23.1 </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 4</span> secaugusto 1d    26.1   60.9 13.0 </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 5</span> secaugusto 2a    <span style='color: #BB0000;'>NA</span>     81.0 19.0 </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 6</span> secaugusto 2b    25     70    5   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 7</span> secaugusto 2c     8.70  82.6  8.70</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 8</span> secaugusto 2d    15     70   15   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 9</span> secaugusto 3a    10.5   84.2  5.26</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>10</span> secaugusto 3b     6.25  75   18.8 </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>11</span> secaugusto 3c    <span style='color: #BB0000;'>NA</span>     86.7 13.3 </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>12</span> secaugusto 3d    11.8   76.5 11.8 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [[3]][[1]][[2]]</span></span></code></pre>
<img src="figs/tables_school_grade-7.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [[3]][[2]]</span></span>
<span><span class='c'>#&gt; [[3]][[2]][[1]]</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 12 × 6</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># Groups:   escuela, grado [12]</span></span></span>
<span><span class='c'>#&gt;    escuela    grado Medio  Alto Superior  Bajo</span></span>
<span><span class='c'>#&gt;    <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>      <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span>    <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 1</span> secaugusto 1a     8.33  45.8     45.8 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 2</span> secaugusto 1b    13.0   73.9     13.0 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 3</span> secaugusto 1c     7.69  50       34.6  7.69</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 4</span> secaugusto 1d    17.4   52.2     30.4 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 5</span> secaugusto 2a    <span style='color: #BB0000;'>NA</span>     42.9     57.1 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 6</span> secaugusto 2b    25     55       20   <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 7</span> secaugusto 2c    17.4   60.9     21.7 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 8</span> secaugusto 2d    20     60       20   <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 9</span> secaugusto 3a    10.5   68.4     15.8  5.26</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>10</span> secaugusto 3b    <span style='color: #BB0000;'>NA</span>     62.5     37.5 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>11</span> secaugusto 3c     6.67  73.3     20   <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>12</span> secaugusto 3d    11.8   52.9     35.3 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [[3]][[2]][[2]]</span></span></code></pre>
<img src="figs/tables_school_grade-8.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [[3]][[3]]</span></span>
<span><span class='c'>#&gt; [[3]][[3]][[1]]</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 12 × 6</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># Groups:   escuela, grado [12]</span></span></span>
<span><span class='c'>#&gt;    escuela    grado  Bajo Medio  Alto Superior</span></span>
<span><span class='c'>#&gt;    <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>      <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span>    <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 1</span> secaugusto 1a     4.17  50    37.5     8.33</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 2</span> secaugusto 1b    <span style='color: #BB0000;'>NA</span>     60.9  30.4     8.70</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 3</span> secaugusto 1c     3.85  57.7  30.8     7.69</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 4</span> secaugusto 1d    13.0   60.9  26.1    <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 5</span> secaugusto 2a     4.76  42.9  42.9     9.52</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 6</span> secaugusto 2b    10     75    15      <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 7</span> secaugusto 2c     8.70  73.9  17.4    <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 8</span> secaugusto 2d     5     55    40      <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 9</span> secaugusto 3a    10.5   57.9  15.8    15.8 </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>10</span> secaugusto 3b    12.5   37.5  43.8     6.25</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>11</span> secaugusto 3c     6.67  53.3  33.3     6.67</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>12</span> secaugusto 3d     5.88  47.1  47.1    <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [[3]][[3]][[2]]</span></span></code></pre>
<img src="figs/tables_school_grade-9.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span></span>
<span></span>
<span></span></code></pre>

</div>

NUMERIC RESULTS
===============

MEANS AND LEVELS EMPF AND GRIT
------------------------------

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "==GRIT SD==:"</span></span><span><span class='c'>#&gt;   grit_score esfuerzo_score preocupacion_score</span></span>
<span><span class='c'>#&gt; 1    3.28125             51                 63</span></span>
<span><span class='c'>#&gt; 2    2.65625             44                 46</span></span>
<span><span class='c'>#&gt; 3    3.59375             52                 52</span></span>
<span><span class='c'>#&gt; 4    3.28125             40                 61</span></span>
<span><span class='c'>#&gt; 5    3.12500             45                 62</span></span>
<span><span class='c'>#&gt; 6    3.12500             45                 44</span></span><span><span class='c'>#&gt;   grit_level esfuerzo_level preocupacion_level</span></span>
<span><span class='c'>#&gt; 1      Medio       Superior              Medio</span></span>
<span><span class='c'>#&gt; 2      Medio           Alto              Medio</span></span>
<span><span class='c'>#&gt; 3      Medio       Superior              Medio</span></span>
<span><span class='c'>#&gt; 4      Medio           Alto              Medio</span></span>
<span><span class='c'>#&gt; 5      Medio           Alto              Medio</span></span>
<span><span class='c'>#&gt; 6      Medio           Alto              Medio</span></span></code></pre>

</div>

STACKED BARS FOR LEVELS OF EMPF AND GRIT
----------------------------------------

<div class="highlight">

<img src="figs/dodge-1.png" width="700px" style="display: block; margin: auto;" /><img src="figs/dodge-2.png" width="700px" style="display: block; margin: auto;" /><img src="figs/dodge-3.png" width="700px" style="display: block; margin: auto;" />

</div>

GRIT, ESFUERZO AND PREOCUPACION, PROPORTION VERSION.
----------------------------------------------------

<div class="highlight">

<img src="figs/proportions-1.png" width="700px" style="display: block; margin: auto;" /><img src="figs/proportions-2.png" width="700px" style="display: block; margin: auto;" /><img src="figs/proportions-3.png" width="700px" style="display: block; margin: auto;" />

</div>

BOXPLOTS GRIT
-------------

<div class="highlight">

<img src="figs/tenacidad_grit-1.png" width="700px" style="display: block; margin: auto;" />

</div>

BOXPLOTS EMPF
-------------

<div class="highlight">

<img src="figs/empf-1.png" width="700px" style="display: block; margin: auto;" />

</div>

<div class="highlight">

<img src="figs/unnamed-chunk-2-1.png" width="700px" style="display: block; margin: auto;" />

</div>

