source mathlib.tcl

set factors {}

set i 2
while {$i<21} {
  set cur_factors [factor_num $i]
  foreach factor $cur_factors {
    set idx [lsearch $factors $factor]
    set factors [lreplace $factors $idx $idx]
  }
  set factors [concat $factors $cur_factors]
  incr i
}
puts $factors
puts [lprod $factors]