class ApiConnector
  attr_accessor :title, :description, :url

  def initialize(title: title, description: description, url: url)
    @title = title
    @description = description
    @url = url
    secret_method
  end
  def api_logger
    puts "API Connector starting..."
  end

  private

    def secret_method
      puts "A secret message from inside the parent class"
    end
end

class SmsConnector < ApiConnector
  def send_sms
     `curl -X POST -d "notification[title]=#{@title}" -d "notification[url]=http://edutechional-resty.herokuapp.com/posts/1" "#{@url}"`
  end
end

class PhoneConnector < ApiConnector
  def api_logger
    super
    puts "Phone call API connection starting..."
  end
end

class MailConnector < ApiConnector
  def send_email
    puts "Sending email..."
  end
end


# sms = SmsConnector.new(title: "My title", description: "My cool description", url: "yahoo.com")

phone = PhoneConnector.new(title: "My title", description: "My cool description", url: "yahoo.com")

# email = MailConnector.new(title: "My title", description: "My cool description", url: "yahoo.com")

# sms.send_sms
phone.api_logger
# email.send_email

