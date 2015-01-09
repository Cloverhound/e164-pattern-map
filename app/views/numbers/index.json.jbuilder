json.array!(@numbers) do |number|
  json.extract! number, :id, :tfn, :site_id, :description, :active, :dnis
  json.url number_url(number, format: :json)
end
