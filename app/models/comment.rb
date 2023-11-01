class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :question

  validates :contents, presence: true
end
