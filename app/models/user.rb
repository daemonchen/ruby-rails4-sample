class User
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :username, type: String
  field :password, type: String
end
