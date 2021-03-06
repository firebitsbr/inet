% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/4-6-4.R
\name{ipv4_to_ipv6}
\alias{ipv4_to_ipv6}
\alias{ipv6_to_ipv4}
\title{Perform 6-to-4 and 4-to-6 addressing}
\usage{
ipv4_to_ipv6(x)

ipv6_to_ipv4(x)
}
\arguments{
\item{x}{a character vector of IPv4 (\code{ipv4_to_ipv6()}) or IPv6 addresses (\code{ipv6_to_ipv4()})}
}
\value{
a character vector of converted address with \code{NA} for any that were not able to be
converted.
}
\description{
Perform 6-to-4 and 4-to-6 addressing
}
\examples{
set.seed(19216811)
src <- iptools::ip_random(10)
to6 <- ipv4_to_ipv6(src)
to4 <- ipv6_to_ipv4(to6)
all(src == to4)
}
\references{
\url{https://tools.ietf.org/html/rfc3056}
}
