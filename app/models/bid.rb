class Bid < ActiveRecord::Base
    belongs_to :auction

    def amount_in_pounds
      if amount_in_pence.present?
        amount_in_pence / 100.00
      else
        0
      end
    end

end
