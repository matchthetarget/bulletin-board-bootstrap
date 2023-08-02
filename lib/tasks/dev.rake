desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do
  if Rails.env.development?
    Board.destroy_all
    Post.destroy_all
  end
  
  5.times do
    board = Board.new
    board.name = Faker::Address.community
    board.save

    rand(10..50).times do
      post = Post.new
      post.title = rand < 0.5 ? Faker::Commerce.product_name : Faker::Job.title
      post.body = Faker::Lorem.paragraphs(number: rand(1..5), supplemental: true)
      post.save
    end
  end

  puts "There are now #{Board.count} rows in the boards table."
  puts "There are now #{Post.count} rows in the posts table."
end
