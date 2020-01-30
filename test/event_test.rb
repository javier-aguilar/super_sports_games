require 'minitest/autorun'
require 'minitest/pride'
require './lib/games'
require './lib/event'

class EventTest < Minitest::Test
  def test_it_exists
    event = "Swimming"
    ages = [24, 30, 18, 20, 41]
    swimming = Event.new(event, ages)

    assert_instance_of Event, swimming
  end

  def test_max_age_is_correct
    event = "Swimming"
    ages = [24, 30, 18, 20, 65]
    swimming = Event.new(event, ages)

    event2 = "Bowling"
    ages2 = [24, 30, 52, 20, 18]
    bowling = Event.new(event2, ages2)

    assert_equal 65, swimming.max_age
    assert_equal 52, bowling.max_age
  end

  def test_min_age_is_correct
    event = "Swimming"
    ages = [24, 30, 17, 20, 65]
    swimming = Event.new(event, ages)

    event2 = "Bowling"
    ages2 = [24, 30, 52, 20, 18]
    bowling = Event.new(event2, ages2)

    assert_equal 17, swimming.min_age
    assert_equal 18, bowling.min_age
  end

end
