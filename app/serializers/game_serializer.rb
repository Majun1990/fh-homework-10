class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :home_team_id, :away_team_id

  belongs_to :home_team, class_name: 'Team'
  belongs_to :away_team, class_name: 'Team'
end
