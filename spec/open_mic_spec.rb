require './lib/open_mic'
require './lib/user'
require './lib/joke'
require 'pry'

RSpec.describe OpenMic do
  it 'exists' do
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    expect(open_mic).to be_a(OpenMic)
    expect(open_mic.location).to eq("Comedy Works")
    expect(open_mic.date).to eq("11-20-18")
    expect(open_mic.performers).to eq([])
  end

  it 'welcomes users' do
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    user_1 = User.new("Sal")
    user_2 = User.new("Ali")
    open_mic.welcome(user_1)
    open_mic.welcome(user_2)
    open_mic.performers
    joke_1 = Joke.new(22, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(13, "How do you keep a lion from charging?", "Take away its credit cards.")
    user_2.learn(joke_1)
    user_2.learn(joke_2)
    expect(open_mic.repeated_jokes?).to eq(false)
    user_1.learn(joke_1)
    # user_1.learn(joke_2)
    # binding.pry
    open_mic.repeated_jokes?
    # expect(open_mic.repeated_jokes?).to eq(true)
  end
end
