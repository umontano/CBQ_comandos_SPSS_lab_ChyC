---
title: 'Totales Torrance'
subtitle: 'Correlaciones por Pares'
author: 'Ma Fernanda Serrano'
date: 2022-09-06
tags: ['totales', 'diagrama de columnas', 'corelaciones por pares', 'Fer Serrano', 'Torrance']
toc: TRUE
toc_depth: 3
output: hugodown::md_document
rmd_hash: b803e4d94e1eef66

---

TOTALS IN TORRANCE
==================

ANALYSES BY PERCENTILE
----------------------

Notes:
------

-   Check "elaboracion" variable
-   Three children above 30

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "perc_elaboracion CE _ r = -0.40399564 _ pval = 0.02"</span></span>
<span><span class='c'>#&gt; [1] "perc_elaboracion dis _ r = 0.58163087 _ pval = 0"</span></span>
<span><span class='c'>#&gt; [1] "perc_elaboracion inh _ r = -0.38774219 _ pval = 0.026"</span></span>
<span><span class='c'>#&gt;                           CE AN SU act fru app attfoc attshi attcon       dis</span></span>
<span><span class='c'>#&gt; perc_originalidad         NA NA NA  NA  NA  NA     NA     NA     NA        NA</span></span>
<span><span class='c'>#&gt; perc_elaboracion  -0.4039956 NA NA  NA  NA  NA     NA     NA     NA 0.5816309</span></span>
<span><span class='c'>#&gt; perc_fluidez              NA NA NA  NA  NA  NA     NA     NA     NA        NA</span></span>
<span><span class='c'>#&gt; perc_flexibilidad         NA NA NA  NA  NA  NA     NA     NA     NA        NA</span></span>
<span><span class='c'>#&gt; perc_creatividad          NA NA NA  NA  NA  NA     NA     NA     NA        NA</span></span>
<span><span class='c'>#&gt;                   sth fea hip imp        inh lip per sad shy smi escuela grupo</span></span>
<span><span class='c'>#&gt; perc_originalidad  NA  NA  NA  NA         NA  NA  NA  NA  NA  NA      NA    NA</span></span>
<span><span class='c'>#&gt; perc_elaboracion   NA  NA  NA  NA -0.3877422  NA  NA  NA  NA  NA      NA    NA</span></span>
<span><span class='c'>#&gt; perc_fluidez       NA  NA  NA  NA         NA  NA  NA  NA  NA  NA      NA    NA</span></span>
<span><span class='c'>#&gt; perc_flexibilidad  NA  NA  NA  NA         NA  NA  NA  NA  NA  NA      NA    NA</span></span>
<span><span class='c'>#&gt; perc_creatividad   NA  NA  NA  NA         NA  NA  NA  NA  NA  NA      NA    NA</span></span>
<span><span class='c'>#&gt;                   edad sexo percentil rango columna_a columna_ab columna_b</span></span>
<span><span class='c'>#&gt; perc_originalidad   NA   NA        NA    NA        NA         NA        NA</span></span>
<span><span class='c'>#&gt; perc_elaboracion    NA   NA        NA    NA        NA         NA        NA</span></span>
<span><span class='c'>#&gt; perc_fluidez        NA   NA        NA    NA        NA         NA        NA</span></span>
<span><span class='c'>#&gt; perc_flexibilidad   NA   NA        NA    NA        NA         NA        NA</span></span>
<span><span class='c'>#&gt; perc_creatividad    NA   NA        NA    NA        NA         NA        NA</span></span>
<span><span class='c'>#&gt;                   puntaje</span></span>
<span><span class='c'>#&gt; perc_originalidad      NA</span></span>
<span><span class='c'>#&gt; perc_elaboracion       NA</span></span>
<span><span class='c'>#&gt; perc_fluidez           NA</span></span>
<span><span class='c'>#&gt; perc_flexibilidad      NA</span></span>
<span><span class='c'>#&gt; perc_creatividad       NA</span></span></code></pre>
<img src="figs/percentil_torrance_paired_correlations_graph-1.png" width="700px" style="display: block; margin: auto;" /><img src="figs/percentil_torrance_paired_correlations_graph-2.png" width="700px" style="display: block; margin: auto;" /><img src="figs/percentil_torrance_paired_correlations_graph-3.png" width="700px" style="display: block; margin: auto;" />

</div>

### Grouped by Temperament, Raven and Other Variables

<div class="highlight">

<img src="figs/percentil_other_variables_paired_correlations_graph-1.png" width="700px" style="display: block; margin: auto;" />

</div>

<div class="highlight">

</div>

