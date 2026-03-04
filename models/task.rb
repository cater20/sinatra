class Task
    attr_accessor :title

    @@tasks= []

   def initialize(title)
      @title =title
     end

  def save
    @@tasks << self
  end
        
 def self.all
    @@tasks
 end

end