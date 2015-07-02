# $ ruby cat.rb file1 file2
# this
# is
# file1
# THIS
# IS
# FILE2

# take in the input from multiple files
file_1_input = File.read ARGV[0]
file_2_input = File.read ARGV[1]

# save this input as a single string.
total_input = file_1_input + file_2_input

# Display this input back to the cli
$stdout.puts total_input
