require 'rails_helper'

RSpec.describe Borrowing, :type => :model do
  it "is not valid without user_id" do
    borrowing = Borrowing.new
    borrowing.user_id = nil
    expect(borrowing).not_to be_valid
  end
end
