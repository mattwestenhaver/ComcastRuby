namespace :basket do
  desc "Adds apples to basket."
  task :add_apple_to_basket, [:variety, :count] => [:environment] do |t, args|
    count = args[:count]
    while count > 0
      if (apple = Apple.find(params[:variety] == args[:variety]))
        basket = apple.basket_id
        basket.fill_rate == (basket.fill_rate + 1)/basket.capacity
      elsif (basket = Basket.find(params[:fill_rate] == 0))
        basket.fill_rate == (basket.fill_rate + 1)/basket.capacity
      else
        puts "All the baskets are full. We couldn't find a place for #{args[:count]} apples."
      end
      count = count - 1
    end
  end
end
