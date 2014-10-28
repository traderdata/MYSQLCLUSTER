class CreateClusters < ActiveRecord::Migration
  def change
    create_table :clusters do |t|
      t.string :name
      t.string :datacenter
      t.string :region

      t.timestamps
    end
  end
end
