
# set working directory
wd <- "C:/Users/Dell/OneDrive/R/Academic"
setwd(wd)
getwd()

# load package
library(blogdown)

# create project
usethis::create_project(wd)

# download Hugo theme
blogdown::new_site(theme = "wowchemy/starter-academic")

# start a local web server, which watches for changes in the site,
# rebuilds the site if necessary
# and refreshes the web page automatically.
# stop_server() stops the web server
blogdown::serve_site()

# create a new post
blogdown::new_post(title = "Hi Hugo",
                   ext = '.Rmarkdown',
                   subdir = "post")

# initialises a Git repository
# and adds important files to .gitignore
usethis::use_git()

# creates an associated repo on GitHub
usethis::use_github()

# check file gitignore
blogdown::check_gitignore()

# reopen site
servr::browse_last()
