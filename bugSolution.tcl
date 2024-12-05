proc count_words {text} {
  # Use regsub to remove extra spaces before splitting
  regsub -all {\s+} $text " " text
  set words [split $text " "]
  return [llength $words]
}
puts [count_words "This  is a test."] ; # Output: 4 (correct)