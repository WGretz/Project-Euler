
set numbers {dict create}
dict set numbers 1 1
dict set numbers 2 2
dict set numbers 4 3

for {set x 1} {$x<=1000000} {incr x} {
  set i $x
  set steps {}
  while { ![dict exists $numbers $i] && !($i==1)} {
    set steps [linsert $steps end $i]
    if { $i%2 == 0 } {
      set i [expr $i/2]
    } else {
      set i [expr ($i*3)+1]
    }
  }
  while { [llength $steps] > 0 } {
    set steps_length [llength $steps]
    set idx [lindex $steps 0]
    set steps [lreplace $steps 0 0]
    dict set numbers $idx [expr [dict get $numbers $i] + $steps_length]
  }
}
set max 0
set max_key 0
foreach {key value} $numbers {
  if {$key < 1000000} {
    if {$value > $max} {
      set max $value
      set max_key $key
    }
  }
}
puts $max_key