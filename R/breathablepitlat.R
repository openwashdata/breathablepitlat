#' breathablepitlat: Field application of breathable laminate-lined pit latrines to capture fecal contamination
#'
#' This dataset assists with a study aims at capturing the pathogens and contaminants
#' from pit latrines by lining them with a hydrophobic laminate. This paper demonstrates
#' the transport of contaminants from two pour flush, twin-pit latrines in which one pit
#' is lined and one is unlined. A direct comparison of soil/water quality parameters
#' around each pit is done to elucidate the efficacy of a hydrophobic laminate liner at field-scale.

#'
#' @format A tibble with 6 rows and 8 variables
#' \describe{
#'   \item{site}{There are two sites for the field test: site 1 and site 2. A twin-pit pour-flush pit latrine was constructed at each site.}
#'   \item{depth}{The soil samples were collected at two different depths (1 m and 0.5 m) from ground level.}
#'   \item{lateral}{The soil samples were collected from 0.5 m , 1 m,  5 m and 10 m lateral distance away from the pit.}
#'   \item{time}{This describes the time (in days) of sample collection. The water and soil samples were collected over a period of 322 days.}
#'   \item{test}{The 6 parameters tested from the samples collected in this field test. They include pH,  electrical conductivity,  total coliform,  nitrate, ammonia,  and phosphorus.}
#'   \item{location}{The location of the soil samples marked P1 for unlined and P2 for lined pit. A, B, C, D, E, F are locations around the pits while M is the middle point between the lined and unlined pit.}
#'   \item{values}{The values measured for said parameter}
#'   \item{num_test}{The values measured for said parameter}
#' }
"breathablepitlat"
