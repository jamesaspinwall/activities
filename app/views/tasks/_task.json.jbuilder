json.extract! task, :id, :context, :title, :description, :tags, :data, :complete_ts, :active_ts, :created_at, :updated_at
json.url task_url(task, format: :json)