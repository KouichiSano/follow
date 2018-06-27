json.extract! book, :id, :title, :opinion, :created_at, :updated_at
json.url book_url(book, format: :json)
