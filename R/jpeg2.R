###########################################################################/**
# @RdocFunction jpeg2
#
# @title "A JPEG device for Bitmap Files via GhostScript"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{filename}{The name of the file to be produced.}
#  \item{width, height}{The width and height (in pixels) of the result image.}
#  \item{res}{The resolution of the image.}
#  \item{type}{The output type. See @see "grDevices::dev2bitmap" for details.}
#  \item{...}{Additional arguments passed to \code{bitmap()}.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# @keyword device
# @keyword internal
#*/###########################################################################
jpeg2 <- function(filename, width=480, height=480, res=144, type="jpeg", ...) {
  bitmap(file=filename, type=type, width=width/res, height=height/res, res=res, ...)
}
