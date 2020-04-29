class Listing < ApplicationRecord
  belongs_to :host, :class_name => :User
  belongs_to :neighborhood 
  belongs_to :city 
  has_many :reservations
  has_many :reviews, through: :reservations
  has_many :guests, through: :reservations
  end
