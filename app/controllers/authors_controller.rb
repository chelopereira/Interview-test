class AuthorsController < ApplicationController

	# CALLBACKS
	before_action :set_author, only: [:show, :edit, :update, :destroy]

	# GET
	def index
		@authors = Author.all
	end

	# GET
	def show
	end

	# GET
	def new
		@author = Author.new
	end

	# GET
	def edit
	end

	# POST
	def create
		@author = Author.new(author_params)

		respond_to do |format|
			if @author.save
				format.html { redirect_to @author, notice: 'Author was successfully created.' }
				format.json { render :show, status: :created, location: @author }
			else
				format.html { render :new }
				format.json { render json: @author.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH / PUT
	def update
		respond_to do |format|
			if @author.update(author_params)
				format.html { redirect_to @author, notice: 'Author was successfully updated.' }
				format.json { render :show, status: :ok, location: @author }
			else
				format.html { render :edit }
				format.json { render json: @author.errors, status: :unprocessable_entity }
			end
		end	
	end


	# DELETE
	def destroy
		@author.destroy
		respond_to do |format|
			format.html { redirect_to @author, notice: 'Author was successfully destroyed.' }
			format.json { head :no_content }
		end
	end
	


	private
	# COMMON SETUP -- CALLBACKS 
	def set_author
		@author = Author.find(params[:id])
	end

	# ALLOWED PARAMETERS
	def author_params
		params.require(:author).permit(:first_name, :last_name, :birthday)
	end




end
