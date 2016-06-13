class BooksmarksController < ApplicationController
  before_action :set_booksmark, only: [:show, :edit, :update, :destroy]

  # GET /booksmarks
  # GET /booksmarks.json
  def index
    @booksmarks = Booksmark.all
  end

  # GET /booksmarks/1
  # GET /booksmarks/1.json
  def show
  end

  # GET /booksmarks/new
  def new
    @booksmark = Booksmark.new
  end

  # GET /booksmarks/1/edit
  def edit
  end

  # POST /booksmarks
  # POST /booksmarks.json
  def create
    @booksmark = Booksmark.new(booksmark_params)

    respond_to do |format|
      if @booksmark.save
        format.html { redirect_to @booksmark, notice: 'Booksmark was successfully created.' }
        format.json { render :show, status: :created, location: @booksmark }
      else
        format.html { render :new }
        format.json { render json: @booksmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /booksmarks/1
  # PATCH/PUT /booksmarks/1.json
  def update
    respond_to do |format|
      if @booksmark.update(booksmark_params)
        format.html { redirect_to @booksmark, notice: 'Booksmark was successfully updated.' }
        format.json { render :show, status: :ok, location: @booksmark }
      else
        format.html { render :edit }
        format.json { render json: @booksmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booksmarks/1
  # DELETE /booksmarks/1.json
  def destroy
    @booksmark.destroy
    respond_to do |format|
      format.html { redirect_to booksmarks_url, notice: 'Booksmark was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booksmark
      @booksmark = Booksmark.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booksmark_params
      params.require(:booksmark).permit(:title, :url)
    end
end
