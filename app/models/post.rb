class Post < ActiveRecord::Base
  #dependent makes it so that when you destroy a post the comments go as well.
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true
end

