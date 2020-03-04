
"123 asdasd 123".gsub(/^\d+.\s/, '') # => removes starting digits with space
"asdasd 213".gsub(/\d.*/, '') # => to remove any digits



Line = Struct.new(:time, :type, :msg)
LOG_FORMAT = /(\d{2}:\d{2}) (\w+) (.*)/
def parse_line(line)
  line.match(LOG_FORMAT) { |m| Line.new(*m.captures) }
end
parse_line("12:41 INFO User has logged in.")
#  returns a struct with time , tyoe and msg

# => captures is method of match, returns the matched data in an array