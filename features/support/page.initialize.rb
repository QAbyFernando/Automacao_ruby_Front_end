Dir[File.join(File.dirname(__FILE__), '~\..\qa\features\pages.rb')].each {|file| require file}


module Pages
  def login
    @login ||= LoginPage.new
  end
  def home
    @home ||= HomePage.new
  end
end
