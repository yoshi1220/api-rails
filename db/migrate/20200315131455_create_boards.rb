class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.text :group_id
      t.text :title
      t.text :name
      t.text :email
      t.text :content
      t.boolean :complete

      t.timestamps
    end
  end
end
