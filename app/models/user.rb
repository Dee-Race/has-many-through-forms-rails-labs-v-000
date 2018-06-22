class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  accepts_nested_attributes_for :user, reject_if: :all_blank
end
