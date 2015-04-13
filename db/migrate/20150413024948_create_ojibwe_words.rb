class CreateOjibweWords < ActiveRecord::Migration
  def change
    create_table :ojibwe_words do |t|
      t.string :english_word
      t.text :ojibwe_translation
      t.string :word_type
      t.string :catagory
      t.string :dictionary
      t.string :dialect_locale

      t.timestamps
    end
  end
end
