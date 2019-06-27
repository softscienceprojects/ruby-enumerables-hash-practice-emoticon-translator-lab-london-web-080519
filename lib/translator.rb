# require modules here
# $LOAD_PATH.unshift('.')
# require "emoticons.yml"

require 'yaml'

def load_library(path)

 myresult = {
   "get_meaning" => {},
   "get_emoticon" => {}
 }

   # YAML.load(File.read(path)).values.each {|k,v|  myresult["get_meaning"][v] =  }

   YAML.load(File.read(path)).each do |a,b|
     myresult["get_meaning"][b[1]] = a
     myresult["get_emoticon"][b[0]] = b[1]
   end
  myresult
end


def get_japanese_emoticon(path, emoticon)
  #load_library(path)["get_emoticon"].include?(emoticon)
  answer = ""
  load_library(path)["get_emoticon"].each do |k, v|
    if k.include?(emoticon)
       answer = v
    if !k.include?(emoticon)
     answer = "Sorry, that emoticon was not found"
   end
  end
  answer
end



def get_english_meaning(path, emoticon)
  # code goes here
  #returns the english meaning
end
