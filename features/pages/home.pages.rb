class HomePage < SitePrism::Page

  element :userName, :xpath, "//div[contains(@class, 't-16') and contains(@class, 't-black') and contains(@class, 't-bold')]"

  def CheckLoginSucessful
      expect(page).to have_xpath("//div[contains(@class, 't-16') and contains(@class, 't-black') and contains(@class, 't-bold')]", wait: 10)
      expect(userName.text).to eql "Luis Fernando Ferrari"
  end

end
