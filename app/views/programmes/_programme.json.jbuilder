json.extract! programme, :id, :programme_name, :programme_cost, :user_id, :programme_goal, :images, :programme_duration, :payed, :created_at, :updated_at
json.url programme_url(programme, format: :json)
