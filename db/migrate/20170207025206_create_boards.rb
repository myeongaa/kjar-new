class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :title
      t.text :content
      t.float :star
      t.belongs_to :user
      t.belongs_to :company
      t.timestamps null: false
    end
  end
end
