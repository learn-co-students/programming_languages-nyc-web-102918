require 'pry'

def reformat_languages(languages)
  
  new_hash = {}
  new_hash = languages[:oo].merge(languages[:functional])
  
  new_hash.each do |name, type|
    new_hash[name][:style] = []
  end
  
  languages.each do |style, data|
    data.each do |language_name, language_type_data|
      if languages[style].has_key?(language_name)
        new_hash[language_name][:style] << style
      end
    end
  end
      
  new_hash
end