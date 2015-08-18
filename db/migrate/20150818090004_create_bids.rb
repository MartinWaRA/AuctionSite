class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :amount_in_pence
      t.integer :auction_id
      t.timestamps null: false
    end
  end
end
