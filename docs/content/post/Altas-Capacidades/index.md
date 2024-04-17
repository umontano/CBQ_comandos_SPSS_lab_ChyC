---
title: " grit, Esfuerzo,  Preocupacion"
author: "Ma. Fernanda Serrano"
date: 2024-04-10
tags: ["descriptivo", "altas capacidades", "numeric variables", "Fer Serrano", "tenacidad", "perfeccionismo"]

---

SCORE MEANS AND SD TABLES
=========================

These are the resulting tables containing the mean and sd for:

-   GRIT
-   Esfuerzo
-   Preocupacion

EXAMPLES OF HOW TO EXTRACT ITEMS FROM LISTS
-------------------------------------------

-   list\_by\_school\_levels\_percents\_tables\[\['secaugusto'\]\]\[\[3\]\]\[\['table'\]\]

-   list\_by\_school\_mean\_sd\_tables\[\['secaugusto'\]\]

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; $pidahi</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 3 × 4</span></span></span>
<span><span class='c'>#&gt;   grado grit_score_Prom esfuerzo_score_Prom preocupacion_score_Prom</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>           <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span>               <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span>                   <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> 1a               3.44                49.9                    63.9</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> 2                3.44                52                      36  </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> 2a               3.12                45.1                    56.1</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $primcongreso</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 4 × 4</span></span></span>
<span><span class='c'>#&gt;   grado grit_score_Prom esfuerzo_score_Prom preocupacion_score_Prom</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>           <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span>               <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span>                   <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> 6a               2.74                43.4                    57.9</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> 6b               2.97                46.4                    58.5</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> 6c               2.66                44.1                    60.9</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>4</span> 6d               3.22                46.4                    63.8</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $secaugusto</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 12 × 4</span></span></span>
<span><span class='c'>#&gt;    grado grit_score_Prom esfuerzo_score_Prom preocupacion_score_Prom</span></span>
<span><span class='c'>#&gt;    <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>           <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span>               <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span>                   <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 1</span> 1a               3.18                48.9                    66.7</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 2</span> 1b               3.04                45.7                    65.3</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 3</span> 1c               3.33                46.0                    63.2</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 4</span> 1d               2.89                46.1                    59.7</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 5</span> 2a               3.31                50.2                    66.3</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 6</span> 2b               2.91                43                      56.5</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 7</span> 2c               3.10                44.6                    59.4</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 8</span> 2d               3.03                44.6                    60.7</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 9</span> 3a               3.02                42.7                    61.6</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>10</span> 3b               3.35                50.3                    64.4</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>11</span> 3c               3.12                46.5                    64.5</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>12</span> 3d               3.12                48                      63.4</span></span></code></pre>

</div>

PROFILE LEVELS
==============

Results profiles and levels.

TABLES BY SCHOOLS. RAW VERSION
------------------------------

