json.array!(@t_reddits) do |t_reddit|
  json.extract! t_reddit, :id, :title, :author, :blog_entry
  json.url t_reddit_url(t_reddit, format: :json)
end
