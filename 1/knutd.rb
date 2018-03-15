class User
  def initialize(name, status, age)
    @name = name
    @status = status
    @age = age
  end

  def print_humanize
    puts "Your name is #{@name.capitalize}"
  end

  def add_to_database
    @database = []
    if adult?
      @database << @name

      puts 'Successfully added to database!'
    else
      puts 'Grow up first!'
    end
    print @database
  end

  # def self.get_database
  #   print @database
  # end

  private

  def adult?
    @age >= 18
  end
end

egor = User.new('egor', 'norm', 21)
ruxa = User.new('ruxa', 'tak sebe', 22)

egor.add_to_database
ruxa.add_to_database

egor.print_humanize

# User.get_database
