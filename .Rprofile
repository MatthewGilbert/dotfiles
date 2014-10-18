require(setwidth)
require(colorout)
r <- getOption("repos")             # hard code the US repo for CRAN
r["CRAN"] <- "http://cran.us.r-project.org"
options(repos = r)
rm(r)

# Lines added by the Vim-R-plugin command :RpluginConfig (2014-Oct-17 19:56):
if(interactive()){
    if(nchar(Sys.getenv("DISPLAY")) > 1)
        options(editor = 'gvim -f -c "set ft=r"')
    else
        options(editor = 'vim -c "set ft=r"')
    # See ?setOutputColors256 to know how to customize R output colors
    library(colorout)
    library(setwidth)
    library(vimcom)
    # See R documentation on Vim buffer even if asking for help in R Console:
    if(Sys.getenv("VIM_PANE") != "")
        options(pager = vim.pager)
}
