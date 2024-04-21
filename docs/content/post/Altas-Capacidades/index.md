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

<div class="highlight">

</div>

EXAMPLES OF HOW TO EXTRACT ITEMS FROM LISTS
-------------------------------------------

The levels percents tables are list of 3x3x2 with school names, level name and table/graph keys. The means table is a 3 items list with school name keys.

-   list\_by\_school\_levels\_percents\_tables\[\['secaugusto'\]\]\[\['preocupacion\_level'\]\]\[\['table'\]\]

-   list\_by\_school\_mean\_sd\_tables\[\['secaugusto'\]\]

PUBLICATION READY *OR BEAUTIFUL* TABLES
---------------------------------------

Tables with the default formatting for publication on scientific journals.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; $pidahi</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; |grado | grit_score_mean| grit_score_sd| esfuerzo_score_mean| esfuerzo_score_sd| preocupacion_score_mean| preocupacion_score_sd|</span></span>
<span><span class='c'>#&gt; |:-----|---------------:|-------------:|-------------------:|-----------------:|-----------------------:|---------------------:|</span></span>
<span><span class='c'>#&gt; |1a    |        3.437500|     0.5260159|            49.85714|         14.599413|                63.85714|              20.48112|</span></span>
<span><span class='c'>#&gt; |2a    |        3.142361|     0.4637877|            45.44444|          6.354454|                54.94444|              15.06251|</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $primcongreso</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; |grado | grit_score_mean| grit_score_sd| esfuerzo_score_mean| esfuerzo_score_sd| preocupacion_score_mean| preocupacion_score_sd|</span></span>
<span><span class='c'>#&gt; |:-----|---------------:|-------------:|-------------------:|-----------------:|-----------------------:|---------------------:|</span></span>
<span><span class='c'>#&gt; |6a    |        2.738095|     0.5775315|            43.38095|          6.414641|                57.85714|              13.31272|</span></span>
<span><span class='c'>#&gt; |6b    |        2.968750|     0.4704829|            46.37500|          7.228416|                58.50000|              11.97776|</span></span>
<span><span class='c'>#&gt; |6c    |        2.656250|     0.7141307|            44.05263|         10.590739|                60.89474|              20.04687|</span></span>
<span><span class='c'>#&gt; |6d    |        3.225000|     0.5667519|            46.44000|          8.386895|                63.76000|              19.87519|</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $secaugusto</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; |grado | grit_score_mean| grit_score_sd| esfuerzo_score_mean| esfuerzo_score_sd| preocupacion_score_mean| preocupacion_score_sd|</span></span>
<span><span class='c'>#&gt; |:-----|---------------:|-------------:|-------------------:|-----------------:|-----------------------:|---------------------:|</span></span>
<span><span class='c'>#&gt; |1a    |        3.177083|     0.6158754|            48.91667|          6.870964|                66.70833|              17.07905|</span></span>
<span><span class='c'>#&gt; |1b    |        3.036685|     0.6490851|            45.73913|          5.682648|                65.26087|              14.52965|</span></span>
<span><span class='c'>#&gt; |1c    |        3.329327|     0.7790835|            45.96154|         10.648871|                63.19231|              16.12456|</span></span>
<span><span class='c'>#&gt; |1d    |        2.887228|     0.8048558|            46.13043|          7.545645|                59.69565|              11.29938|</span></span>
<span><span class='c'>#&gt; |2a    |        3.311012|     0.6713644|            50.23810|          7.210442|                66.28571|              14.28336|</span></span>
<span><span class='c'>#&gt; |2b    |        2.906250|     0.6480138|            43.00000|          7.511395|                56.50000|              13.74007|</span></span>
<span><span class='c'>#&gt; |2c    |        3.097826|     0.5131703|            44.56522|          6.028916|                59.43478|              10.87460|</span></span>
<span><span class='c'>#&gt; |2d    |        3.031250|     0.7283046|            44.60000|          7.775806|                60.70000|              13.52230|</span></span>
<span><span class='c'>#&gt; |3a    |        3.018092|     0.4481971|            42.68421|         10.203772|                61.57895|              18.52421|</span></span>
<span><span class='c'>#&gt; |3b    |        3.349609|     0.6428917|            50.31250|          6.446898|                64.43750|              15.17440|</span></span>
<span><span class='c'>#&gt; |3c    |        3.125000|     0.4574532|            46.46667|          5.370111|                64.53333|              13.30879|</span></span>
<span><span class='c'>#&gt; |3d    |        3.115809|     0.6088504|            48.00000|          7.322909|                63.41176|              13.77978|</span></span></code></pre>

</div>

PROFILE LEVELS
==============

Results profiles and levels.

TABLES BY SCHOOLS. RAW VERSION
------------------------------

