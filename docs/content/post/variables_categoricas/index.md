---
title: 'ANOVAs Variables Categoricas'
subtitle: 'Analisis por Grupos de Percentiles y por Escuela, Grupo, Sexo, Dx etc.'
author: 'Ma Fernanda Serrano'
date: 2022-09-06
tags: ['anova', 'categorical', 'variables categoricas', 'Fer Serrano', 'Torrance']
output: hugodown::md_document
rmd_hash: 17bc3e714d5d7a4d

---

Significant differences among groups
====================================

Divided by percentiles
----------------------

-   Two groups above and below-equal median (75 percentile)
-   Three groups with 66 and 86 percentiles

### Percentile-groups Differences in Raven

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== NO SIGNIFICANT RESULTS ==="</span></span></code></pre>

</div>

### Percentile-groups Differences in Subdimensions

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; $attfoc</span></span>
<span><span class='c'>#&gt; $attfoc$three_groups</span></span>
<span><span class='c'>#&gt; .xg2mid66_85 </span></span>
<span><span class='c'>#&gt;   0.02424647 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $attcon</span></span>
<span><span class='c'>#&gt; $attcon$three_groups</span></span>
<span><span class='c'>#&gt; .xg2mid66_85 </span></span>
<span><span class='c'>#&gt;   0.02412713 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $fea</span></span>
<span><span class='c'>#&gt; $fea$three_groups</span></span>
<span><span class='c'>#&gt; .xg2mid66_85 </span></span>
<span><span class='c'>#&gt;   0.04849844 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $inh</span></span>
<span><span class='c'>#&gt; $inh$median_grp</span></span>
<span><span class='c'>#&gt; [1] 0.03230483</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $lip</span></span>
<span><span class='c'>#&gt; $lip$three_groups</span></span>
<span><span class='c'>#&gt; .xg2mid66_85 </span></span>
<span><span class='c'>#&gt;   0.01570031 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [1] "attfoc three_groups"</span></span>
<span><span class='c'>#&gt; [1] "attcon three_groups"</span></span>
<span><span class='c'>#&gt; [1] "fea three_groups"</span></span>
<span><span class='c'>#&gt; [1] "inh median_grp"</span></span>
<span><span class='c'>#&gt; [1] "lip three_groups"</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span></code></pre>
<img src="figs/subdims_percgroups_multi_lm_graph-1.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF attfoc IN three_groups GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 3 × 4</span></span></span>
<span><span class='c'>#&gt;   three_groups  mean    sd   num</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>        <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> g1bbibelow65  4.86 0.583    10</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> g2mid66_85    4.33 0.314    15</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> g3above86     4.56 0.758     9</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span></code></pre>
<img src="figs/subdims_percgroups_multi_lm_graph-2.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF attcon IN three_groups GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 3 × 4</span></span></span>
<span><span class='c'>#&gt;   three_groups  mean    sd   num</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>        <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> g1bbibelow65  4.78 0.557    10</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> g2mid66_85    4.31 0.342    15</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> g3above86     4.44 0.577     9</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span></code></pre>
<img src="figs/subdims_percgroups_multi_lm_graph-3.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF fea IN three_groups GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 3 × 4</span></span></span>
<span><span class='c'>#&gt;   three_groups  mean    sd   num</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>        <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> g1bbibelow65  4.03 0.632    10</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> g2mid66_85    4.54 0.563    15</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> g3above86     4.38 0.629     9</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span></code></pre>
<img src="figs/subdims_percgroups_multi_lm_graph-4.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF inh IN median_grp GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 2 × 4</span></span></span>
<span><span class='c'>#&gt;   median_grp  mean    sd   num</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>      <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> g1below75   4.95 0.656    17</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> g2above75   4.52 0.438    17</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span></code></pre>
<img src="figs/subdims_percgroups_multi_lm_graph-5.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF lip IN three_groups GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 3 × 4</span></span></span>
<span><span class='c'>#&gt;   three_groups  mean    sd   num</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>        <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> g1bbibelow65  5.52 0.437    10</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> g2mid66_85    5.09 0.432    15</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> g3above86     5.41 0.325     9</span></span></code></pre>

</div>

### Percentile-groups Differences in the three broad dimensions

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; $CE</span></span>
<span><span class='c'>#&gt; $CE$three_groups</span></span>
<span><span class='c'>#&gt; .xg2mid66_85 </span></span>
<span><span class='c'>#&gt;  0.009695796 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [1] "CE three_groups"</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span></code></pre>
<img src="figs/dims_percgroups_multi_lm_graph-1.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF CE IN three_groups GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 3 × 4</span></span></span>
<span><span class='c'>#&gt;   three_groups  mean    sd   num</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>        <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> g1bbibelow65  5.01 0.436    10</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> g2mid66_85    4.64 0.242    15</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> g3above86     4.71 0.319     9</span></span></code></pre>

</div>

Results from Analysis of Differences Among Groups
=================================================

-   Categorical Variables are used as predictors
-   Torrance Numeric Variables are used as responses

Torrance Percentiles
--------------------

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== NO SIGNIFICANT RESULTS ==="</span></span></code></pre>

