class CreatePostImages < ActiveRecord::Migration[6.1]
  def change
    create_table :post_images do |t|
      t.string :shop_name
      t.text :caption
      t.integer :user_id
    　#rails db:migrate:statusでupしているファイルを確認する
      #rails db:rollbackでupしたデータバンクを回収・編集できる
      #*但しrollbackは1個上のデータを選ぶので２個上の場合、
      #rollbackを2回行う
    　#変更後rails db:migrate でup
      t.timestamps
    end
  end
end
