# $ ruby echo.rb a b c
# a b c

# First load a file called echo that accepts a hash of arguments

# print a summary back to the screen

ARGV.size.times { |i|
  $stdout.print "#{ARGV[i]} "
}
