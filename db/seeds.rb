10.times do |count|
    Article.create!(title: "Title #{count}" , description: "#{count} rationale content .")
end
