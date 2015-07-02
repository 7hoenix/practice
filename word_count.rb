# get the input from a file
# count the number of lines
# count the number of words
# count the number of characters
# add the numbers to our total value
# display the output back to the screen
# write a loop around the whole thing so we can do it for multiple things.

number_of_files = ARGV.size

total = { lines: 0,
          words: 0,
          characters: 0,
          file_name: "total"
        }

number_of_files.times do |n|
  i = n - 1
    input_file = File.read ARGV[i]
    line_count = input_file.lines.count
    word_count = input_file.split(' ').count
    character_count = input_file.chars.count

    current_file = {  lines: line_count,
                      words: word_count,
                      characters: character_count,
                      file_name: ARGV[i]
                    }

    total[:lines] += line_count
    total[:words] += word_count
    total[:characters] += character_count

    $stdout.puts  "#{current_file[:lines]} #{current_file[:words]} " +
                  "#{current_file[:characters]} #{current_file[:file_name]}"
end
$stdout.puts  "#{total[:lines]} #{total[:words]} #{total[:characters]} " +
              "#{total[:file_name]}"
