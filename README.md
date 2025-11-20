
<!-- README.md is generated from README.Rmd. Please edit that file -->

# sbdrpdata <a href='https://www.monkeymiadolphins.org'><img src="man/figures/shark bay dolphins.png" align="right" height="138.5"/></a>

<!-- badges: start -->

[![DOI](https://zenodo.org/badge/974634073.svg)](https://doi.org/10.5281/zenodo.17664438)

<!-- badges: end -->

The goal of sbdrpdata (shark bay dolphin research project data) is to
provide open access to the data collected during the ongoing long-term
study of wild Indo-Pacific bottlenose dolphins (*Tursiops aduncus*) in
Shark Bay, Western Australia.

<img src="man/figures/KMplotsexed.png" align="center" height="250"/>

To install the development version from [GitHub](https://github.com/)
use:

``` r
# install.packages("remotes")
remotes::install_github("GeorgetownMannLab/sbdrpdata")
```

## About the data

Data were collated and made available by [Dr. Janet
Mann](https://gufaculty360.georgetown.edu/s/contact/00336000014RY0bAAG/janet-mann)
through the [Shark Bay Dolphin Research
Project](https://www.monkeymiadolphins.org), with support from the
[National Science Foundation](https://nsf.gov/).

The sbdrpdata package contains three datasets.

``` r
library(sbdrpdata)
data(package = 'sbdrpdata')
```

One is called `survey_general`, and contains one row for each sighting
of a group of dolphins; see `?survey_general` for more info:

``` r
head(survey_general)
#>   Observation.ID Observation.Date Platform Observation.Start.Time
#> 1              1       1985-05-06    OTHER               16:00:00
#> 2              2       1985-05-09    OTHER               15:47:00
#> 3              3       1985-05-10    OTHER               14:30:00
#> 4              4       1985-05-10    OTHER               15:22:00
#> 5              5       1985-05-13    OTHER               16:15:00
#> 6              6       1985-05-15    OTHER               12:47:00
#>   Observation.End.Time Observation.Start.Time.Accuracy
#> 1             16:05:00                        ESTIMATE
#> 2             15:52:00                        ESTIMATE
#> 3             14:35:00                        ESTIMATE
#> 4             15:27:00                        ESTIMATE
#> 5             16:20:00                        ESTIMATE
#> 6             12:52:00                        ESTIMATE
#>   Observation.Start.Time.Precision Observation.End.Time.Accuracy
#> 1                             HOUR                      ESTIMATE
#> 2                             HOUR                      ESTIMATE
#> 3                             HOUR                      ESTIMATE
#> 4                             HOUR                      ESTIMATE
#> 5                             HOUR                      ESTIMATE
#> 6                             HOUR                      ESTIMATE
#>   Observation.End.Time.Precision Initial.Activity Initial.Activity.Certainty
#> 1                           HOUR                                            
#> 2                           HOUR                                            
#> 3                           HOUR                                            
#> 4                           HOUR                                            
#> 5                           HOUR                                            
#> 6                           HOUR                                            
#>   Initial.Distance Primary.Departure.Reason Secondary.Departure.Reason Beaufort
#> 1               NA                                                           NA
#> 2               NA                                                           NA
#> 3               NA                                                           NA
#> 4               NA                                                           NA
#> 5               NA                                                           NA
#> 6               NA                                                           NA
#>   Waypoint Swell.Ind Substrate
#> 1       NA     False          
#> 2       NA     False          
#> 3       NA     False          
#> 4       NA     False          
#> 5       NA     False          
#> 6       NA     False
```

The second dataset is `survey_dolphin`, and contains the IDs of all
dolphins seen during each sighting; see `?survey_dolphin` for more info.

``` r
head(survey_dolphin)
#>   Observation.ID Observation.Date Platform Observation.Start.Time
#> 1              1       1985-05-06    OTHER               16:00:00
#> 2              1       1985-05-06    OTHER               16:00:00
#> 3              1       1985-05-06    OTHER               16:00:00
#> 4              1       1985-05-06    OTHER               16:00:00
#> 5              1       1985-05-06    OTHER               16:00:00
#> 6              1       1985-05-06    OTHER               16:00:00
#>   Observation.End.Time Dolphin.ID Unknown.Dolphin.Alias Dolphin.ID.Certainty
#> 1             16:05:00     ID1010                   N/A                 HIGH
#> 2             16:05:00     ID1023                   N/A                 HIGH
#> 3             16:05:00     ID1172                   N/A                 HIGH
#> 4             16:05:00     ID1368                   N/A                 HIGH
#> 5             16:05:00     ID1521                   N/A                 HIGH
#> 6             16:05:00     ID1535                   N/A                 HIGH
#>   In.BP Beyond.10.Meters.Ind First.Five.Minutes.Ind
#> 1                      False                  False
#> 2                      False                  False
#> 3                      False                  False
#> 4                      False                  False
#> 5                      False                  False
#> 6                      False                  False
#>   First.Five.Minutes.Certainty
#> 1                         HIGH
#> 2                         HIGH
#> 3                         HIGH
#> 4                         HIGH
#> 5                         HIGH
#> 6                         HIGH
```

The third dataset is `life_history`, and contains information about
parentage, birth, weaning, and death dates for all individuals; see
`?life_history` for more info.

``` r
head(life_history)
#>   Dolphin.ID     Sex Sex.Certainty Mother.ID Father.ID Birth.Date
#> 1     ID0001 UNKNOWN                  ID0426      <NA> 2003-11-01
#> 2     ID0002  FEMALE          HIGH    ID1861    ID0437 2010-11-01
#> 3     ID0003    MALE          HIGH      <NA>      <NA> 1994-11-01
#> 4     ID0004 UNKNOWN                  ID1789      <NA> 1991-11-01
#> 5     ID0005 UNKNOWN                  ID1565      <NA> 2006-11-01
#> 6     ID0006 UNKNOWN                  ID1950      <NA> 2003-11-01
#>   Birth.Date.Accuracy Birth.Date.Earliest Birth.Date.Latest Death.Date
#> 1       YEAR ESTIMATE                <NA>        2004-11-01       <NA>
#> 2      MONTH ESTIMATE                <NA>              <NA>       <NA>
#> 3       YEAR ESTIMATE          1993-11-01        1995-11-01       <NA>
#> 4       YEAR ESTIMATE                <NA>              <NA> 1994-06-19
#> 5      MONTH ESTIMATE          2006-09-01        2007-01-01 2008-06-05
#> 6      MONTH ESTIMATE          2002-11-01        2003-11-01       <NA>
#>   Death.Date.Accuracy Weaning.Date Weaning.Date.Accuracy
#> 1                             <NA>                      
#> 2                       2014-08-07        MONTH ESTIMATE
#> 3                             <NA>                      
#> 4       YEAR ESTIMATE         <NA>                      
#> 5      MONTH ESTIMATE         <NA>                      
#> 6                             <NA>
```

## Citation

To cite the sbdrpdata package, please use:

``` r
citation("sbdrpdata")
#> To cite sbdrpdata in publications use:
#> 
#>   Mann, J, Foroughriad, V (2025). sbdrpdata: Shark Bay Dolphin Project
#>   Data. R package version 0.1.0.
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {sbdrpdata: Shark Bay Dolphin Project Data},
#>     author = {Janet Mann and Vivienne Foroughirad},
#>     year = {2025},
#>     note = {R package version 0.1.0},
#>   }
```

## Additional data use information

*NSF’s Plan for Data Dissemination*: Data yielded by long-term research
projects have value beyond the peer-reviewed and other publications
generated by the investigators collecting the data. Other researchers
may develop new perspectives on the same long-term data or new ideas may
arise from a combination of long-term data sets. Also, long-term data
are expected to be of special interest to the public.

Anyone with questions regarding the data is welcome to contact
[Dr. Janet
Mann](https://gufaculty360.georgetown.edu/s/contact/00336000014RY0bAAG/janet-mann)
about analysis and working together on any final products.

Has this data been useful to you? Data collection is ongoing, and
documentation of teaching, research, or management uses helps us to
maintain this living dataset. Tell us about your usage
[here](mailto:infommdolphin@gmail.com)!

## References

- McEntee MH, Foroughirad V, Krzyszczyk E, Mann J. (2023). Sex bias in
  mortality risk changes over the lifespan of bottlenose dolphins.
  Proceedings of the Royal Society B. 290(2003).
  <https://doi.org/10.1098/rspb.2023.0675>
