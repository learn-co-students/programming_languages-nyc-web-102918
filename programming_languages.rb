def reformat_languages(languages)
  out = {}
  
  languages.each do |style, lang|
    lang.each do |k, val|
      unless out[k]
        out[k] = val
        out[k][:style] = []
      end
      out[k][:style] << style
    end
  end
  
  out
end
