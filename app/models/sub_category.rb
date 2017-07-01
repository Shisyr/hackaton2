class SubCategory < ApplicationRecord
  has_many :posts
  belongs_to :category
  validates :title, presence: true
  validates :category_id, presence: true

end
