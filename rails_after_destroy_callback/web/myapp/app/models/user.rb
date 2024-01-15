class User < ApplicationRecord
  after_destroy :sample_func

  def sample_func
    p "#{self.name}が削除されました"
  end
end
