class ProductsController < ApplicationController

	before_filter:find_product, only: [:show,:destroy, :edit, :update]

	def index
		@products = Product.all
	end


	def new
		@page_title = "Create Product"
		@p = Product.new
	end

	def create
		
		@product = Product.create(product_params)
		flash[:notice] = "Created #{@product.title}"
		redirect_to(@product)
	end

	def destroy
		flash[:notice] = "#{@p.title} sucessfully deleted"
		@p.destroy
		redirect_to(products_url)
	end

	def edit
		@page_title = "Edit Product"
	end

	def update
		flash[:notice] = "Product updated"
		@p.update(product_params)
		redirect_to(@p)
	end


	private
	
	def product_params
		params.require(:product).permit(:title,:description)
	end

	def find_product
		id = params[:id]
		@p = Product.find(id)
	end
end
