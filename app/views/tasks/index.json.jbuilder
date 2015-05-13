json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :description, :duration, :initialdate, :enddate, :author, :checkbox
  json.url task_url(task, format: :json)
end
