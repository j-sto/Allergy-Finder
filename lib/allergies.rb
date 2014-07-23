
def allergy_finder(score)
  allergies = { 128 => "cats",
                64 => "pollen",
                32 => "chocolate",
                16 => "tomatoes",
                8 => "strawberries",
                4 => "shellfish",
                2 => "peanuts",
                1 => "eggs" }

  finalArr = []

  allergies.each do |allergynumber, allergyname|
    if allergynumber <= score
      finalArr.push allergies[allergynumber]
      score -= allergynumber
    end
  end
finalArr
end
