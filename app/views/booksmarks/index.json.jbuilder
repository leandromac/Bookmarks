json.array!(@booksmarks) do |booksmark|
  json.extract! booksmark, :id, :title, :url
  json.url booksmark_url(booksmark, format: :json)
end
