class Election
  attr_reader :year, :races, :candidates

  def initialize(year)
    @year = year
    @races = []
  end

  def add_race(race)
    @races << race
  end

  def candidates
    candidates_per_race  = []
    @races.each do |race|
      candidates_per_race << race.candidates
    end
    candidates_per_race.flatten
  end

  # def vote_for!
  #   votes_per_candidate = []
  #   @candidates.each do |candidate|
  #     candidate.votes
  #   end
  #   votes_per_candidate 
  #   #expecting this to be 4, 1, 10, 6, 6
  # end

  def vote_counts
    vote_numbers = {}
    candidates.each do |candidate|
      [candidate.name] == candidate.votes
    end
    vote_numbers
  end  
end
