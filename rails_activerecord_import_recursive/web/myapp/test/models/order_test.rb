require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test "activerecord-import_recursive_mariadb" do
    orders = []
    10.times do |i|
      order = Mariadb::Order.new(user_name: "user_name #{i}")
      2.times do |j|
        order.order_details.build(product_name: "product_name #{i}-#{j}")
      end
      orders << order
    end
    Mariadb::Order.import orders, recursive: true

    assert_equal 10, Mariadb::Order.count
    assert_equal 0, Mariadb::OrderDetail.count
  end

  test "activerecord-import_recursive_postgres" do
    orders = []
    10.times do |i|
      order = Postgres::Order.new(user_name: "user_name #{i}")
      2.times do |j|
        order.order_details.build(product_name: "product_name #{i}-#{j}")
      end
      orders << order
    end
    Postgres::Order.import orders, recursive: true

    assert_equal 10, Postgres::Order.count
    assert_equal 20, Postgres::OrderDetail.count
  end

end
