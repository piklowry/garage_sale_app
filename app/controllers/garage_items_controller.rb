class GarageItemsController < ApplicationController


  # Get '/garage_items'
	def index
	@garage_items = GarageItem.all
	end

		# Get '/garage_items/new'
	def new
		@new_item = GarageItem.new
	end


	# POST '/garage_items/new'
	def create
		@new_item = GarageItem.new(garage_item_params)
		if @new_item.save
			redirect_to garage_items_path(@product) 
		end
	end

# Get '/garage_items/:id'
	def show
		@product = GarageItem.find(params[:id])
	end

	# GET '/garage_items/:id/edit'
	def edit
		@product = GarageItem.find(params[:id])
	end

	#PATCH/PUT '/garage_item/:id'

	def update
		@product = GarageItem.find(params[:id])
		if @product.update_attributes(garage_item_params)
			redirect_to "/garage_items"
		end
	end

  def destroy
	@product = GarageItem.find(params[:id])
	@product.destroy
	redirect_to "/garage_items"
  end


	
   private

   def garage_item_params
   	params.require(:garage_item).permit!
   end
end
