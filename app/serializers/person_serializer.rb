class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :img, :birth_day

  has_many :gifts
end
