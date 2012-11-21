Given /the following category exist/ do |category_table|
  category_table.hashes.each do |category|
  	Category.create!(category)
  end
end
