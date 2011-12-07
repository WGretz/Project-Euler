source mathlib.tcl
set x 3
set primes_total 2
while { $x < 2000000 } {
  if [is_prime $x] { incr primes_total $x }
  incr x 2
}
puts $primes_total
