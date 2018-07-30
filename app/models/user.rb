class User < ApplicationRecord
  validates :username, uniqueness: true
  validates :username, format: { without: /\s/ }

  def to_param
    username
  end
end
