module Postgres
  class ApplicationRecord < ::ApplicationRecord
    self.abstract_class = true
    connects_to database: { writing: :postgres, reading: :postgres }
  end
end
