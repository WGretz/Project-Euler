proc fib {seeds size} {
  set ret $seeds
  while {[llength $ret] < $size} {
    set ret [linsert $ret end [next_fib_number $ret] ]
  }
  return $ret
}

proc next_fib_number {lst} {
  return [expr [lindex $lst end]+[lindex $lst end-1]]
}