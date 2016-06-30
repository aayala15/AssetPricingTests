#' Cat function
#'
#' This function allows you to express your love of cats. Not sure how to do this.
#'
#' @param love Do you love cats? Defaults to TRUE.
#' @keywords cats
#' @export
#' @examples
#' load(port25sb)
#' runFamaMacbeth()

fama_macbeth <- function(port, factors, betas = c("fixed", "rolling"), sd_errors = c("newey", "shanken"), nwlag = 12) {
    port <- as.matrix(port)
    factors <- as.matrix(factors)
    cov_factors <- cov(factors)
    
    betas <- lm.fit(x=as.matrix(cbind(1,ffFactors)),y=as.matrix(port25sb))$coef
    
    rhform <- parse(text=paste(factors, collapse='+'))

    risk <- panel[!is.na(eret+eval(rhform)),]
    risk <- risk[, c(as.list(coef(lm(eret~eval(rhform))))),by=key(risk)]
    setnames(risk,'(Intercept)','lambda.0')

    panel <- risk[panel]
    predform <- parse(text=paste(c('lambda.0',paste('i.',factors,sep='')),'*',c('1',factors),collapse='+',sep=''))
    panel[,pred:=eval(predform)]
    pred <- panel[,.(eret=mean(eret),pred=mean(pred)),by='id']

    n <- nrow(risk)
    m <- length(factors)+1
    adj.r.squared <- 1-(1-cor(pred$pred,pred$eret)^2)*(n-1)/(n-m-2)

    risk <- as.matrix(risk[,c('lambda.0',factors),with=FALSE])
    meanLambda <- colMeans(risk)
    covLambda <- neweyWestCov(risk,nwlag) / (n-1)

    if(shanken==TRUE) {
    c <- meanLambda[-1] %*% solve(covF) %*% meanLambda[-1]
    covLambda <- as.numeric(1+c) * (covLambda-bdiag(0,covF)/n)+bdiag(0,covF)/n
    }

    meanLambda <- 100*as.numeric(meanLambda[-1])
    covLambda <- 100*as.numeric(sqrt(diag(covLambda))[-1])
    pvalues <- 2*pt(-abs(meanLambda/covLambda),df=n-m)

    return(list(n=n,coef=meanLambda,se=covLambda,pvalues=pvalues,adj.r.squared=adj.r.squared))

    new("ca.jo", x = x, Z0 = Z0, Z1 = Z1, ZK = ZK, type = type, model = model, ecdet = ecdet, lag = K, P = arrsel, season = season, dumvar = dumvar, cval = cval, teststat = as.vector(teststat), lambda = lambda, Vorg = Vorg, V = V, W = W, PI = PI, DELTA = DELTA, GAMMA = GAMMA, R0 = R0, RK = RK, bp = NA, test.name = "Johansen-Procedure", spec = spec, call = match.call())
}