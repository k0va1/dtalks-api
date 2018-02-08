# frozen_string_literal: true

class Event < ApplicationRecord
  # Scopes
  scope :passed, -> { where('end_time < ?', Time.now) }
  scope :future, -> { where('start_time > ?', Time.now) }
  # Constants

  # Enums

  # Associations
  has_many :participants, counter_cache: :participants_count
  has_many :users, through: :participants
  # has_many :comments, as: :commentable, dependent: :destroy
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'

  # Validations
  validates :title, :text, :author, :start_time, :end_time, presence: true
  validates :title, length: { in: 5..100 }, uniqueness: true
  validates :text, length: { in: 100..10_000 }

  # Callbacks

  # Uploaders
  # mount_uploader :photo, PhotoUploader

  def location
    return 'online' if online?
    [city, address].join(', ')
  end
end
