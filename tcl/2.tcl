source fib.tcl
set x 3
set seeds {{1} {2}}
while {$x < 4000000} {
  set seeds [linsert $seeds end $x]
  set x [next_fib_number $seeds]
}
puts $seeds