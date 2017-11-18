class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
  after_initialize :set_defaults

  scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on Rails')}

  def self.angular
    where(subtitle: 'Angular')
  end

  private

  def set_defaults
    self.main_image ||= 'http://placehold.it/600x400'
    self.thumb_image ||= 'http://placehold.it/350x200'
  end
end
