json.array!(@personalclasses) do |personalclass|
  json.extract! personalclass, :id, :tutor_name, :subject, :date, :time
  json.url personalclass_url(personalclass, format: :json)
end
