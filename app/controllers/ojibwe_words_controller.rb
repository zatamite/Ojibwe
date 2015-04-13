class OjibweWordsController < ApplicationController
  before_action :set_ojibwe_word, only: [:show, :edit, :update, :destroy]

  # GET /ojibwe_words
  # GET /ojibwe_words.json
  def index
    @ojibwe_words = OjibweWord.all
  end

  # GET /ojibwe_words/1
  # GET /ojibwe_words/1.json
  def show
  end

  # GET /ojibwe_words/new
  def new
    @ojibwe_word = OjibweWord.new
  end

  # GET /ojibwe_words/1/edit
  def edit
  end

  # POST /ojibwe_words
  # POST /ojibwe_words.json
  def create
    @ojibwe_word = OjibweWord.new(ojibwe_word_params)

    respond_to do |format|
      if @ojibwe_word.save
        format.html { redirect_to @ojibwe_word, notice: 'Ojibwe word was successfully created.' }
        format.json { render :show, status: :created, location: @ojibwe_word }
      else
        format.html { render :new }
        format.json { render json: @ojibwe_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ojibwe_words/1
  # PATCH/PUT /ojibwe_words/1.json
  def update
    respond_to do |format|
      if @ojibwe_word.update(ojibwe_word_params)
        format.html { redirect_to @ojibwe_word, notice: 'Ojibwe word was successfully updated.' }
        format.json { render :show, status: :ok, location: @ojibwe_word }
      else
        format.html { render :edit }
        format.json { render json: @ojibwe_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ojibwe_words/1
  # DELETE /ojibwe_words/1.json
  def destroy
    @ojibwe_word.destroy
    respond_to do |format|
      format.html { redirect_to ojibwe_words_url, notice: 'Ojibwe word was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ojibwe_word
      @ojibwe_word = OjibweWord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ojibwe_word_params
      params.require(:ojibwe_word).permit(:english_word, :ojibwe_translation, :word_type, :catagory, :dictionary, :dialect_locale)
    end
end
