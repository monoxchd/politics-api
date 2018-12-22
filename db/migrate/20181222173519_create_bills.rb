class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.belongs_to :user, index: true
      t.integer   :ext_id, null: false
      t.string    :author
      t.string    :kind
      t.integer   :number, null: false
      t.integer   :year, null: false
      t.string    :status
      t.text      :description, null: false
      t.text      :steps, array: true
      t.string    :link
      t.date      :introduction_date
      
      t.timestamps
    end
  end
end
