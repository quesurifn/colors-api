class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string :slug
      t.string :value
      t.timestamps
    end
  end
end
