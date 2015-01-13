class Book < ActiveRecord::Base
  # refer user model      * http://www.atmarkit.co.jp/ait/articles/1406/30/news030.html
  belongs_to :user

  has_many :taggings
  has_many :tags, through: :taggings


  scope    :tagged_recommended, -> { joins(:tags).where(tags: { name: 'recommended' } )}
end
