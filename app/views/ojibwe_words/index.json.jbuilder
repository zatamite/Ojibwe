json.array!(@ojibwe_words) do |ojibwe_word|
  json.extract! ojibwe_word, :id, :english_word, :ojibwe_translation, :word_type, :catagory, :dictionary, :dialect_locale
  json.url ojibwe_word_url(ojibwe_word, format: :json)
end
