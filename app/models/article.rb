class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :email, presence: true,
                    length: { minimum: 5 }
end