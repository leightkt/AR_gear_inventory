class Activity < ActiveRecord::Base
    has_many :gearactivities
    has_many :gears, through: :gearactivities

    def gear_list
        gearactivities = Gearactivity.select do |gearactivity|
            gearactivity.activity_id == self.id
        end
        gear_list = {}
        gearactivities.map do |gearactivity|
            gear_list[Gear.find(gearactivity.gear_id).name] = gearactivity.gear_quantity_needed
        end
        gear_list.each do |name, quantity|
            puts "#{quantity}x #{name}"
        end
    end

    def self.find_by_name(name)
        find_by(name: name)
    end
end