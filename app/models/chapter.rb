class Chapter
  include Mongoid::Document
  field :title, type: String


  validates_presence_of :title

  embedded_in :book
  embeds_many :recipes
end
