class Users::BooksController < ApplicationController
  before_filter :authenticate_user!

  def index
    @books = current_user.books
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @books }
    end
  end

  def show
    @book = Book.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book }
    end
  end

  def new
    @book = current_user.books.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book }
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def create
    
    @book = current_user.books.new(params[:book])

    respond_to do |format|
      if @book.save
        format.html { redirect_to books_path(current_user), notice: 'Book was successfully created.' }
        format.json { render json: @book, status: :created, location: @book }
      else
        format.html { render action: "new" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @book = Book.find(params[:id])

    respond_to do |format|
      if @book.update_attributes(params[:book])
        format.html { redirect_to books_path(current_user), notice: 'Book was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    respond_to do |format|
      format.html { redirect_to books_url }
      format.json { head :no_content }
    end
  end


end
