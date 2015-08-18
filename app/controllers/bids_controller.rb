class BidsController < ApplicationController

    before_filter(:find_auction, only: [:new,:create,:destroy])

  def new
    @bid=@auction.bids.build
  end

  def create
    @bid = @auction.bids.create(bid_params)
    redirect_to(@auction)
  end

  def destroy
    #@a.destroy
    #redirect_to(@auction)
  end

  private

  def bid_params
    params.require(:bid).permit(:amount_in_pence)
  end

  def find_auction
     @auction = Auction.find(params[:auction_id])
  end

end
