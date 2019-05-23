json.creators do
  json.array! @creators do |creator|
    json.extract! creator, :id, :email, :password, :first_name, :last_name, :age, :avatar, :city, :description, :portfolio_url
  end
end
