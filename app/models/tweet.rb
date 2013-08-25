class Tweet < ActiveRecord::Base
  attr_accessible :status, :zombie_id, :location
  before_save :has_location?
  after_update :log_update
  after_destroy :log_destroy
  scope :recent, order("created_at desc").limit(4)
  scope :graveyard, where(show_location: true, location: "graveyard")

  def has_location?
    self.show_location = true if self.location?
  end

  def log_update
    logger.info "Tweet #{id} updated"
  end

  def log_destroy
    logger.info "Tweet #{id} deleted"
  end

end
