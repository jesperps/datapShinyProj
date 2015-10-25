Facial expressions influence our feelings
========================================================
author: J Pettersson
date: 24 Oct 2015
font-family: 'Helvetica Neue'

Darwin Quote 
========================================================
title: False 
type: prompt
transition: zoom
>_"The free expression by outward signs of an emotion intensifies it. On the other hand, the repression, as far as this is possible, of all outward signs softens our emotions..._    
###  ...Even the simulation of an emotion tends to arouse it in our minds"
\- Charles Darwin, 1872   
![Picture of Grumpy faced Darwin](./Darwin.jpg)
That includes simple sketchy versions of faces
========================================================
transition: rotate
incremental: true

* Like these   
![Sketcy smiley face](./Smiley.png)
![Sketcy netutral face](./Neutraley.png)
![Sketcy frowney face](./Frowney.png)

Functions as mouth expressions
========================================================
title: TRUE
transition: rotate
* $x^2$ for smile   

```r
curve(x^2, xlim=c(-1,1), ylim=c(-1,1))
```

![plot of chunk unnamed-chunk-1](Smileyface Presentation-figure/unnamed-chunk-1-1.png) 
   
***
* $-x^2$ for frown   

```r
curve(-x^2, xlim=c(-1,1), ylim=c(-1,1))
```

![plot of chunk unnamed-chunk-2](Smileyface Presentation-figure/unnamed-chunk-2-1.png) 

Adjusting X - Try it your self
========================================================
transition: zoom
transition-speed: fast
![plot of chunk unnamed-chunk-3](Smileyface Presentation-figure/unnamed-chunk-3-1.png) 

* $0.5x^2$ will give you a sligthly less smiley mouth
* [Try out if the simualtion of an expression tends to arouse it in **your** mind](https://jesperps.shinyapps.io/SmileyFace)
