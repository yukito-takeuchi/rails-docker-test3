class CreateMessages < ActiveRecord::Migration[7.2]
  def change
    create_table :messages do |t|
      t.bigint :sender_id, null: false # integer を bigint に変更
      t.bigint :receiver_id, null: false # integer を bigint に変更
      t.text :content

      t.timestamps
    end
    add_foreign_key :messages, :users, column: :sender_id
    add_foreign_key :messages, :users, column: :receiver_id
  end
end
