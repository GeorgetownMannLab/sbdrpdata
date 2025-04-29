#' Life history traits for individual bottlenose dolphins in Shark Bay, Western Australia
#'
#' Includes recorded sex, parentage, birth, weaning, and death dates and
#' their associated certainties.
#'
#' @format A data.frame with 1965 rows and 13 variables:
#' \describe{
#'   \item{Dolphin.ID}{a character denoting individual dolphin identity}
#'   \item{Sex}{a character denoting dolphin sex (female, male, unknown)}
#'   \item{Sex.Certainty}{a character}
#'   \item{Mother.ID}{a character}
#'   \item{Father.ID}{a character}
#'   \item{Birth.Date}{a date}
#'   \item{Birth.Date.Accuracy}{a character}
#'   \item{Birth.Date.Earliest}{a date}
#'   \item{Death.Date}{a date}
#'   \item{Death.Date.Accuracy}{a character}
#'   \item{Weaning.Date}{a date}
#'   \item{Weaning.Date.Accuracy}{a character}
#' }
#' @source {Birth dates: Karniski C, Krzyszczyk, Mann, J, 2018. Senescence impacts reproduction and maternal investment in bottlenose dolphins. Proceedings of the Royal Society B: Biological Sciences, 285(1883)} \doi{10.1098/rspb.2018.1123}
#' @source {Death dates: McEntee MH, Foroughirad V, Krzyszczyk E, Mann J. (2023). Sex bias in mortality risk changes over the lifespan of bottlenose dolphins. Proceedings of the Royal Society B. 290(2003).} \doi{10.1098/rspb.2023.0675}
#' @source {Parentage: Foroughirad V, McEntee M, Kopps AM, Levengood A, Frère C, Mann J, 2022. Reproductive timing as an explanation for skewed parentage assignment ratio in a bisexually philopatric population. Behavioral Ecology and Sociobiology, 76(9)} \doi{10.1007/s00265-022-03233-2}
"life_history"
