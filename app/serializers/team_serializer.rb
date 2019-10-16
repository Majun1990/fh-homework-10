class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :players
  has_many :players
end
