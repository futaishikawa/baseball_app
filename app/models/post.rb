class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates:content,{presence:true,length:{maximum:300}}
  validates:day , presence: true

end
