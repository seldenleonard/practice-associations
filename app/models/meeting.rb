class Meeting < ApplicationRecord

  validates presence: true
  validates time: params[:time] > Time.now

  has_many :meeting_speakers
  has_many :speakers, through: :meeting_speakers

end