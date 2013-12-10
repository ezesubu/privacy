class Reclamo
  include Mongoid::Document
  field :asunto, type: String
  field :email, type: String

   has_many :user_reclamos
end
