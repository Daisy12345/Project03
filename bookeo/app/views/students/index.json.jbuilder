json.array!(@students) do |student|
  json.extract! student, :id, :First_name, :Last_name, :Phone, :Email
  json.url student_url(student, format: :json)
end
