require 'faker'

i = 1
10.times do
  Urls.create(
      full_url:    Faker::Internet.url,
      short_url:   "http://127.0.0.1:9393/" + i.to_s
  )
  i += 1
end