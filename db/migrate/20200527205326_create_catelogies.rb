class CreateCatelogies < ActiveRecord::Migration[6.0]
  def change
    create_table :catelogies do |t|
       t.string :name
       t.string :catelogy

      t.timestamps
    end
  end
end
