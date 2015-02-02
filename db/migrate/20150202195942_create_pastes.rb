class CreatePastes < ActiveRecord::Migration
  def change
    create_table :pastes do |t|
      t.text :body
      t.string :title

      t.timestamps
    end
  end
end
