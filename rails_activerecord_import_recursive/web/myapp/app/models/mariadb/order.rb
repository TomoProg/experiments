module Mariadb
  class Order < ApplicationRecord
    has_many :order_details
  end
end
