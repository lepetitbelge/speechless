class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    speech_suggestions
  end

  private

  def speech_suggestions
    speeches = Speech.all
    @all_time_speeches = speeches.sort_by(&:vote_sum).reverse.first(3)
    @trending_speeches = speeches.sort_by(&:date).reverse.first(3)
  end

end
