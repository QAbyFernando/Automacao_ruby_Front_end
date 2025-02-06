Before do
    Capybara.page.driver.browser.manage.window.maximize
end

After do
  
  puts "Algo deu errado no Hook!"

end