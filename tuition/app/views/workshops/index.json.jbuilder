json.array!(@workshops) do |workshop|
  json.extract! workshop, :id, :name, :duration, :date, :no_of_students, :price, :user_id
  json.url workshop_url(workshop, format: :json)
end
