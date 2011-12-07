proc reverse_num {num_to_reverse} {
  set reversed_num 0
  while {$num_to_reverse} {
    set reversed_num [expr $reversed_num*10]
    set reversed_num [expr $reversed_num+[ expr $num_to_reverse%10]]
    set num_to_reverse [expr $num_to_reverse/10]
  }
  return $reversed_num
}

proc factor_num {num} {
  set factors {}
  for {set i 2} {$i <= $num} {} {
    if {![expr {$num % $i}]} {
      lappend factors $i
      set num [expr {$num / $i}]
    } else {
      incr i
    }
  }
  return $factors
}

proc lsum {list} {
  set ret 0
  foreach x $list {
    incr ret $x
  }
  return $ret
}

proc lprod {list} {
  set ret 1
  foreach x $list {
    set ret [expr $ret*$x]
    puts $ret
  }
  return $ret
}

proc is_prime {number} {
  set max [expr sqrt($number)]
  set prime true
  set x 2
  while {$x<=$max} {
    if {$number%$x == 0} {
      set prime false
      break
    }
    incr x
  }
  return $prime
}

proc divisors { number } {
  set x 1
  set factors {}
  set half [expr $number/2.]
  while { $x < $half } {
    if { [expr $number%$x] == 0 } {
      set factors [linsert $factors end $x]
      set factors [linsert $factors end [expr $number/$x]]
    }
    incr x
  }
  return $factors
}
puts [divisors 10]