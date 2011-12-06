source mathlib.tcl
set largest_palindrome 0
set x 100
while {$x < 1000} {
  set y $x
  while {$y < 1000} {
    set i [expr $x*$y]
    if {$i > $largest_palindrome} {
      if {$i == [reverse_num $i]} {
        set largest_palindrome $i
      }
    }
    incr y
  }
  incr x
}

puts $largest_palindrome