class ZoneSerializer < ActiveModel::Serializer
  attributes :id, :is_active, :is_complete, :objective, :zone_start, :zone_start_date, :zone_start_month, :zone_start_year, :zone_start_hours, :zone_start_minutes, :zone_start_seconds, :zone_end, :premature_end, :total_objective_time
  # has_one :user
  has_one :tag
  has_one :trinket
  has_one :region
end
