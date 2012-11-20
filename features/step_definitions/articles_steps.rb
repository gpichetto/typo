Given /the following articles exist/ do |article_table|
  article_table.hashes.each do |article|
    art = Article.create!(article)
  end
end


Given /the following contents exist/ do |contents_table|
  contents_table.hashes.each do |content|
  	Article.create!(content)
  end
end


And /I am logged as "admin" user$/ do
  visit '/admin/profiles'
  if page.respond_to? :should
    page.should have_content('Your profile')
  else
    assert page.has_content?('Your profile')
  end
end


And /I am logged as "non-admin" user$/ do
  visit '/admin/profiles'
  if page.respond_to? :should
    page.should have_content('Your profile')
  else
    assert page.has_content?('Your profile')
  end
end


