require "pry"
def reformat_languages(languages)
  new_hash = {}
#  style_array = []

  languages.each do |style, language| #:oo, :functional
#    style_array = []
    language.each do |key, value| #:ruby, :javascript, :python, etc
      if !new_hash.include?(key)
        new_hash[key] = {:type => value[:type], :style => []}
        new_hash[key][:style] << style

      else
        new_hash[key][:style] << style

      end
#      binding.pry
    end
  end
  new_hash
end
