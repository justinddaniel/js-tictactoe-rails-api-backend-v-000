class GameSerializer < ActiveModel::Serializer
  serialize :state, Array
end
