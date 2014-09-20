require 'person'
require 'coach'

describe Person do

let (:person) { Person.new }
let (:coach) { Coach.new }
let (:station) { Station.new }

	it "should be able to touch in at a station" do
		person.touch_in(station)
		expect(station.passangers_count).to eq(1) 
	end

	it "should be able to touch out of a station" do
		person.touch_in(station)
		person.touch_out(station)
		expect(station.passangers_count).to eq(0)
	end
	
end
