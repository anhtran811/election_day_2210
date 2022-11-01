require './lib/candidate'

class Race
  attr_reader :office, :candidates

  def initialize(office)
    @office = office
    @candidates = []
  end

  def register_candidate!(candidate)
    new_candidate = Candidate.new(candidate)
    @candidates << new_candidate
    return new_candidate
  end
end
