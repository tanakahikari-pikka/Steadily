class Category < ApplicationRecord
  has_many :logs, dependent: :destroy
  has_many :users, :through => :logs, dependent: :destroy

  validates :name, uniqueness: true, presence: true, length: {maximum: 255}
end
