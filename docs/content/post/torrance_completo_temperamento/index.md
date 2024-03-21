---
rmd_hash: d074df74fd206f74

---

TORRANCE SUBDIMENSIONES
=======================

Notas
-----

-   Dataset Torrance ya completo
-   Ocho correlaciones encontradas
-   El num de correlaciones aumento
-   Todas entre 0.35 y 0.6
-   Vease seccion Torrance-Raven, desapareceron las correlaciones parciales \#\# Datos muy disperson en attencion
-   Los scatterplot muestran poca agrupacion alrededor de la linea de regresion
-   Da algo de desconfianza

### Frustracion

-   A mas frustraci'on mas elab3.
-   Super interesante, a mas emocion negativa mas creatividad

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "elab3 fru"</span></span>
<span><span class='c'>#&gt; [1] "orig3 attfoc"</span></span>
<span><span class='c'>#&gt; [1] "elab1 attshi"</span></span>
<span><span class='c'>#&gt; [1] "orig3 attcon"</span></span>
<span><span class='c'>#&gt; [1] "flui3 attcon"</span></span>
<span><span class='c'>#&gt; [1] "elab3 dis"</span></span>
<span><span class='c'>#&gt; [1] "elab1 fea"</span></span>
<span><span class='c'>#&gt; [1] "orig3 fea"</span></span>
<span><span class='c'>#&gt;       act       fru app     attfoc     attshi     attcon       dis sth</span></span>
<span><span class='c'>#&gt; orig1  NA        NA  NA         NA         NA         NA        NA  NA</span></span>
<span><span class='c'>#&gt; elab1  NA        NA  NA         NA -0.5303203         NA        NA  NA</span></span>
<span><span class='c'>#&gt; orig2  NA        NA  NA         NA         NA         NA        NA  NA</span></span>
<span><span class='c'>#&gt; flui2  NA        NA  NA         NA         NA         NA        NA  NA</span></span>
<span><span class='c'>#&gt; elab2  NA        NA  NA         NA         NA         NA        NA  NA</span></span>
<span><span class='c'>#&gt; flex2  NA        NA  NA         NA         NA         NA        NA  NA</span></span>
<span><span class='c'>#&gt; orig3  NA        NA  NA -0.3726471         NA -0.4423187        NA  NA</span></span>
<span><span class='c'>#&gt; flui3  NA        NA  NA         NA         NA -0.3667476        NA  NA</span></span>
<span><span class='c'>#&gt; elab3  NA 0.4049024  NA         NA         NA         NA 0.3993255  NA</span></span>
<span><span class='c'>#&gt; flex3  NA        NA  NA         NA         NA         NA        NA  NA</span></span>
<span><span class='c'>#&gt;             fea hip imp inh lip per sad shy smi</span></span>
<span><span class='c'>#&gt; orig1        NA  NA  NA  NA  NA  NA  NA  NA  NA</span></span>
<span><span class='c'>#&gt; elab1 0.4068448  NA  NA  NA  NA  NA  NA  NA  NA</span></span>
<span><span class='c'>#&gt; orig2        NA  NA  NA  NA  NA  NA  NA  NA  NA</span></span>
<span><span class='c'>#&gt; flui2        NA  NA  NA  NA  NA  NA  NA  NA  NA</span></span>
<span><span class='c'>#&gt; elab2        NA  NA  NA  NA  NA  NA  NA  NA  NA</span></span>
<span><span class='c'>#&gt; flex2        NA  NA  NA  NA  NA  NA  NA  NA  NA</span></span>
<span><span class='c'>#&gt; orig3 0.3656641  NA  NA  NA  NA  NA  NA  NA  NA</span></span>
<span><span class='c'>#&gt; flui3        NA  NA  NA  NA  NA  NA  NA  NA  NA</span></span>
<span><span class='c'>#&gt; elab3        NA  NA  NA  NA  NA  NA  NA  NA  NA</span></span>
<span><span class='c'>#&gt; flex3        NA  NA  NA  NA  NA  NA  NA  NA  NA</span></span></code></pre>

<img src="figs/torrance_scales_correlation_function-1.png" width="700px" style="display: block; margin: auto;" /><img src="figs/torrance_scales_correlation_function-2.png" width="700px" style="display: block; margin: auto;" /><img src="figs/torrance_scales_correlation_function-3.png" width="700px" style="display: block; margin: auto;" />

</div>

TORRANCE DIMENSIONES AMPLIAS (broad dims)
=========================================

Notas
-----

-   El predictor es EC, no SU

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; [1] "elab1 CE"</span></span>
<span><span class='c'>#&gt;               CE AN SU</span></span>
<span><span class='c'>#&gt; orig1         NA NA NA</span></span>
<span><span class='c'>#&gt; elab1 -0.3674601 NA NA</span></span>
<span><span class='c'>#&gt; orig2         NA NA NA</span></span>
<span><span class='c'>#&gt; flui2         NA NA NA</span></span>
<span><span class='c'>#&gt; elab2         NA NA NA</span></span>
<span><span class='c'>#&gt; flex2         NA NA NA</span></span>
<span><span class='c'>#&gt; orig3         NA NA NA</span></span>
<span><span class='c'>#&gt; flui3         NA NA NA</span></span>
<span><span class='c'>#&gt; elab3         NA NA NA</span></span>
<span><span class='c'>#&gt; flex3         NA NA NA</span></span></code></pre>

<img src="figs/torrance_3broaddim_correlations_function-1.png" width="700px" style="display: block; margin: auto;" /><img src="figs/torrance_3broaddim_correlations_function-2.png" width="700px" style="display: block; margin: auto;" />

</div>

