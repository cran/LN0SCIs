% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GPQW.R
\name{GPQW}
\alias{GPQW}
\alias{GPQW0}
\title{GPQW}
\usage{
GPQW(n,p,mu,sigma,N,C2=rbind(c(-1,1,0),c(-1,0,1),c(0,-1,1)),alpha=0.05)
}
\arguments{
\item{n}{The sample size of the mixture distributions,must be an integer vector.}

\item{p}{The zero probability of the mixture distribution,it has the same length to the \strong{n} params.}

\item{mu}{The mean of the non-zero samples,which after log-transformation.}

\item{sigma}{The variance of the non-zero samples,which after log-transformation.}

\item{N}{The number of independent generated data sets.}

\item{C2}{Matrix C,You can refer to the paper of Xu et al. for specific forms.}

\item{alpha}{The confidence level,it always set \emph{alpha=0.5}}
}
\value{
The method will return the Simultaneous Confidence Intervals(SCIs) and the time consuming
}
\description{
A method based on generalized pivotal quantity with order statistics(also see \code{\link{GPQH}}) to construct the simultaneous confidence intervals for
Ratios of Means of Log-normal Populations with Zeros.
}
\details{
More information about GPQW, you can read the paper: Simultaneous Confidence Intervals for Ratios of Means of Log-normal Populations with Zeros.
}
\examples{


alpha <- 0.05

p <- c(0.1,0.15,0.1)
n <- c(30,15,50)
mu <- c(0,0,0)
sigma <- c(1,1,1)
N <- 100
GPQW(n,p,mu,sigma,N)

\dontrun{
p <- c(0.1,0.15,0.1,0.6)
n <- c(30,15,10,50)
mu <- c(0,0,0,0)
sigma <- c(1,1,1,2)
C2 <- rbind(c(-1,1,0,0),c(-1,0,1,0),c(-1,0,0,1),c(0,-1,1,0),c(0,-1,0,1),c(0,0,-1,1))

N <- 1000;
GPQW(n,p,mu,sigma,N,C2 = C2)

}

}
\author{
Jing Xu, Xinmin Li, Hua Liang
}
