get_some_data <- function(config, outfile) {
  if (config_bad(config)) {
    stop("Bad config")
  }
  
  if (!can_write(outfile)) {
    stop("Can't write outfile")
  }
  
  if (!can_open_network_connection(config)) {
    stop("Can't access network")
  }
  
  data <- parse_something_from_network()
  if(!makes_sense(data)) {
    return(FALSE)
  }
  
  data <- beautify(data)
  write_it(data, outfile)
  TRUE
}
