class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :age, :position
  belongs_to :team, optional: true
end
