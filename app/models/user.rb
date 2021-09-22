class User < ApplicationRecord
  has_many :visits
  has_many :urls, through: :visits

	validates_presence_of :ip
end
