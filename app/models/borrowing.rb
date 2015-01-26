class Borrowing < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  validates :user_id, presence: true
end
