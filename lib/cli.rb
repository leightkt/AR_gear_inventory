class Cli
    attr_accessor :user, :prompt, :activity

    def initialize
        @user = nil
        @prompt = TTY::Prompt.new(symbols: {marker: "🧗‍♀️"})
        @activity = nil
    end

    def welcome
        puts "Welcome to Gearlist!"
    end

    def get_user
        @user = prompt.ask("What is your name?")
        puts "Hello #{@user}!"
    end

    def choose_function
        prompt.select("What would you like to do?") do |menu|
            menu.choice "Get a Packing List", 1
            menu.choice "Update Gear", 2
            menu.choice "View your essential gear", 3
            menu.choice "Exit", 4
        end
    end

    def app_flow
        answer = choose_function
        case answer
            when 1
                get_activity
                get_gear_list
                puts "Don't forget your essentials!"
                view_essentials
                continue_or_exit
            when 2
                choice = update_gear
                if choice == 1
                    updated_item = Gear.add(get_gear_info)
                    puts "#{updated_item.name} has been saved."
                    continue_or_exit
                else 
                    Gear.delete(get_info_for_delete)
                    continue_or_exit
                end
            when 3
                puts "Here are your essentials:"
                view_essentials
                continue_or_exit
            when 4 
                exit
        end
    end

    def continue_or_exit
        choice = prompt.yes?("Would you like to do something else?")
        if choice 
            app_flow
        else
            exit
        end
    end

    def update_gear
        choice = prompt.select("Would you like to add or delete gear?") do |menu|
            menu.choice "Add an item", 1
            menu.choice "Delete an item", 2
        end
    end

    def get_gear_info
        gear_info = {}
        gear_info[:name] = prompt.ask("What is the name of the item?")
        gear_info[:weight] = prompt.ask("What is the weight of the item (in ounces)?")
        gear_info[:quantity] = prompt.ask("What is the quantity?")
        gear_info[:essential] = prompt.yes?("Is this an essential item?")
        gear_info
    end

    def get_info_for_delete
        gear_info = {}
        gear_info[:name] = prompt.ask("What is the name of the item you'd like to delete?")
        gear_info[:quantity] = prompt.ask("How many would you like to remove?")
        gear_info
    end

    def get_activity
        @activity = prompt.select("What activity are you packing for?", Activity.pluck(:name))
    end

    def get_gear_list
        puts "Here's what you should pack:"
        @activity = Activity.find_by_name(@activity)
        @activity.gear_list
    end

    def view_essentials
        Gear.essentials
    end


end