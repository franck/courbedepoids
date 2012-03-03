class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.decimal :weight, :precision => 4, :scale => 1
      t.date    :sampled_at
      t.timestamps
    end
  end
end