These are the tables containting the percentages of subjects under each level.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; $pidahi</span></span>
<span><span class='c'>#&gt; $pidahi[[1]]</span></span>
<span><span class='c'>#&gt; $pidahi[[1]]$table</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 3 × 4</span></span></span>
<span><span class='c'>#&gt;   grado Medio  Alto  Bajo</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> 1a     71.4 28.6  <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> 2     100   <span style='color: #BB0000;'>NA</span>    <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> 2a     88.2  5.88  5.88</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $pidahi[[1]]$graph</span></span></code></pre>
<img src="figs/tables_school_grade-1.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $pidahi[[2]]</span></span>
<span><span class='c'>#&gt; $pidahi[[2]]$table</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 3 × 5</span></span></span>
<span><span class='c'>#&gt;   grado  Bajo  Alto Superior Medio</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span>    <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> 1a     14.3  28.6     57.1 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> 2      <span style='color: #BB0000;'>NA</span>    <span style='color: #BB0000;'>NA</span>      100   <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> 2a     <span style='color: #BB0000;'>NA</span>    64.7     29.4  5.88</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $pidahi[[2]]$graph</span></span></code></pre>
<img src="figs/tables_school_grade-2.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $pidahi[[3]]</span></span>
<span><span class='c'>#&gt; $pidahi[[3]]$table</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 3 × 5</span></span></span>
<span><span class='c'>#&gt;   grado  Bajo Medio  Alto Superior</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span>    <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> 1a     14.3  57.1  14.3     14.3</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> 2     100    <span style='color: #BB0000;'>NA</span>    <span style='color: #BB0000;'>NA</span>       <span style='color: #BB0000;'>NA</span>  </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> 2a     11.8  64.7  23.5     <span style='color: #BB0000;'>NA</span>  </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $pidahi[[3]]$graph</span></span></code></pre>
<img src="figs/tables_school_grade-3.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $primcongreso</span></span>
<span><span class='c'>#&gt; $primcongreso[[1]]</span></span>
<span><span class='c'>#&gt; $primcongreso[[1]]$table</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 4 × 4</span></span></span>
<span><span class='c'>#&gt;   grado  Bajo Medio  Alto</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> 6a    33.3   66.7 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> 6b     6.25  87.5  6.25</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> 6c    42.1   57.9 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>4</span> 6d     8     80   12   </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $primcongreso[[1]]$graph</span></span></code></pre>
<img src="figs/tables_school_grade-4.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $primcongreso[[2]]</span></span>
<span><span class='c'>#&gt; $primcongreso[[2]]$table</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 4 × 5</span></span></span>
<span><span class='c'>#&gt;   grado Medio  Alto Superior  Bajo</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span>    <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> 6a     23.8  57.1     19.0 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> 6b     12.5  50       37.5 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> 6c     15.8  42.1     36.8  5.26</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>4</span> 6d      8    64       24    4   </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $primcongreso[[2]]$graph</span></span></code></pre>
<img src="figs/tables_school_grade-5.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $primcongreso[[3]]</span></span>
<span><span class='c'>#&gt; $primcongreso[[3]]$table</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 4 × 5</span></span></span>
<span><span class='c'>#&gt;   grado  Bajo Medio  Alto Superior</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span>    <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> 6a    14.3   66.7  19.0    <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> 6b     6.25  75    12.5     6.25</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> 6c    15.8   42.1  31.6    10.5 </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>4</span> 6d     8     44    40       8   </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $primcongreso[[3]]$graph</span></span></code></pre>
<img src="figs/tables_school_grade-6.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $secaugusto</span></span>
<span><span class='c'>#&gt; $secaugusto[[1]]</span></span>
<span><span class='c'>#&gt; $secaugusto[[1]]$table</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 12 × 4</span></span></span>
<span><span class='c'>#&gt;    grado  Bajo Medio  Alto</span></span>
<span><span class='c'>#&gt;    <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 1</span> 1a    12.5   70.8 16.7 </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 2</span> 1b    17.4   78.3  4.35</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 3</span> 1c    11.5   65.4 23.1 </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 4</span> 1d    26.1   60.9 13.0 </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 5</span> 2a    <span style='color: #BB0000;'>NA</span>     81.0 19.0 </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 6</span> 2b    25     70    5   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 7</span> 2c     8.70  82.6  8.70</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 8</span> 2d    15     70   15   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 9</span> 3a    10.5   84.2  5.26</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>10</span> 3b     6.25  75   18.8 </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>11</span> 3c    <span style='color: #BB0000;'>NA</span>     86.7 13.3 </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>12</span> 3d    11.8   76.5 11.8 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $secaugusto[[1]]$graph</span></span></code></pre>
<img src="figs/tables_school_grade-7.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $secaugusto[[2]]</span></span>
<span><span class='c'>#&gt; $secaugusto[[2]]$table</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 12 × 5</span></span></span>
<span><span class='c'>#&gt;    grado Medio  Alto Superior  Bajo</span></span>
<span><span class='c'>#&gt;    <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span>    <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 1</span> 1a     8.33  45.8     45.8 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 2</span> 1b    13.0   73.9     13.0 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 3</span> 1c     7.69  50       34.6  7.69</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 4</span> 1d    17.4   52.2     30.4 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 5</span> 2a    <span style='color: #BB0000;'>NA</span>     42.9     57.1 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 6</span> 2b    25     55       20   <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 7</span> 2c    17.4   60.9     21.7 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 8</span> 2d    20     60       20   <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 9</span> 3a    10.5   68.4     15.8  5.26</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>10</span> 3b    <span style='color: #BB0000;'>NA</span>     62.5     37.5 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>11</span> 3c     6.67  73.3     20   <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>12</span> 3d    11.8   52.9     35.3 <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $secaugusto[[2]]$graph</span></span></code></pre>
<img src="figs/tables_school_grade-8.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $secaugusto[[3]]</span></span>
<span><span class='c'>#&gt; $secaugusto[[3]]$table</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 12 × 5</span></span></span>
<span><span class='c'>#&gt;    grado  Bajo Medio  Alto Superior</span></span>
<span><span class='c'>#&gt;    <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span>    <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 1</span> 1a     4.17  50    37.5     8.33</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 2</span> 1b    <span style='color: #BB0000;'>NA</span>     60.9  30.4     8.70</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 3</span> 1c     3.85  57.7  30.8     7.69</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 4</span> 1d    13.0   60.9  26.1    <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 5</span> 2a     4.76  42.9  42.9     9.52</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 6</span> 2b    10     75    15      <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 7</span> 2c     8.70  73.9  17.4    <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 8</span> 2d     5     55    40      <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'> 9</span> 3a    10.5   57.9  15.8    15.8 </span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>10</span> 3b    12.5   37.5  43.8     6.25</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>11</span> 3c     6.67  53.3  33.3     6.67</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>12</span> 3d     5.88  47.1  47.1    <span style='color: #BB0000;'>NA</span>   </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $secaugusto[[3]]$graph</span></span></code></pre>
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

