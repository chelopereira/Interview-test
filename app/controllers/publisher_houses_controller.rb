class PublisherHousesController < ApplicationController

	#FALLBACKS
	before_action :set_publisher_house, only: [ :show, :edit, :update, :destroy ]

	# GET
	def index
		@publisher_houses = PublisherHouse.all
	end

	# GET
	def show
	end

	# GET
	def edit
	end

	# GET
	def new
		@publisher_house = PublisherHouse.new
	end

	# POST
	def create
		@publisher_house = PublisherHouse.new(publisher_house_params)

		respond_to do |format|
			if @publisher_house.save
				format.html { redirect_to @publisher_house, notice: 'Publisher House was successfully created.' }
				format.json { render :show, status: :created, location: @publisher_house }
			else
				format.html { render :new }
				format.json { render json: @publisher_house.errors, status: :unprocessable_entity }
			end
		end	
	end

	# PATCH / PUT
	def update
		respond_to do |format|
			if @publisher_house.update(publisher_house_params)
				format.html { redirect_to @publisher_house, notice: 'Publisher House was successfully updated.' }
				format.json { render :show, status: :ok, location: @publisher_house }
			else
				format.html { render :edit }
				format.json { render json: @publisher_house.errors, status: :unprocessable_entity }
			end
		end	
	end



	# DELETE
	def destroy
		respond_to do |format|
			format.html { redirect_to @publisher_house, notice: 'Publisher House was successfully destroyed.' }
			format.json { head :no_content }
		end
	end


	private
	# COMMON SETUPS -- 
	def set_publisher_house
		@publisher_house = PublisherHouse.find(params[:id])		
	end

	# ALLOWED PARAMETERS
	def publisher_house_params
		params.require(:publisher_house).permit(:name)
	end

end
