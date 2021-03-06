% Generated by roxygen2 (4.0.2): do not edit by hand
\name{BuildRealTimeReportStructure}
\alias{BuildRealTimeReportStructure}
\title{Build Configuration for Real-Time Report}
\usage{
BuildRealTimeReportStructure(report.name = "", metric = "",
  elements = c(), min.granularity = "1", ui.report = TRUE)
}
\arguments{
\item{report.name}{Real-Time Report Name}

\item{metric}{Metric for Real-Time Report}

\item{elements}{Breakdowns for Real-Time Report}

\item{min.granularity}{Minimum Granularity for Report. Defaults to 1 minute.}

\item{ui.report}{Show report in Adobe Analytics web interface}
}
\value{
List
}
\description{
Selects the metrics and elements (dimensions) on which you want Real-Time
reports enabled. Use the returned list from this function as argument(s) in SaveRealTimeSettings.
}
\examples{
\dontrun{

report.test1 <- BuildRealTimeReportStructure(report.name="test123",
               metric="instances",
               elements = c("prop2", "searchenginekeyword", "geocountry"))

report.test2 <- BuildRealTimeReportStructure(report.name="test456",
               metric="instances",
               elements = c("prop2", "searchenginekeyword", "geocountry"),
               min.granularity = "5")

report.test3 <- BuildRealTimeReportStructure(report.name="test789",
               metric="instances",
               elements = c("prop2", "searchenginekeyword", "geocountry"),
               min.granularity = "5",
               ui.report=FALSE)
   }
}
\seealso{
\code{\link{GetRealTimeSettings}} \cr

\code{\link{SaveRealTimeSettings}} \cr
}
\keyword{BuildRealTimeReportStructure}

