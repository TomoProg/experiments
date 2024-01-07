module Mariadb
  class OrderDetail < ApplicationRecord
    belongs_to :order
  end
end
