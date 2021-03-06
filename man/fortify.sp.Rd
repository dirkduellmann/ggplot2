\name{fortify.sp}
\alias{fortify.Line}
\alias{fortify.Lines}
\alias{fortify.Polygon}
\alias{fortify.Polygons}
\alias{fortify.SpatialLinesDataFrame}
\alias{fortify.SpatialPolygons}
\alias{fortify.SpatialPolygonsDataFrame}
\alias{fortify.sp}
\title{Fortify method for classes from the sp package.}
\usage{
\method{fortify}{SpatialPolygonsDataFrame}(model, data, region = NULL, ...)

\method{fortify}{SpatialPolygons}(model, data, ...)

\method{fortify}{Polygons}(model, data, ...)

\method{fortify}{Polygon}(model, data, ...)

\method{fortify}{SpatialLinesDataFrame}(model, data, ...)

\method{fortify}{Lines}(model, data, ...)

\method{fortify}{Line}(model, data, ...)
}
\arguments{
  \item{model}{\code{SpatialPolygonsDataFrame} to convert
  into a dataframe.}

  \item{data}{not used by this method}

  \item{region}{name of variable used to split up regions}

  \item{...}{not used by this method}
}
\description{
To figure out the correct variable name for region, inspect
\code{as.data.frame(model)}.
}
\examples{
if (require("maptools")) {
 sids <- system.file("shapes/sids.shp", package="maptools")
 nc1 <- readShapePoly(sids,
   proj4string = CRS("+proj=longlat +datum=NAD27"))
 nc1_df <- fortify(nc1)
}
}

