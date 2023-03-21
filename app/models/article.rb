class Article < ApplicationRecord
  has_many :comments
  validates :email, presence: true,
                    length: { minimum: 5 }
end