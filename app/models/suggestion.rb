class Suggestion < ApplicationRecord
  validates :title, :body, :author, presence: true
end
