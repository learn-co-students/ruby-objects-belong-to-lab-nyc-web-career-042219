require "spec_helper"

describe "Song" do
  let!(:song) { Song.new }
  it "has a title" do
    song.title = "7/11"
    expect(song.title).to eq("7/11")
  end

  it "belongs to an artist" do
    artist = Artist.new
    song.artist = artist
    expect(song.artist).to eq(artist)
  end

  it "knows the name of the artist it belongs to" do
    a1 = Artist.new
    a1.name = "Beyonce"
    song.artist = a1
    expect(song.artist.name).to eq("Beyonce")
  end
end
