require './lib/candidate'
require './lib/race'

RSpec.describe Race do
  it 'exists' do 
    race = Race.new("Texas Governor")

    expect(race).to be_a(Race)
  end

  it 'has an office' do 
    race = Race.new("Texas Governor")

    expect(race.office).to eq("Texas Governor")
  end

  it 'starts without candidates' do 
    race = Race.new("Texas Governor")

    expect(race.candidates).to eq([])
  end

  it 'can register candidates' do 
    race = Race.new("Texas Governor")

    candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})

    expect(race.candidates.first).to eq(candidate1)
  end

  it 'can have a class' do 
    race = Race.new("Texas Governor")

    candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})

    expect(candidate1.class).to eq(Candidate)
  end
  
  it 'can have a name' do 
    race = Race.new("Texas Governor")

    candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})

    expect(candidate1.name).to eq("Diana D")
  end

  it 'can have a party' do 
    race = Race.new("Texas Governor")

    candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})

    expect(candidate1.party).to eq(:democrat)
  end

  it 'can register more candidates' do 
    race = Race.new("Texas Governor")

    candidate2 = race.register_candidate!({name: "Roberto R", party: :republican})

    expect(race.candidates.first).to eq(candidate2)
  end
end