class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
	t.string :name
	t.text  :description
	t.datetime :starts_at
	t.datetime :ends_at

      t.timestamps null: false
    end
  end
end
