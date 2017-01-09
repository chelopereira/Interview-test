class PublisherHousesController < ApplicationController

	#FALLBACKS
	before_action :set_ph, only: [ :show, :edit, :update, :destroy ]

	# GET
	def index
		@phs = PublisherHouse.all
	end

	# GET
	def show
	end

	# GET
	def edit
	end

	# GET
	def new
		@ph = PublisherHouse.new
	end

	# POST
	def create
		@ph = PublisherHouse.new(ph_params)

		respond_to do |format|
			if @ph.save
				format.html { redirect_to @ph, notice: 'Publisher House was successfully created.' }
				format.json { render :show, status: :created, location: @ph }
			else
				format.htmal { render :new }
				format.json { render json: @ph.errors, status: :unprocessable_entity }
			end
		end	
	end

	# PATCH / PUT
	def update
		respond_to do |format|
			if @ph.update(ph_params)
				format.html { redirect_to @ph, notice: 'Publisher House was successfully updated.' }
				format.json { render :show, status: :ok, location: @ph }
			else
				format.html { render :edit }
				format.json { render json: @ph.errors, status: :unprocessable_entity }
			end
		end	
	end



	# DELETE
	def destroy
		respond_to do |format|
			format.html { redirect_to @ph, notice: 'Publisher House was successfully destroyed.' }
			format.json { head :no_content }
		end
	end


	private
	# COMMON SETUPS -- 
	def set_ph
		@ph = PublisherHouse.find(params[:id])		
	end

	# ALLOWED PARAMETERS
	def ph_params
		params.require(:ph).permit(:name)
	end

end
