class CreateTvshows < ActiveRecord::Migration[5.2]
  def change

    create_table :tvshows do |t|
      t.string :name, default: "no name"
      t.string :genre, default: "undefined"
      t.integer :runtime, default: 0
      t.string :website, default: "none"
      t.integer :rating, default: 0
      t.string :thumbnail
      t.string :poster
      t.string :summary, default: "no summary available"


      t.timestamps
    end
  end
end
