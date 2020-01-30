require './lib/games'
require './lib/event'

@event = ''
@games = ''
@year_entered = false

def create_event
  puts "Please enter an event name:"
  event_name  = gets.chomp()

  puts "Finally, enter the ages of each contestant in the event:"
  puts "Type 'end' once you're done entering ages"

  ages = []
  switch = false
  while(switch == false)
    age = gets.chomp()
    if(age == 'end')
      switch = true
    elsif
      ages << age.to_i
    end
  end
  @event = Event.new(event_name, ages)
  @games.add_event(@event)
end

def show_summary
  puts "******************************************************"
  puts "Summary:"
  puts "------------------------------------------------------"
  puts @games.summary
end

def start_program
  puts ""
  puts "Hello there! Welcome to the Super Sports Games Program"
  if(@year_entered == false)
    enter_year
  end
  puts "******************************************************"
  puts "Press 1 to create an event"
  puts "Press 2 to look at a summary of all the events"
  puts "Press 3 to quit"

end

def enter_year
  puts "Before we get started, please enter a year:"
  year = gets.chomp()
  @games = Games.new(year)
  @year_entered = true
end

switch = false
while(switch == false)
  start_program
  answer = gets.chomp()
  case answer
    when "1"
      create_event
    when "2"
      if(@event.nil?)
        puts ""
        puts "Please create an event first"
      else
        show_summary
      end
    when "3"
      break
    else
      puts "Error"
  end
end
