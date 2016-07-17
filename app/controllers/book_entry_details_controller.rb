class BookEntryDetailsController < ApplicationController
  before_action :set_book_entry_detail, only: [:show, :edit, :update, :destroy]

  # GET /book_entry_details
  # GET /book_entry_details.json
  def index
    @book_entry_details = BookEntryDetail.all
  end

  # GET /book_entry_details/1
  # GET /book_entry_details/1.json
  def show
  end

  # GET /book_entry_details/new
  def new
    @book_entry_detail = BookEntryDetail.new
    @books = Book.all
    @book_entires = BookEntry.all
  end

  # GET /book_entry_details/1/edit
  def edit
    @book_entry_detail = BookEntryDetail.find(params[:id])
    @book_entires = BookEntry.all
    @books = Book.all

  end

  # POST /book_entry_details
  # POST /book_entry_details.json
  def create
    @book_entry_detail = BookEntryDetail.new(book_entry_detail_params)

    respond_to do |format|
      if @book_entry_detail.save
        format.html { redirect_to @book_entry_detail, notice: 'Book entry detail was successfully created.' }
        format.json { render :show, status: :created, location: @book_entry_detail }
      else
        format.html { render :new }
        format.json { render json: @book_entry_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_entry_details/1
  # PATCH/PUT /book_entry_details/1.json
  def update
    respond_to do |format|
      if @book_entry_detail.update(book_entry_detail_params)
        format.html { redirect_to @book_entry_detail, notice: 'Book entry detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_entry_detail }
      else
        format.html { render :edit }
        format.json { render json: @book_entry_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_entry_details/1
  # DELETE /book_entry_details/1.json
  def destroy
    @book_entry_detail.destroy
    respond_to do |format|
      format.html { redirect_to book_entry_details_url, notice: 'Book entry detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_entry_detail
      @book_entry_detail = BookEntryDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_entry_detail_params
      params.require(:book_entry_detail).permit(:bookentrydetail_titulo, :bookentrydetail_cantidad_ejemplares, :bookentry_id, :book_id)
    end
end
