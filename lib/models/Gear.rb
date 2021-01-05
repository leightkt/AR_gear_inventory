class Gear < ActiveRecord::Base
    has_many :gearactivities
    has_many :activities, through: :gearactivities

    def self.essentials 
        essentials = self.select do |gear|
            gear.essential == true
        end
        essentials.pluck(:name).map do |name|
            puts name
        end
    end

    def self.add(name:, weight:, quantity:, essential:)
        found_gear = find_by_name(name)
        quantity = quantity.to_i
        if found_gear == nil
        item = Gear.new(name: name, weight: weight, quantity_owned: quantity, essential: essential)
        item.save
        item
        else
            found_gear.quantity_owned += quantity
            found_gear
        end
    end

    def self.delete(name:, quantity:)
        found_gear = find_by_name(name)
        quantity = quantity.to_i
        if found_gear == nil
            puts "Item not found"
        else
            found_gear.quantity_owned -= quantity
            name = found_gear.name
            if found_gear.quantity_owned == 0
                gear_activities = found_gear.find_gearactivities
                gear_activities.map {|gear_activity| gear_activity.destroy}
                found_gear.destroy
                puts "#{name} Deleted"
            else 
                puts "#{name} quantity updated to #{found_gear.quantity_owned}"
            end
        end
    end

    def self.find_by_name(name)
        find_by(name: name)
    end

    def find_gearactivities
        Gearactivity.select do |gearactivity|
            self.id == gearactivity.gear_id
        end
    end
end