usethis::use_pipe()
#' Summon a whale for a customisable pick-me-up!
#' @usage say(what)
#' @param what Whatever phrase you want the whale to echo. If no phrase is chosen, a random one will be provided.
#'
#' @return Whale-shaped message
#' @export
#'
#' @examples
#' say("Great job!")
say <- function(what){
  whale = "\n            ------ \n           %s \n            ------ \n               \\\   \n                \\\  \n                 \\\
     .-'
'--./ /     _.---.
'-,  (__..-`       \\
   \\          .     |
    `,.__.   ,__.--/
     '._/_.'___.-`
"
  what_pos_start <-
    regexpr('%s', whale)[1] - 1

  what_pos_end <- what_pos_start + 3

  if(missing(what)){
    what <- phrases %>% sample(size = 1)
  }
  out <- paste0(substr(whale, 1, what_pos_start),
                what,
                substr(whale, what_pos_end, nchar(whale)))

  message(out)
}

phrases <-  c(
  "You're whale-come!",
  "How are you? I'm whaley good!",
  "I'm having a whale of a time!",
  "Whale, whale, whale...look who's here!",
  "Gee...this is over-whalming!",
  "Everything whale be alright!",
  "Get whale soon!",
  "Whale done! This looks great!",
  "What do you call a pod of noisy whales?        An ORCASTRA!"
)

say()
