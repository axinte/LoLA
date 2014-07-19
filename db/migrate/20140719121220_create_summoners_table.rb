class CreateSummonersTable < ActiveRecord::Migration
  def change
    create_table :summoners do |t|
      t.string :summoner_id
      t.string :name
      t.string :profile_icon_id
      t.string :revision_date
      t.string :revision_date_str
      t.integer :summoner_level
    end
  end
end
