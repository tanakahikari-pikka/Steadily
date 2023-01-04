class Log < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :title, presence: true, length: {maximum: 255}
  validates :category, presence: true, length: {maximum: 255}
  validates :achieve, presence: true, length: {maximum: 2056}
  validates :study_record, presence: true
end
