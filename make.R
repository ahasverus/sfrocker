#install deps ----
devtools::install_deps(upgrade = "never")

#render report
rmarkdown::render("report/report.Rmd", clean = TRUE)