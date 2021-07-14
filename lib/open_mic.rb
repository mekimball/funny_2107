class OpenMic
attr_reader :location, :date

  def initialize(location:, date:)
    @location = location
    @date = date
    @performers = []
    @repeated_jokes = false
  end

  def welcome(user)
    @performers << user
  end

  def performers
    @performers
  end

  def repeated_jokes?
    @repeated_jokes
    @jokes.detect do |joke|
      joke.id == @jokes.id
    end
  end
end
