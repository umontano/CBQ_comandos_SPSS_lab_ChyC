---
title: 'Correlaciones por Pares'
subtitle: 'Todas las Variables'
author: 'Ma Fernanda Serrano'
date: 2022-09-06
tags: ['diagramde de columnas', 'corelaciones por pares', 'Fer Serrano', 'Torrance']
output: hugodown::md_document
rmd_hash: 843a2955feb4aeeb

---

SCATTER PLOTS
=============

Correlation Matrix
==================

P-values Matrix
===============

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "flui2 SU"</span></span>
<span><span class='c'>#&gt; [1] "elab3 fru"</span></span>
<span><span class='c'>#&gt; [1] "flui2 app"</span></span>
<span><span class='c'>#&gt; [1] "orig3 attcon"</span></span>
<span><span class='c'>#&gt; [1] "elab3 dis"</span></span>
<span><span class='c'>#&gt; [1] "elab1 grupo"</span></span>
<span><span class='c'>#&gt; [1] "orig3 grupo"</span></span>
<span><span class='c'>#&gt;       CE AN        SU act       fru      app attfoc attshi     attcon       dis</span></span>
<span><span class='c'>#&gt; orig1 NA NA        NA  NA        NA       NA     NA     NA         NA        NA</span></span>
<span><span class='c'>#&gt; elab1 NA NA        NA  NA        NA       NA     NA     NA         NA        NA</span></span>
<span><span class='c'>#&gt; orig2 NA NA        NA  NA        NA       NA     NA     NA         NA        NA</span></span>
<span><span class='c'>#&gt; flui2 NA NA 0.4133396  NA        NA 0.382828     NA     NA         NA        NA</span></span>
<span><span class='c'>#&gt; elab2 NA NA        NA  NA        NA       NA     NA     NA         NA        NA</span></span>
<span><span class='c'>#&gt; flex2 NA NA        NA  NA        NA       NA     NA     NA         NA        NA</span></span>
<span><span class='c'>#&gt; orig3 NA NA        NA  NA        NA       NA     NA     NA -0.3645813        NA</span></span>
<span><span class='c'>#&gt; flui3 NA NA        NA  NA        NA       NA     NA     NA         NA        NA</span></span>
<span><span class='c'>#&gt; elab3 NA NA        NA  NA 0.4158596       NA     NA     NA         NA 0.4401565</span></span>
<span><span class='c'>#&gt; flex3 NA NA        NA  NA        NA       NA     NA     NA         NA        NA</span></span>
<span><span class='c'>#&gt;       sth fea hip imp inh lip per sad shy smi escuela     grupo edad sexo</span></span>
<span><span class='c'>#&gt; orig1  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA      NA        NA   NA   NA</span></span>
<span><span class='c'>#&gt; elab1  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA      NA 0.3792686   NA   NA</span></span>
<span><span class='c'>#&gt; orig2  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA      NA        NA   NA   NA</span></span>
<span><span class='c'>#&gt; flui2  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA      NA        NA   NA   NA</span></span>
<span><span class='c'>#&gt; elab2  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA      NA        NA   NA   NA</span></span>
<span><span class='c'>#&gt; flex2  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA      NA        NA   NA   NA</span></span>
<span><span class='c'>#&gt; orig3  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA      NA 0.3819533   NA   NA</span></span>
<span><span class='c'>#&gt; flui3  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA      NA        NA   NA   NA</span></span>
<span><span class='c'>#&gt; elab3  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA      NA        NA   NA   NA</span></span>
<span><span class='c'>#&gt; flex3  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA      NA        NA   NA   NA</span></span>
<span><span class='c'>#&gt;       percentil rango columna_a columna_ab columna_b puntaje</span></span>
<span><span class='c'>#&gt; orig1        NA    NA        NA         NA        NA      NA</span></span>
<span><span class='c'>#&gt; elab1        NA    NA        NA         NA        NA      NA</span></span>
<span><span class='c'>#&gt; orig2        NA    NA        NA         NA        NA      NA</span></span>
<span><span class='c'>#&gt; flui2        NA    NA        NA         NA        NA      NA</span></span>
<span><span class='c'>#&gt; elab2        NA    NA        NA         NA        NA      NA</span></span>
<span><span class='c'>#&gt; flex2        NA    NA        NA         NA        NA      NA</span></span>
<span><span class='c'>#&gt; orig3        NA    NA        NA         NA        NA      NA</span></span>
<span><span class='c'>#&gt; flui3        NA    NA        NA         NA        NA      NA</span></span>
<span><span class='c'>#&gt; elab3        NA    NA        NA         NA        NA      NA</span></span>
<span><span class='c'>#&gt; flex3        NA    NA        NA         NA        NA      NA</span></span></code></pre>
<img src="figs/unnamed-chunk-2-1.png" width="700px" style="display: block; margin: auto;" /><img src="figs/unnamed-chunk-2-2.png" width="700px" style="display: block; margin: auto;" /><img src="figs/unnamed-chunk-2-3.png" width="700px" style="display: block; margin: auto;" />

</div>

<div class="highlight">

</div>

<div class="highlight">

</div>

GRAPHICS
========

PAIRED CORRELATIONS
===================

Grouped by Torrance
-------------------

<div class="highlight">

<img src="figs/torrance_paired_correlations_graph-1.png" width="700px" style="display: block; margin: auto;" />

</div>

Grouped by Temperament, Raven and Other Variables
-------------------------------------------------

<div class="highlight">

<img src="figs/nontor_paired_correlations_graph-1.png" width="700px" style="display: block; margin: auto;" />

</div>

