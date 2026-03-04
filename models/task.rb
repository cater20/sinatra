class Task
  attr_accessor :title, :id

  @@tasks = []
  @@next_id = 1

  def initialize(title)
    @title = title
    @id = @@next_id
    @@next_id += 1
  end

  def save
    @@tasks << self
  end

  def self.all
    @@tasks
  end

  def self.find(id)
    @@tasks.find { |task| task.id == id.to_i }
  end

  def self.delete(id)
    @@tasks.reject! { |task| task.id == id.to_i }
  end

  def update(new_title)
    @title = new_title
  end

end