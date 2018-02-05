class Post
  include Mongoid::Document
  field :title, type: Sting
  field :body, type: String
  embedded_in :author
end
