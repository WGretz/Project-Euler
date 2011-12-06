source mathlib.tcl
set primes {2}
set x 3
while {[llength $primes]<10001} {
  if [is_prime $x] {
    set primes [linsert $primes end $x]
  }
  incr x 2
}

puts [lindex $primes end]