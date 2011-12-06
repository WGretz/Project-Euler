set x 1
set sum_of_square 0
set sum 0
while {$x<101} {
  incr sum $x
  incr sum_of_square [expr $x**2]
  incr x
}
puts [expr [expr $sum**2]-$sum_of_square]