These are the tables containting the percentages of subjects under each level.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; $pidahi</span></span>
<span><span class='c'>#&gt; $pidahi$grit_level</span></span>
<span><span class='c'>#&gt; $pidahi$grit_level$table</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; |grado |    Medio|      Alto|     Bajo|</span></span>
<span><span class='c'>#&gt; |:-----|--------:|---------:|--------:|</span></span>
<span><span class='c'>#&gt; |1a    | 71.42857| 28.571429|       NA|</span></span>
<span><span class='c'>#&gt; |2a    | 88.88889|  5.555556| 5.555556|</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $pidahi$grit_level$graph</span></span></code></pre>
<img src="figs/tables_school_grade-1.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $pidahi$esfuerzo_level</span></span>
<span><span class='c'>#&gt; $pidahi$esfuerzo_level$table</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; |grado |     Bajo|     Alto| Superior|    Medio|</span></span>
<span><span class='c'>#&gt; |:-----|--------:|--------:|--------:|--------:|</span></span>
<span><span class='c'>#&gt; |1a    | 14.28571| 28.57143| 57.14286|       NA|</span></span>
<span><span class='c'>#&gt; |2a    |       NA| 61.11111| 33.33333| 5.555556|</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $pidahi$esfuerzo_level$graph</span></span></code></pre>
<img src="figs/tables_school_grade-2.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $pidahi$preocupacion_level</span></span>
<span><span class='c'>#&gt; $pidahi$preocupacion_level$table</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; |grado |     Bajo|    Medio|     Alto| Superior|</span></span>
<span><span class='c'>#&gt; |:-----|--------:|--------:|--------:|--------:|</span></span>
<span><span class='c'>#&gt; |1a    | 14.28571| 57.14286| 14.28571| 14.28571|</span></span>
<span><span class='c'>#&gt; |2a    | 16.66667| 61.11111| 22.22222|       NA|</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $pidahi$preocupacion_level$graph</span></span></code></pre>
<img src="figs/tables_school_grade-3.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $primcongreso</span></span>
<span><span class='c'>#&gt; $primcongreso$grit_level</span></span>
<span><span class='c'>#&gt; $primcongreso$grit_level$table</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; |grado |     Bajo|    Medio|  Alto|</span></span>
<span><span class='c'>#&gt; |:-----|--------:|--------:|-----:|</span></span>
<span><span class='c'>#&gt; |6a    | 33.33333| 66.66667|    NA|</span></span>
<span><span class='c'>#&gt; |6b    |  6.25000| 87.50000|  6.25|</span></span>
<span><span class='c'>#&gt; |6c    | 42.10526| 57.89474|    NA|</span></span>
<span><span class='c'>#&gt; |6d    |  8.00000| 80.00000| 12.00|</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $primcongreso$grit_level$graph</span></span></code></pre>
<img src="figs/tables_school_grade-4.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $primcongreso$esfuerzo_level</span></span>
<span><span class='c'>#&gt; $primcongreso$esfuerzo_level$table</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; |grado |    Medio|     Alto| Superior|     Bajo|</span></span>
<span><span class='c'>#&gt; |:-----|--------:|--------:|--------:|--------:|</span></span>
<span><span class='c'>#&gt; |6a    | 23.80952| 57.14286| 19.04762|       NA|</span></span>
<span><span class='c'>#&gt; |6b    | 12.50000| 50.00000| 37.50000|       NA|</span></span>
<span><span class='c'>#&gt; |6c    | 15.78947| 42.10526| 36.84211| 5.263158|</span></span>
<span><span class='c'>#&gt; |6d    |  8.00000| 64.00000| 24.00000| 4.000000|</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $primcongreso$esfuerzo_level$graph</span></span></code></pre>
<img src="figs/tables_school_grade-5.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $primcongreso$preocupacion_level</span></span>
<span><span class='c'>#&gt; $primcongreso$preocupacion_level$table</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; |grado |     Bajo|    Medio|     Alto| Superior|</span></span>
<span><span class='c'>#&gt; |:-----|--------:|--------:|--------:|--------:|</span></span>
<span><span class='c'>#&gt; |6a    | 14.28571| 66.66667| 19.04762|       NA|</span></span>
<span><span class='c'>#&gt; |6b    |  6.25000| 75.00000| 12.50000|  6.25000|</span></span>
<span><span class='c'>#&gt; |6c    | 15.78947| 42.10526| 31.57895| 10.52632|</span></span>
<span><span class='c'>#&gt; |6d    |  8.00000| 44.00000| 40.00000|  8.00000|</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $primcongreso$preocupacion_level$graph</span></span></code></pre>
<img src="figs/tables_school_grade-6.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $secaugusto</span></span>
<span><span class='c'>#&gt; $secaugusto$grit_level</span></span>
<span><span class='c'>#&gt; $secaugusto$grit_level$table</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; |grado |      Bajo|    Medio|      Alto|</span></span>
<span><span class='c'>#&gt; |:-----|---------:|--------:|---------:|</span></span>
<span><span class='c'>#&gt; |1a    | 12.500000| 70.83333| 16.666667|</span></span>
<span><span class='c'>#&gt; |1b    | 17.391304| 78.26087|  4.347826|</span></span>
<span><span class='c'>#&gt; |1c    | 11.538462| 65.38462| 23.076923|</span></span>
<span><span class='c'>#&gt; |1d    | 26.086956| 60.86957| 13.043478|</span></span>
<span><span class='c'>#&gt; |2a    |        NA| 80.95238| 19.047619|</span></span>
<span><span class='c'>#&gt; |2b    | 25.000000| 70.00000|  5.000000|</span></span>
<span><span class='c'>#&gt; |2c    |  8.695652| 82.60870|  8.695652|</span></span>
<span><span class='c'>#&gt; |2d    | 15.000000| 70.00000| 15.000000|</span></span>
<span><span class='c'>#&gt; |3a    | 10.526316| 84.21053|  5.263158|</span></span>
<span><span class='c'>#&gt; |3b    |  6.250000| 75.00000| 18.750000|</span></span>
<span><span class='c'>#&gt; |3c    |        NA| 86.66667| 13.333333|</span></span>
<span><span class='c'>#&gt; |3d    | 11.764706| 76.47059| 11.764706|</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $secaugusto$grit_level$graph</span></span></code></pre>
<img src="figs/tables_school_grade-7.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $secaugusto$esfuerzo_level</span></span>
<span><span class='c'>#&gt; $secaugusto$esfuerzo_level$table</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; |grado |     Medio|     Alto| Superior|     Bajo|</span></span>
<span><span class='c'>#&gt; |:-----|---------:|--------:|--------:|--------:|</span></span>
<span><span class='c'>#&gt; |1a    |  8.333333| 45.83333| 45.83333|       NA|</span></span>
<span><span class='c'>#&gt; |1b    | 13.043478| 73.91304| 13.04348|       NA|</span></span>
<span><span class='c'>#&gt; |1c    |  7.692308| 50.00000| 34.61538| 7.692308|</span></span>
<span><span class='c'>#&gt; |1d    | 17.391304| 52.17391| 30.43478|       NA|</span></span>
<span><span class='c'>#&gt; |2a    |        NA| 42.85714| 57.14286|       NA|</span></span>
<span><span class='c'>#&gt; |2b    | 25.000000| 55.00000| 20.00000|       NA|</span></span>
<span><span class='c'>#&gt; |2c    | 17.391304| 60.86957| 21.73913|       NA|</span></span>
<span><span class='c'>#&gt; |2d    | 20.000000| 60.00000| 20.00000|       NA|</span></span>
<span><span class='c'>#&gt; |3a    | 10.526316| 68.42105| 15.78947| 5.263158|</span></span>
<span><span class='c'>#&gt; |3b    |        NA| 62.50000| 37.50000|       NA|</span></span>
<span><span class='c'>#&gt; |3c    |  6.666667| 73.33333| 20.00000|       NA|</span></span>
<span><span class='c'>#&gt; |3d    | 11.764706| 52.94118| 35.29412|       NA|</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $secaugusto$esfuerzo_level$graph</span></span></code></pre>
<img src="figs/tables_school_grade-8.png" width="700px" style="display: block; margin: auto;" />
<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $secaugusto$preocupacion_level</span></span>
<span><span class='c'>#&gt; $secaugusto$preocupacion_level$table</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; |grado |      Bajo|    Medio|     Alto|  Superior|</span></span>
<span><span class='c'>#&gt; |:-----|---------:|--------:|--------:|---------:|</span></span>
<span><span class='c'>#&gt; |1a    |  4.166667| 50.00000| 37.50000|  8.333333|</span></span>
<span><span class='c'>#&gt; |1b    |        NA| 60.86957| 30.43478|  8.695652|</span></span>
<span><span class='c'>#&gt; |1c    |  3.846154| 57.69231| 30.76923|  7.692308|</span></span>
<span><span class='c'>#&gt; |1d    | 13.043478| 60.86957| 26.08696|        NA|</span></span>
<span><span class='c'>#&gt; |2a    |  4.761905| 42.85714| 42.85714|  9.523810|</span></span>
<span><span class='c'>#&gt; |2b    | 10.000000| 75.00000| 15.00000|        NA|</span></span>
<span><span class='c'>#&gt; |2c    |  8.695652| 73.91304| 17.39130|        NA|</span></span>
<span><span class='c'>#&gt; |2d    |  5.000000| 55.00000| 40.00000|        NA|</span></span>
<span><span class='c'>#&gt; |3a    | 10.526316| 57.89474| 15.78947| 15.789474|</span></span>
<span><span class='c'>#&gt; |3b    | 12.500000| 37.50000| 43.75000|  6.250000|</span></span>
<span><span class='c'>#&gt; |3c    |  6.666667| 53.33333| 33.33333|  6.666667|</span></span>
<span><span class='c'>#&gt; |3d    |  5.882353| 47.05882| 47.05882|        NA|</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; $secaugusto$preocupacion_level$graph</span></span></code></pre>
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

<img src="figs/esfuerzo_boxplots-1.png" width="700px" style="display: block; margin: auto;" />

</div>

<div class="highlight">

<img src="figs/preocupacion_boxplots-1.png" width="700px" style="display: block; margin: auto;" />

</div>

