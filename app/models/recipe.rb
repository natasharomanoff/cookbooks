class Recipe
  include Mongoid::Document
  field :problem_title, type: String
  field :problem_description, type: String
  field :solution, type: String

  validates_presence_of :problem_title

  embedded_in :chapter
end