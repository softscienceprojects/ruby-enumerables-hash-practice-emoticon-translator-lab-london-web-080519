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
  #load_library(path)
  #calls on load library and gives it the argument of the file path

  #load_library(path)["get_emoticon"].include?(emoticon)

  load_library(path)["get_emoticon"].each do |k, v|

     p "en: #{en} - jp: #{jp}"
  # else "Sorry, that emoticon was not found"
    end
  end
end

def get_english_meaning(path, emoticon)
  # code goes here
  #returns the english meaning
end
