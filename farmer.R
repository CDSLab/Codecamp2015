#optimizing production of crops
# a linear function to be optimized 
library("lpSolveAPI")
lprec <- make.lp(0, 2)
lp.control(lprec, sense="max")
set.objfn(lprec, c(143, 60))
add.constraint(lprec, c(120, 210), "<=", 15000)
add.constraint(lprec, c(110, 30), "<=", 4000)
add.constraint(lprec, c(1, 1), "<=", 75)
lprec
solve(lprec)
get.objective(lprec)
get.variables(lprec)
