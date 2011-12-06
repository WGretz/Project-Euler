proc multiples {limit} {
  set x 0
  set total 0
  while {$x < $limit} {
    if { $x % 3 == 0 || $x %5 == 0 } { set total [expr $total+$x]}
    set x [expr $x+1]
  }
  return $total
}
puts [multiples 1000]