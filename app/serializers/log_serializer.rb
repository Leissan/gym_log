class LogSerializer < ActiveModel::Serializer
  attributes :id, :date, :body, :user_id, :exercise_id
end
