class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :body, type: String
  belongs_to :user

  validates_presence_of :title, :user, :body
  validates_uniqueness_of :title
end
