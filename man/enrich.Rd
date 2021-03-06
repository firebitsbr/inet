% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/enrich.R
\name{enrich}
\alias{enrich}
\alias{enrich.ipv4}
\alias{enrich.character}
\title{Enrich a collection of IP addresses with country and AS information}
\usage{
enrich(x, ..., mm_asn_db = Sys.getenv("MAXMIND_ASN_DB_PATH"),
  mm_city_db = Sys.getenv("MAXMIND_CITY_DB_PATH"))

\method{enrich}{ipv4}(x, mm_asn_db = Sys.getenv("MAXMIND_ASN_DB_PATH"),
  mm_city_db = Sys.getenv("MAXMIND_CITY_DB_PATH"))

\method{enrich}{character}(x, mm_asn_db = Sys.getenv("MAXMIND_ASN_DB_PATH"),
  mm_city_db = Sys.getenv("MAXMIND_CITY_DB_PATH"))
}
\arguments{
\item{x}{a character vector of IPv4 addresses}

\item{...}{passed to other methods}

\item{mmm_asn_db, mm_city_db}{paths to the Maxmind GeoLite ASN and City databases}
}
\description{
Takes a character vector of classed IP addresses and minimally converts them
to their numeric representation. If Maxmind datases are available, country
and autonomous system (AS) inforamtion will be added as well.
}
\examples{
x <- iptools::ip_random(10)
enrich(x)
enrich(as.ipv4(x))
}
