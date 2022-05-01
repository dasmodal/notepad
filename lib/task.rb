require 'date'
class Task < Post

  def initialize
    super
    @due_date = Time.now
  end

  def read_from_console
    puts "Что надо сделать?"
    @text = STDIN.gets.chomp
    0
    puts "К какой дате выполнить? Укажите дату в формате ДД.ММ.ГГГГ, например 25.06.1992"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_string
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"

    deadline = "Крайний срок: #{@due_date}"

    return [deadline, @text, time_string]
  end

end