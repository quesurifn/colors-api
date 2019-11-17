class CreateJwtBlacklists < ActiveRecord::Migration[6.0]
  def change
    create_table :jwt_blacklists do |t|
      t.token :string
      t.integer :expiration
      t.timestamps
    end
  end
end
