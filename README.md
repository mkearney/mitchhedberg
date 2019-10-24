
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mitchhedberg

<!-- badges: start -->

<!-- badges: end -->

Mitch Hedberg was the best.

## Installation

You can install the released version of mitchhedberg from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("mitchhedberg")
```

You can install the dev version of mitchhedberg from
[Github](https://github.com) with:

``` r
remotes::install_github("mkearney/mitchhedberg")
```

## Example

Print a randomly selected Mitch Hedberg joke

``` r
mitchhedberg::joke()
#>   I don't own a watch because I want my arms to weigh the same.
```

Add to your startup routine (for interactive sessions where
{mitchhedberg} is installed)

``` r
mitchhedberg::joke_on_startup()
```

Restart R (examples below)

    Restarting R session...
    
      My friend came up to me and he said "Hey, you know what I like? 
      Mashed potatoes." It was like, "Dude, you gotta give me time to 
      guess. If you're gonna quiz me, you gotta put a pause in there."
    
    Restarting R session...
    
      I type 101 words a minute, but it's in my own language.
    
    Restarting R session...
    
      I can read minds. But it's pointless because I'm illiterate.
    
    Restarting R session...
    
      I like to play blackjack. I'm not addicting to gambling... I'm 
      addicting to sitting in a semicircle.
