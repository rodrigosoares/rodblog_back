namespace :models do
  namespace :posts do
    desc 'Slugifies all posts'
    task slugify: :environment do
      Post.find_each(&:save)
      puts 'All posts have been slugified.'
    end
  end
end
