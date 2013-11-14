class User
  include Mongoid::Document
  field :name, type: String
  field :lastname, type: String
end
