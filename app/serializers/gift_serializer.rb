class GiftSerializer < ActiveModel::Serializer
  attributes :id, :name, :gift_img, :description

  belongs_to :person
end
