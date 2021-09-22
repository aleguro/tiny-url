class Url < ApplicationRecord
  include Shortable

  validates_presence_of :url
  validates :url, format: URI::regexp(%w[http https])

  has_many :visits
  has_many :users, through: :visits
  shortify regular_attribute: :url, shorter_attribute: :short_url
end
