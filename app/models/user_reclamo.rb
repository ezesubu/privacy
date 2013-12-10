class UserReclamo
  include Mongoid::Document
  field :user_name, type: String
  field :text_reclamo, type: String
  field :date, type: Date

  belongs_to :reclamo
end
