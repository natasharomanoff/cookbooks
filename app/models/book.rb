class Book
  include Mongoid::Document
  field :title, type: String
  field :description, type: String

  validates_presence_of :title

  embeds_many :chapters
  belongs_to :user
end
