##
## Setting classes for unit root tests
##

setClass("fama_macbeth", representation(
                                 x="matrix",
                                 Z0="matrix",
                                 Z1="matrix",
                                 ZK="matrix",
                                 type="character",
                                 model="character",
                                 ecdet="character",
                                 lag="integer",
                                 P="integer",
                                 season="ANY",
                                 dumvar="ANY",
                                 cval="ANY",
                                 teststat="ANY",
                                 lambda="vector",
                                 Vorg="matrix",
                                 V="matrix",
                                 W="matrix",
                                 PI="matrix",
                                 DELTA="matrix",
                                 GAMMA="matrix",
                                 R0="matrix",
                                 RK="matrix",
                                 bp="ANY",
                                 spec="character",
                                 call="call")
     )
