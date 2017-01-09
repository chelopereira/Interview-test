class BooksController < ApplicationController

	# CALLBACKS
	before_action :set_book, only: [:show, :edit, :update, :destroy]

	# GET
	def index
		@books = Book.all
	end

	# GET
	def show
	end

	# GET
	def new
		@book = Book.new
	end

	# GET
	def edit
	end

	# POST
	def create
		@book = Book.new(book_params)

		respond_to do |format|
			if @book.save
				format.html { redirect_to @book, notice: 'Book was successfully created.' }
				format.json { render :show, status: :created, location: @book }
			else
				format.html { render :new }
				format.json { render json: @book.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH / PUT
	def update
		respond_to do |format|
			if @book.update(book_params)
				format.html { redirect_to @book, notice: 'Book was successfully updated.' }
				format.json { render :show, status: :ok, location: @book }
			else
				format.html { render :edit }
				format.json { render json: @book.errors, status: :unprocessable_entity }
			end
		end	
	end

	# DELETE
	def destroy
		@book.destroy
		respond_to do |format|
			format.html { redirect_to @book, notice: 'Book was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
	# COMMON SETUP -- CALLBACKS 
	def set_book
		@book = Book.find(params[:id])
	end

	# ALLOWED PARAMETERS
	def book_params
		params.require(:book).permit(:title, :pages, :cover)
	end
end
