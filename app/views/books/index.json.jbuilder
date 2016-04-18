json.array!(@books) do |book|
  json.extract! book, :id, :isbn, :title, :price, :publish, :pubulished, :cd
  json.url book_url(book, format: :json)
end
