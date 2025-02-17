% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/modify.R
\name{modify}
\alias{modify}
\title{Open the Lockfile for Editing}
\usage{
modify(project = NULL)
}
\arguments{
\item{project}{The project directory. If \code{NULL}, then the active
project will be used. If no project has been specifically activated,
the current working directory is used.}
}
\description{
Open a project's lockfile (if any) for editing. After edit, if the lockfile
edited is associated with the active project, any state-related changes
(e.g. to \R repositories) will be updated in the current session.
}
