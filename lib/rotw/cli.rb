class Cli

    def start
      Api.get_data
      greeting
      start_program
    end # of start method

    def goodbye
      puts "See yaaaa"
      exit
    end # of goodbye

    def greeting
      system("clear")
      sleep(1)
      puts "Welcome to the Report of the Week Application!"
      puts "---------------------------------"
      puts " "
      puts "*A tribute to my favorite Youtuber*"
      puts " "
      puts "Looking for new reports... "
      puts " "
      puts " "
      puts " "
      puts " "
      puts "Success! :) Now loading... "
    end # of greeting

    def start_program
      loop do
        puts " "
        puts "*********************************"
        puts "*********************************"
        puts "This part is easy. To see a list of reports, enter 'list'"
        puts " "
        puts "To exit, simply enter 'exit'"
        puts "*********************************"
        puts "*********************************"
        puts "So what will it be? 'list', or 'exit'?"
        puts "*********************************"
        puts "*********************************"
        input = gets.strip.downcase #case sensitive
        puts " "
        puts " "

        if input == 'exit'
            goodbye
            break
          elsif input == 'list'
          puts "***These are the Report's of the Week yo!***"
          puts " "
          Report.all.each do |instance|
            puts instance.product
          end
            select

          end # of loop
      end
    end


    def return_to_main
      puts "Would you like to stay?"
      input = gets.strip.downcase
      case
          when input == "yes"
            start_program
          when input == "no"
            goodbye
          else
            puts "Please use a valid response"
            return_to_main
          end

      end
  end
      def select
        puts " "
        puts " "
        puts " "
        puts "Choose one..."

        input = gets.strip
        Report.all.each do |instance|
        if instance.product == input
           puts instance.rating
           puts instance.manufacturer
           puts " "
           puts " "
           puts "Another choice?"
           return_to_main
        else
          puts "Loading Response..."
          # puts "Can't find that..."
          # select
        end
       end
      end
