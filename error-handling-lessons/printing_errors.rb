def error_logger(e)
  File.open('error-handling-lessons/error_log.txt', 'a') do |file| file.puts e 
  end
end
#the one argument is error

begin
  puts nil * 10
rescue StandardError => e
  error_logger("Error: #{e} at #{Time.now}")
end
#catch standard error
#errors should also have the value of when they occur