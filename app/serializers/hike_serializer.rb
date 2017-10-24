class HikeSerializer < ActiveModel::Serializer
  attributes :id, :hike_date, :hike_name, :city, :state, :elevation_gain, :miles_rt, :difficulty, :rating, :notes, :created_at, :updated_at
end
