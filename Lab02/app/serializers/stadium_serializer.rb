class StadiumSerializer < ActiveModel::Serializer
  attributes :name_stadium, :city, :date_build, :capacity
end
