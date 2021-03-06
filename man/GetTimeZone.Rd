% Generated by roxygen2 (4.0.2): do not edit by hand
\name{GetTimeZone}
\alias{GetTimeZone}
\title{Get Site Title for a Report Suite(s)}
\usage{
GetTimeZone(reportsuite.ids)
}
\arguments{
\item{reportsuite.ids}{Report suite id (or list of report suite ids)}
}
\value{
Data frame
}
\description{
Get site title for the specified report suites.
}
\details{
This function requires having a character vector with one or more valid Report Suites specified.
}
\examples{
\dontrun{
timezone <- GetTimeZone("your_report_suite")

timezone2 <- GetTimeZone(report_suites$rsid)
}
}

