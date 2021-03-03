json.extract! ticket, :id, :phone_number, :email, :category, :details, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
