class LandingPageController < ApplicationController
  def show
    # calculate experience months or years
    @total_calculated_exp = ((Time.now.to_date - '2015-04-01'.to_date).to_f)/30.to_f

     @total_experiance = @total_calculated_exp > 12 ? @total_calculated_exp/12.to_f : (@total_calculated_exp)

     @experiance_fraction = @total_experiance - @total_experiance.to_i

     @round_exp = @experiance_fraction > 0.09 ? (@total_experiance).round(1) : (@total_experiance).to_i

  end
end
