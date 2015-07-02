# bring in text from a file
markdown_text = File.read ARGV[0]

# convert the text into html
require 'redcarpet'
renderer = Redcarpet::Render::HTML.new
markdown = Redcarpet::Markdown.new(renderer)
html_text = markdown.render(markdown_text)

# output the html text into an output file
File.write ARGV[1], html_text

# display the summary
$stdout.puts "Converted #{ARGV[0]} (#{markdown_text.lines.count} lines) to #{ARGV[1]} (#{html_text.lines.count} lines)"
