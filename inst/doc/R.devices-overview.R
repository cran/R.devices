###########################################################################
## This 'tangle' R script was created from an RSP document.
## RSP source document: 'R.devices-overview.tex.rsp'
###########################################################################

t0 <- Sys.time()
library("R.devices");
pkg <- Package("R.devices");

devOptions("png", width=840);
options(width=85);
options(digits=3);
options(str=strOptions(strict.width="cut"));
getName(pkg)
getAuthor(pkg)
envir <- getNamespace("R.devices");
tos <- ls(pattern="^to[A-Z][a-zA-Z]+", envir=envir);
tos <- sprintf("%s()", tos);
hpaste(sprintf("\\code{%s}", tos), maxHead=Inf, lastCollapse=", and ")
toPDF("MyGaussianDensity", aspectRatio=0.6, {
   curve(dnorm, from=-5, to=+5);
  })
devOptions("png", reset=TRUE)
evalWithEcho({
devOptions("png")
})
evalWithEcho({
devOptions("png", width=1024, bg="lightblue")
})
evalWithEcho({
devOptions("png", reset=TRUE)
})
evalWithEcho({
knownDevices <- eval(formals(devOptions)$type)
fields <- c("width", "height", "bg", "fg", "pointsize")
opts <- sapply(knownDevices, FUN=function(type) devOptions(type)[fields])
rownames(opts) <- fields
opts <- t(opts)
print(opts)
})
toLatex(sessionInfo())
dt <- round(Sys.time()-t0, digits=2)
attr(dt, "units")

