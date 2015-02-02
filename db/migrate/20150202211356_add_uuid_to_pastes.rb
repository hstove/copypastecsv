class AddUuidToPastes < ActiveRecord::Migration
  def change
    add_column :pastes, :uuid, :string
    add_index :pastes, :uuid

    Paste.all.each do |p|
      p.save!
    end
  end
end
