class ForumPost < ApplicationRecord
  belongs_to :user
  validates :topic, presence: true
  validates :content, presence: true
end