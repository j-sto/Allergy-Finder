require('rspec')
require('allergies')

describe('allergy_finder') do
  it("takes a score equal to an allergy value and returns that allergy") do
    allergy_finder(128).should(eq(["cats"]))
  end

  it("takes a score equal to the sum of two allergy values and returns those two allergies") do
    allergy_finder(10).should(eq(["strawberries", "peanuts"]))
  end

  it("takes any score and returns all of the possible allergies related to the score") do
    allergy_finder(255).should(eq(["cats", "pollen", "chocolate", "tomatoes", "strawberries", "shellfish", "peanuts", "eggs"]))
  end

end


