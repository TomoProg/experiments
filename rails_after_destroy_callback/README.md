# after_destroy_callback
after_destroyの実験
after_destroyでselfの参照ができる？

## 実験結果
```
irb(main):017:0> a = User.create!(name: 'tomoprog')
  TRANSACTION (0.2ms)  BEGIN
  User Create (0.4ms)  INSERT INTO `users` (`name`, `created_at`, `updated_at`) VALUES ('tomoprog', '2024-01-15 21:15:17.208044', '2024-01-15 21:15:17.208044')
  TRANSACTION (1.9ms)  COMMIT
=> #<User:0x00007fc704cba570 id: 4, name: "tomoprog", created_at: Mon, 15 Jan 2024 21:15:17.208044000 UTC +00:00, updated_at: Mon, 15 Jan 2024 21:15:17.208044000 UTC +00:00>
irb(main):018:0> a.destroy
  TRANSACTION (0.3ms)  BEGIN
  User Destroy (0.6ms)  DELETE FROM `users` WHERE `users`.`id` = 4
"tomoprogが削除されました"
  TRANSACTION (5.4ms)  COMMIT
=> #<User:0x00007fc704cba570 id: 4, name: "tomoprog", created_at: Mon, 15 Jan 2024 21:15:17.208044000 UTC +00:00, updated_at: Mon, 15 Jan 2024 21:15:17.208044000 UTC +00:00>
irb(main):019:0> a
=> #<User:0x00007fc704cba570 id: 4, name: "tomoprog", created_at: Mon, 15 Jan 2024 21:15:17.208044000 UTC +00:00, updated_at: Mon, 15 Jan 2024 21:15:17.208044000 UTC +00:00>
irb(main):020:0> a.save!
/usr/local/bundle/gems/activerecord-7.0.4.2/lib/active_record/persistence.rb:648:in `save!': Failed to save the record (ActiveRecord::RecordNotSaved)
```
