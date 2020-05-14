class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true, length: { maximum: 30 }, uniqueness: { case_sensitive: false }
  validates :content, presence: true
end
