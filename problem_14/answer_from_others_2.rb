solutions={1=>1}
solve=->n{return solutions[n]||=1+(n%2==0?solve[n/2]:solve[3*n+1])}
p (2..1_000_000).map{|x|[solve[x],x]}.max[1]
