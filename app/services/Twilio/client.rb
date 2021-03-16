module Twilio
  class Client
    def initialize
      @client = Twilio::REST::Client.new(Rails.application.credentials.twilio[:ACCOUNT_SID], Rails.application.credentials.twilio[:TWILIO_AUTH_TOKEN])
    end

    # Get info task
    # @example
    #   c = Twilio::Client
    #   t = c.task(id)
    #   p t.reservations.list[0].worker_name
    def task(workspace: Rails.application.credentials.twilio[:TWILIO_WORKSPACE], task_id: 'WTd0a188ff3dec7f799486381810f88f67')
      @client.taskrouter.workspaces(workspace).tasks(task_id).fetch
    end
  end
end