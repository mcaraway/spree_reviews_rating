Spree::Product.class_eval do
  has_many :reviews

  def get_stars
    {:star => ((2.0 * self.avg_rating).round / 2.0), :rcount => reviews_count}
  end

  def recalculate_rating
    reviews_count = reviews.reload.approved.where('rating IS NOT NULL').count
    self.avg_rating = (reviews_count > 0) ? (self.reviews.approved.sum(:rating).to_f / reviews_count) : 0
    self.update_attributes(:avg_rating => avg_rating, :reviews_count => reviews_count)
  end
  
  attr_accessible :avg_rating, :reviews_count
  
end
