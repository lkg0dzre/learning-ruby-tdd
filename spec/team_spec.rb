require_relative "../lib/team.rb"

describe Team do

  it "has a name" do
    Team.new("Some name").should respond_to :name
  end

  it "has a list of players" do
    Team.new("Some name").players.should be_kind_of Array
  end

  it "is favored if it has a celebrity in it" do
    Team.new("Some name", ["George Clooney", "Just Joe"]).should be_favored
  end

  it "complains if there is a bad word in the name" do
    expect {Team.new("Wet Cunt")}.to raise_error
  end

  context "given a bad list of players" do
    let(:bad_players) { {} }
    it "fails to create given a bad list of players" do
      expect {Team.new("Some name", bad_players)}.to raise_error
    end
  end

end
