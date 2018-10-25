require "pry"

def reformat_languages(languages)
  new_hash = {}
  type_hash = {}
  style_array = []
  both_styles = []
  both_styles_language = ""
  oo_languages = languages[:oo].keys
  functional_languages = languages[:functional].keys
  oo_languages.each do |lang|
    if functional_languages.include?(lang)
      both_styles_language = lang
    end
  end
  languages.each do |style, language|
    style_array << style
    both_styles << style
    language.each do |lang, type|
      type_hash = type
      new_hash[lang] = type_hash
      if lang == both_styles_language
        new_hash[lang][:style] = both_styles
      else
        new_hash[lang][:style] = style_array
      end
    end
    style_array = []
  end
  new_hash
end
