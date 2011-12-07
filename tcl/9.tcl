set found false
set a 1
while {$a<998} {
  set b 1
  while {$b<1000-$a} {
    set c [expr 1000-$a-$b]
    if {[expr $a**2+$b**2]==[expr $c**2] } { 
      set found [expr $a*$b*$c]
      break
    }
    incr b
  }
  if {$found} {break}
  incr a
}
puts $found