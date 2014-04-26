class LogEntry < ActiveRecord::Base
  belongs_to :wine


	RATING = 1..5
	validates :name, :comments, presence: true
	validates :comments, length: { minimum: 15 }, unless: 'comments.blank?'
	validates :rating, inclusion: { in: RATING, message: "must be from #{RATING.first} to #{RATING.last}" }
	validates :location, presence: true
	validates :tasted_on, timeliness: { on_or_before: lambda { Date.current }, type: :date }, presence: true
end
