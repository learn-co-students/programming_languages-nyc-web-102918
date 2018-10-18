def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    language.each do |language_name, attribute|
      if new_hash[language_name] == nil
          new_hash[language_name] = attribute
        end
      new_hash[language_name][:style] = []
      new_hash[language_name][:style] << style
    end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
end




 
