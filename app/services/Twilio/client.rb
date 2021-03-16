module Twilio
  class Client
    def initialize
      @client = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])
    end

    def task(workspace: ENV['TWILIO_WORKSPACE'], task_id: 'WTd0a188ff3dec7f799486381810f88f67')
      @client.taskrouter.workspaces(workspace).tasks(task_id).fetch
    end
  end
end