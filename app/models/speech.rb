class Speech < ApplicationRecord
  belongs_to :speaker
  belongs_to :category

  has_many :contributions, dependent: :destroy

  validates_presence_of :title, :date, :content, :category, :country
  validate :date_cannot_be_in_future

  def self.filtered_by(speeches, opts = {})
    filtered_results = speeches
    filtered_results.where( if opts[:date_min]
  end

  private

  def date_cannot_be_in_future
    if date
      errors.add(:date, "can't be in the future") if Date.today < date
    end
  end
end
