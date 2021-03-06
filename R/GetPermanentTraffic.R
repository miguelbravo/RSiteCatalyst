#' @details This function requires having a character vector with one or more valid Report Suites specified.
#'
#' @description Get permanent traffic setting for the specified report suites. 
#' 
#' @title Get Permanent Traffic Setting for a Report Suite(s)
#' 
#' @param reportsuite.ids Report suite id (or list of report suite ids)
#'
#' @importFrom jsonlite toJSON
#' @importFrom plyr rbind.fill
#'
#' @return Data frame
#'
#' @export
#'
#' @examples
#' \dontrun{
#' permtraf <- GetPermanentTraffic("your_report_suite")
#' 
#' permtraf2 <- GetPermanentTraffic(report_suites$rsid)
#' }

GetPermanentTraffic <- function(reportsuite.ids) {
  
  request.body <- c()
  request.body$rsid_list <- reportsuite.ids
  
  response <- ApiRequest(body=toJSON(request.body),func.name="ReportSuite.GetPermanentTraffic")
  
  #Don't even know if this is possible, holdover from GetSegments code
  if(length(response$permanent_traffic[[1]]) == 0) {
      return(print("Paid Search Detection Not Enabled For This Report Suite"))
    }
  
  #Parse first level of classification
  accumulator <- data.frame()
  permanent_traffic_list <- response$permanent_traffic
  response$permanent_traffic <- NULL
  
  for(i in 1:nrow(response)){
    #Split get element classifications out of report
    permanent_traffic_df <- as.data.frame(permanent_traffic_list[[i]])
    if(nrow(permanent_traffic_df) == 0){
      temp <- response[i,]
    } else {
      temp <- cbind(response[i,], permanent_traffic_df, row.names = NULL)
    }
    accumulator <- rbind.fill(accumulator, temp)
  }
  
  return(accumulator)

}