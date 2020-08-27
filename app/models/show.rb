class Show < ActiveRecord::Base
  
  def self.highest_rating
    Show.maximum(:rating)
  end
  
  def self.most_popular_show
    Show.order(rating: :desc).limit(1)[0]
  end
  
  def self.lowest_rating
    Show.minimum(:rating)
  end
  
  def self.least_popular_show
    Show.irder(rating: :asc_).limit(1)[0]
  end
  
  def self.popular_shows
    Show.where("rating > 5")
  end
  
  def self.showd_by_alphabetical_order
    Show.order(name: :asc)
  end
end