require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  puts "aaaaa"
  # test "the truth" do
  #   assert true
  # end
  test "mariadb_接続" do
    Mariadb::Order.create(user_name: 'mariadb')

    Postgres::Order.create(user_name: 'postgres')
    binding.pry
  end

end
