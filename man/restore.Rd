% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/restore.R
\name{restore}
\alias{restore}
\title{Restore a Project}
\usage{
restore(project = NULL, library = NULL, lockfile = NULL,
  actions = c("install", "remove", "upgrade", "downgrade", "crossgrade"),
  confirm = interactive())
}
\arguments{
\item{project}{The project directory. If \code{NULL}, then the active
project will be used. If no project has been specifically activated,
the current working directory is used.}

\item{library}{The path to the library in which packages will be restored.
When \code{NULL}, the project library is used.}

\item{lockfile}{The lockfile to be used for restoration of the associated
project. When \code{NULL}, the most recently generated lockfile for this project
is used.}

\item{actions}{The restore actions to take. By default, all actions are
taken, thereby synchronizing the state of the project library with that of
the lockfile. See \strong{Actions} for more details.}

\item{confirm}{Boolean; prompt the user before taking any action?}
}
\description{
Restore a project's dependencies from a lockfile, as previously generated by
\code{\link[=snapshot]{snapshot()}}.
}
\section{Actions}{


\code{renv} classifies the different actions that will be taken during restore
into five fundamental types:

\tabular{ll}{

\code{install} \tab
Install a package recorded in the lockfile,
but not currently installed in the project library. \cr

\code{remove} \tab
Remove a package installed in the project library,
but not currently recorded in the lockfile. \cr

\code{upgrade} \tab
Upgrade a package by replacing the (older) version of the package
available in the project library with a newer version as defined
in the lockfile. \cr

\code{downgrade} \tab
Downgrade a package by replacing the (newer) version of the package
available in the project library with an older version as defined
in the lockfile. \cr

\code{crossgrade} \tab
Install a package whose lockfile record differs from the inferred
record associated with the currently-installed version. This could
happen if, for example, the source of a particular package was changed
(e.g. a package originally installed from GitHub was later installed
from CRAN). \cr

}

This can be useful if you want to perform only non-destructive changes during
restore -- for example, you can invoke \code{renv::restore(actions = "install")}
to avoid modifying or removing packages that have already been installed into
your project's private library.
}

\seealso{
Other reproducibility: \code{\link{lockfile}},
  \code{\link{snapshot}}
}
\concept{reproducibility}
