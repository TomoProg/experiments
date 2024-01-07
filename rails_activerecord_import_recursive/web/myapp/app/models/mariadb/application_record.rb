module Mariadb
  class ApplicationRecord < ::ApplicationRecord
    self.abstract_class = true
    connects_to database: { writing: :mariadb, reading: :mariadb }
  end
end