</div>

Torrance Partials
-----------------

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; $elab1</span></span>
<span><span class='c'>#&gt; $elab1$grupo</span></span>
<span><span class='c'>#&gt;        .x4 </span></span>
<span><span class='c'>#&gt; 0.04169034 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $orig2</span></span>
<span><span class='c'>#&gt; $orig2$rango</span></span>
<span><span class='c'>#&gt;        .x4 </span></span>
<span><span class='c'>#&gt; 0.02103123 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $flui2</span></span>
<span><span class='c'>#&gt; $flui2$rango</span></span>
<span><span class='c'>#&gt;         .x4 </span></span>
<span><span class='c'>#&gt; 0.009731103 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $orig3</span></span>
<span><span class='c'>#&gt; $orig3$grupo</span></span>
<span><span class='c'>#&gt;        .x4 </span></span>
<span><span class='c'>#&gt; 0.01866077 </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; [1] "elab1 grupo"</span></span>
<span><span class='c'>#&gt; [1] "orig2 rango"</span></span>
<span><span class='c'>#&gt; [1] "flui2 rango"</span></span>
<span><span class='c'>#&gt; [1] "orig3 grupo"</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span></code></pre>
<img src="figs/partials_torrance_multi_lm_graph-1.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF elab1 IN grupo GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 4 × 4</span></span></span>
<span><span class='c'>#&gt;   grupo  mean    sd   num</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> 1      1.77 1.74     13</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> 2      1.33 1.53      3</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> 3      2.44 1.13      9</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>4</span> 4      3.4  0.894     5</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span></code></pre>
<img src="figs/partials_torrance_multi_lm_graph-2.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF orig2 IN rango GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 4 × 4</span></span></span>
<span><span class='c'>#&gt;   rango  mean    sd   num</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> 2      35.5  8.61    11</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> 3      38.6  8.48    13</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> 4      23   13.2      5</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>4</span> 5      40   <span style='color: #BB0000;'>NA</span>        1</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span></code></pre>
<img src="figs/partials_torrance_multi_lm_graph-3.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF flui2 IN rango GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 4 × 4</span></span></span>
<span><span class='c'>#&gt;   rango  mean    sd   num</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> 2      9     1.41    11</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> 3      9.08  1.38    13</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> 4      6.6   2.41     5</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>4</span> 5     10    <span style='color: #BB0000;'>NA</span>        1</span></span>
<span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span></code></pre>
<img src="figs/partials_torrance_multi_lm_graph-4.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF orig3 IN grupo GROUPS ==="</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 4 × 4</span></span></span>
<span><span class='c'>#&gt;   grupo  mean    sd   num</span></span>
<span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>1</span> 1      27.2  12.9    13</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>2</span> 2      33.7  10.6     3</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>3</span> 3      31.9  16.3     9</span></span>
<span><span class='c'>#&gt; <span style='color: #555555;'>4</span> 4      47.2  20.2     5</span></span></code></pre>

</div>

Torrance Totals (Aggregated Variables)
--------------------------------------

