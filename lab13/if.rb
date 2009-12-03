require 'yaml' # don't remove this line!
require 'pp'   # this lets us "pretty print" hashes and other objects

# you'll want to change the code below to read in a filename then load it
rooms = nil
File.open('hauntedhouse.yaml') do |f|
  rooms = YAML::load(f)
end

pp rooms # delete this and add your own code here!
