source mathlib.tcl
set i 0
set triangle 0
set f 0
while { ![ expr $f > 500] } {
  set f 0
  puts $triangle
  incr i
  incr triangle $i
  for {set x 1} {$x<[expr sqrt($triangle)]} {incr x} {
    if {![expr $triangle%$x]} {incr f 2}
  }
}
puts $triangle