-   Only marginally significant, p \< 0.06, differences
    <div class="highlight">

    <pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; $originalidad</span></span>
    <span><span class='c'>#&gt; $originalidad$escuela</span></span>
    <span><span class='c'>#&gt; [1] 0.05726995</span></span>
    <span><span class='c'>#&gt; </span></span>
    <span><span class='c'>#&gt; $originalidad$grupo</span></span>
    <span><span class='c'>#&gt;        .x2        .x4 </span></span>
    <span><span class='c'>#&gt; 0.03039469 0.03787579 </span></span>
    <span><span class='c'>#&gt; </span></span>
    <span><span class='c'>#&gt; $originalidad$edad</span></span>
    <span><span class='c'>#&gt;        .x8 </span></span>
    <span><span class='c'>#&gt; 0.02026583 </span></span>
    <span><span class='c'>#&gt; </span></span>
    <span><span class='c'>#&gt; </span></span>
    <span><span class='c'>#&gt; $fluidez</span></span>
    <span><span class='c'>#&gt; $fluidez$grupo</span></span>
    <span><span class='c'>#&gt;        .x4 </span></span>
    <span><span class='c'>#&gt; 0.03174777 </span></span>
    <span><span class='c'>#&gt; </span></span>
    <span><span class='c'>#&gt; $fluidez$edad</span></span>
    <span><span class='c'>#&gt;        .x8 </span></span>
    <span><span class='c'>#&gt; 0.02982713 </span></span>
    <span><span class='c'>#&gt; </span></span>
    <span><span class='c'>#&gt; </span></span>
    <span><span class='c'>#&gt; $flexibilidad</span></span>
    <span><span class='c'>#&gt; $flexibilidad$edad</span></span>
    <span><span class='c'>#&gt;       .x8 </span></span>
    <span><span class='c'>#&gt; 0.0519162 </span></span>
    <span><span class='c'>#&gt; </span></span>
    <span><span class='c'>#&gt; </span></span>
    <span><span class='c'>#&gt; $creatividad</span></span>
    <span><span class='c'>#&gt; $creatividad$edad</span></span>
    <span><span class='c'>#&gt;       .x8 </span></span>
    <span><span class='c'>#&gt; 0.0246007 </span></span>
    <span><span class='c'>#&gt; </span></span>
    <span><span class='c'>#&gt; </span></span>
    <span><span class='c'>#&gt; [1] "originalidad escuela"</span></span>
    <span><span class='c'>#&gt; [1] "originalidad grupo"</span></span>
    <span><span class='c'>#&gt; [1] "originalidad edad"</span></span>
    <span><span class='c'>#&gt; [1] "fluidez grupo"</span></span>
    <span><span class='c'>#&gt; [1] "fluidez edad"</span></span>
    <span><span class='c'>#&gt; [1] "flexibilidad edad"</span></span>
    <span><span class='c'>#&gt; [1] "creatividad edad"</span></span>
    <span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span></code></pre>
    <img src="figs/totals_torrance_multi_lm_graph-1.png" width="700px" style="display: block; margin: auto;" />
    <pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF originalidad IN escuela GROUPS ==="</span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 2 × 4</span></span></span>
    <span><span class='c'>#&gt;   escuela  mean    sd   num</span></span>
    <span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span>   <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'>1</span> 1        66.8  14.5    13</span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'>2</span> 2        83.8  28.6    20</span></span>
    <span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span></code></pre>
    <img src="figs/totals_torrance_multi_lm_graph-2.png" width="700px" style="display: block; margin: auto;" />
    <pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF originalidad IN grupo GROUPS ==="</span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 4 × 4</span></span></span>
    <span><span class='c'>#&gt;   grupo  mean    sd   num</span></span>
    <span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'>1</span> 1      66.8  14.5    13</span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'>2</span> 2     101    29.3     3</span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'>3</span> 3      74.7  26.1    11</span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'>4</span> 4      92    31.2     6</span></span>
    <span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span></code></pre>
    <img src="figs/totals_torrance_multi_lm_graph-3.png" width="700px" style="display: block; margin: auto;" />
    <pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF originalidad IN edad GROUPS ==="</span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 3 × 4</span></span></span>
    <span><span class='c'>#&gt;   edad   mean    sd   num</span></span>
    <span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'>1</span> 6      73.9  26.6    16</span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'>2</span> 7      76.9  20.6    16</span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'>3</span> 8     134    <span style='color: #BB0000;'>NA</span>       1</span></span>
    <span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span></code></pre>
    <img src="figs/totals_torrance_multi_lm_graph-4.png" width="700px" style="display: block; margin: auto;" />
    <pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF fluidez IN grupo GROUPS ==="</span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 4 × 4</span></span></span>
    <span><span class='c'>#&gt;   grupo  mean    sd   num</span></span>
    <span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'>1</span> 1      15.5  2.67    13</span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'>2</span> 2      21    6.24     3</span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'>3</span> 3      16.3  4.82    11</span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'>4</span> 4      21    7.77     6</span></span>
    <span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span></code></pre>
    <img src="figs/totals_torrance_multi_lm_graph-5.png" width="700px" style="display: block; margin: auto;" />
    <pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF fluidez IN edad GROUPS ==="</span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 3 × 4</span></span></span>
    <span><span class='c'>#&gt;   edad   mean    sd   num</span></span>
    <span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'>1</span> 6      16.3  4.76    16</span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'>2</span> 7      17.6  5.18    16</span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'>3</span> 8      28   <span style='color: #BB0000;'>NA</span>        1</span></span>
    <span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span></code></pre>
    <img src="figs/totals_torrance_multi_lm_graph-6.png" width="700px" style="display: block; margin: auto;" />
    <pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF flexibilidad IN edad GROUPS ==="</span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 3 × 4</span></span></span>
    <span><span class='c'>#&gt;   edad   mean    sd   num</span></span>
    <span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'>1</span> 6      13.6  3.38    16</span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'>2</span> 7      13.2  3.68    16</span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'>3</span> 8      21   <span style='color: #BB0000;'>NA</span>        1</span></span>
    <span><span class='c'>#&gt; [1] "=== GROUP DIFFERENCES GRAPH ==="</span></span></code></pre>
    <img src="figs/totals_torrance_multi_lm_graph-7.png" width="700px" style="display: block; margin: auto;" />
    <pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "=== DESCRIPTIVE STATS OF creatividad IN edad GROUPS ==="</span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'># A tibble: 3 × 4</span></span></span>
    <span><span class='c'>#&gt;   edad   mean    sd   num</span></span>
    <span><span class='c'>#&gt;   <span style='color: #555555; font-style: italic;'>&lt;fct&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;dbl&gt;</span> <span style='color: #555555; font-style: italic;'>&lt;int&gt;</span></span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'>1</span> 6      116.  33.6    16</span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'>2</span> 7      124.  34.2    16</span></span>
    <span><span class='c'>#&gt; <span style='color: #555555;'>3</span> 8      199   <span style='color: #BB0000;'>NA</span>       1</span></span></code></pre>

    </div>

