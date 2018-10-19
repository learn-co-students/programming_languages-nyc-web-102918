#require 'pry'
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    language.each do |name, type|
      new_hash[name] ||= type
      new_hash[name][:style] ||= []
      new_hash[name][:style] << style
    end
  end
  new_hash
end


  # style_value = []
  #
  # languages_by_style.each do |style, languages_by_style|
  #   new_hash.merge!(languages_by_style)     # can not use << for hash.
  #   style_value.push(style)                # got :oo and :functional in 2nd loop. It is not overwrite?
  #
  #   new_hash.each do |each_language, property|
  #
  #     if !new_hash[each_language][:style]
  #       new_hash[each_language][:style] = style_value
  #     else
  #       new_hash[each_language][:style] << style_value
  #     end
  #
  #   end




# add the style hash here for each language, but javascript will be a problem.
# make a condition for JS?
# how 2nd iteration overwrite the first one, they under different languages, except JS.
