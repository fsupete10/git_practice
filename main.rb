require "colorize"

def puts_git(cmd)
    puts `git #{cmd} -h`
    menu
  end
  
  def menu
    puts "MAIN MENU".colorize(:cyan)
    puts '1: Enter git command'.colorize(:yellow)
    puts '2: Exit'.colorize(:yellow)
    choice = gets.to_i
    case choice
    when 1
      puts 'Enter git command'.colorize(:green)
      puts_git(gets.strip)
      menu
    when 2
        puts "Thanks for using our program!".colorize(:blue)
      exit
    else
      puts 'Invalid choice'.colorize(:red)
      menu
    end
  end
  
  menu