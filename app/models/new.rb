class New
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :title, type: String
  field :content, type: String
  field :createTime, type: Integer
end
