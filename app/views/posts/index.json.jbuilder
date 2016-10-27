json.cache! ['v1', @posts], expires_in: 10.minutes do
  json.time sprintf('%.3f', (Time.now.to_f - @start_time))
  json.posts do
    json.array! @posts, partial: 'posts/post', as: :post
  end
end
