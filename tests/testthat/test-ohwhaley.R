what <- c("This is a character string")
say(what)
expect_type(what, "character")
expect_gt(length(what), 0)

expect_length(say(), 0)
expect_null(say())
expect_invisible(say())
expect_message(say())
