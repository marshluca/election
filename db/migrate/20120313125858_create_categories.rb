class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :desc
      t.string :icon_url
      t.integer :count, :default => 0
      t.integer :status, :default => 1

      t.timestamps
    end
  end
end
