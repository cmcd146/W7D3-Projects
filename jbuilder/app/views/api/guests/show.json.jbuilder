

# json.extract! @guest, :name, :age, :favorite_color

json.partial! 'guest', guest: @guest

json.gifts do
  @guest.gifts.each do |gift|
    json.title gift.title
    json.description gift.description
  end
end
