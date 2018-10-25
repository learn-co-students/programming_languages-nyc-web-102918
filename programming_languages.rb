require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
      language.each do |name, data|
        data.each do |type, value|
          if new_hash.has_key?(name)
            new_hash[name][:style] << style
          else new_hash[name] = {type => value, :style => [style]}
        end
      end
    end
  end
  new_hash
end
