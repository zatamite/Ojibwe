require 'test_helper'

class OjibweWordsControllerTest < ActionController::TestCase
  setup do
    @ojibwe_word = ojibwe_words(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ojibwe_words)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ojibwe_word" do
    assert_difference('OjibweWord.count') do
      post :create, ojibwe_word: { catagory: @ojibwe_word.catagory, dialect_locale: @ojibwe_word.dialect_locale, dictionary: @ojibwe_word.dictionary, english_word: @ojibwe_word.english_word, ojibwe_translation: @ojibwe_word.ojibwe_translation, word_type: @ojibwe_word.word_type }
    end

    assert_redirected_to ojibwe_word_path(assigns(:ojibwe_word))
  end

  test "should show ojibwe_word" do
    get :show, id: @ojibwe_word
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ojibwe_word
    assert_response :success
  end

  test "should update ojibwe_word" do
    patch :update, id: @ojibwe_word, ojibwe_word: { catagory: @ojibwe_word.catagory, dialect_locale: @ojibwe_word.dialect_locale, dictionary: @ojibwe_word.dictionary, english_word: @ojibwe_word.english_word, ojibwe_translation: @ojibwe_word.ojibwe_translation, word_type: @ojibwe_word.word_type }
    assert_redirected_to ojibwe_word_path(assigns(:ojibwe_word))
  end

  test "should destroy ojibwe_word" do
    assert_difference('OjibweWord.count', -1) do
      delete :destroy, id: @ojibwe_word
    end

    assert_redirected_to ojibwe_words_path
  end
end
