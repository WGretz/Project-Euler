source fib.tcl
set x 3
set seeds {{1} {2}}
while {$x < 4000000} {
  set seeds [linsert $seeds end $x]
  set x [next_fib_number $seeds]
}
set v 0
foreach x $seeds {
  if {$x % 2 == 0} { set v [expr $x+$v]}
}
puts $v