class Event
attr_accessor :start_date
attr_accessor :duration
attr_accessor :title
attr_accessor :attendees

def initialize(istart_date,iduration,ititle,*iattendees)
@start_date=Time.parse(istart_date)
@duration=iduration.to_i
@title=ititle
@attendees=*iattendees
end

def postpone_24h
  @start_date=@start_date+(3600*24)
end

def end_date
@end_date=@start_date+@duration*60
end

def is_past?
 @start_date<(Time.now)? true : false
end

def is_future?
  @start_date>(Time.now)? true : false
 end

 def is_soon?
  @start_date<=(Time.now)+30*60? true : false
  end

  def to_s
    puts "Titre : #{title}"
    puts "Date de debut : #{start_date}"
    puts "Durée : #{duration}"
    puts "Invités : #{attendees.join(", ")}"

  end

#binding.pry
end