<div class="highlight">

</div>

Correlation Matrix
==================

Notas
-----

-   Only Marginaly significant, p \< 0.1, correlations \# P-values Matrix All p-values
    <div class="highlight">

    <pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "creatividad CE _ r = -0.30428073 _ pval = 0.076"</span></span>
    <span><span class='c'>#&gt; [1] "flexibilidad attshi _ r = -0.36185342 _ pval = 0.033"</span></span>
    <span><span class='c'>#&gt; [1] "flexibilidad attcon _ r = -0.35346783 _ pval = 0.037"</span></span>
    <span><span class='c'>#&gt; [1] "creatividad attcon _ r = -0.30249098 _ pval = 0.077"</span></span>
    <span><span class='c'>#&gt; [1] "elaboracion dis _ r = 0.34945709 _ pval = 0.04"</span></span>
    <span><span class='c'>#&gt; [1] "elaboracion inh _ r = -0.30692221 _ pval = 0.073"</span></span>
    <span><span class='c'>#&gt;                      CE AN SU act fru app attfoc     attshi     attcon</span></span>
    <span><span class='c'>#&gt; originalidad         NA NA NA  NA  NA  NA     NA         NA         NA</span></span>
    <span><span class='c'>#&gt; fluidez              NA NA NA  NA  NA  NA     NA         NA         NA</span></span>
    <span><span class='c'>#&gt; elaboracion          NA NA NA  NA  NA  NA     NA         NA         NA</span></span>
    <span><span class='c'>#&gt; flexibilidad         NA NA NA  NA  NA  NA     NA -0.3618534 -0.3534678</span></span>
    <span><span class='c'>#&gt; creatividad  -0.3042807 NA NA  NA  NA  NA     NA         NA -0.3024910</span></span>
    <span><span class='c'>#&gt;                    dis sth fea hip imp        inh lip per sad shy smi escuela</span></span>
    <span><span class='c'>#&gt; originalidad        NA  NA  NA  NA  NA         NA  NA  NA  NA  NA  NA      NA</span></span>
    <span><span class='c'>#&gt; fluidez             NA  NA  NA  NA  NA         NA  NA  NA  NA  NA  NA      NA</span></span>
    <span><span class='c'>#&gt; elaboracion  0.3494571  NA  NA  NA  NA -0.3069222  NA  NA  NA  NA  NA      NA</span></span>
    <span><span class='c'>#&gt; flexibilidad        NA  NA  NA  NA  NA         NA  NA  NA  NA  NA  NA      NA</span></span>
    <span><span class='c'>#&gt; creatividad         NA  NA  NA  NA  NA         NA  NA  NA  NA  NA  NA      NA</span></span>
    <span><span class='c'>#&gt;              grupo edad sexo percentil rango columna_a columna_ab columna_b</span></span>
    <span><span class='c'>#&gt; originalidad    NA   NA   NA        NA    NA        NA         NA        NA</span></span>
    <span><span class='c'>#&gt; fluidez         NA   NA   NA        NA    NA        NA         NA        NA</span></span>
    <span><span class='c'>#&gt; elaboracion     NA   NA   NA        NA    NA        NA         NA        NA</span></span>
    <span><span class='c'>#&gt; flexibilidad    NA   NA   NA        NA    NA        NA         NA        NA</span></span>
    <span><span class='c'>#&gt; creatividad     NA   NA   NA        NA    NA        NA         NA        NA</span></span>
    <span><span class='c'>#&gt;              puntaje</span></span>
    <span><span class='c'>#&gt; originalidad      NA</span></span>
    <span><span class='c'>#&gt; fluidez           NA</span></span>
    <span><span class='c'>#&gt; elaboracion       NA</span></span>
    <span><span class='c'>#&gt; flexibilidad      NA</span></span>
    <span><span class='c'>#&gt; creatividad       NA</span></span></code></pre>
    <img src="figs/unnamed-chunk-2-1.png" width="700px" style="display: block; margin: auto;" /><img src="figs/unnamed-chunk-2-2.png" width="700px" style="display: block; margin: auto;" />

    </div>

<div class="highlight">

</div>

<div class="highlight">

</div>

GRAPHICS PAIRED CORRELATIONS
----------------------------

### Grouped by Totals in Torrance

<div class="highlight">

<img src="figs/totals_torrance_paired_correlations_graph-1.png" width="700px" style="display: block; margin: auto;" />

</div>

### Grouped by Temperament, Raven and Other Variables

<div class="highlight">

<img src="figs/other_variables_paired_correlations_graph-1.png" width="700px" style="display: block; margin: auto;" />

</div>

