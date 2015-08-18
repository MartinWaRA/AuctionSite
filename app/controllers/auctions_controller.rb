class AuctionsController < ApplicationController

	before_filter:find_auction, only: [:show,:destroy]


	def index
		@auctions = Auction.all
	end 

	def destroy
		@a.destroy
		redirect_to(auctions_url)
	end

	def new
		@auction = Auction.new
	end

	def create
		@auction = Auction.create(auction_params)
		redirect_to(@auction)
	end
	
	private

	def auction_params
		params.require(:auction).permit(:name,:description)
	end

	def find_auction
		id = params[:id]
		@a = Auction.find(id)
	end
end
