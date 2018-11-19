# require modules here
require 'pry'
require 'yaml'

def load_library(file)
  new_hash = {"get_emoticon" => {}, "get_meaning" => {}}
  YAML.load_file(file).each do |a, b|
  #  binding.pry
  english, japanese = b
    new_hash["get_emoticon"][english] = japanese
    new_hash["get_meaning"][japanese] = a
  end
new_hash
end



def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  result = library["get_emoticon"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  result = library["get_meaning"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end
