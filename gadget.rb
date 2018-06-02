require_relative "app_store"
class Gadget

  # attr_writer :password
  attr_reader :production_number, :apps
  attr_accessor :username

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
    @apps = []
  end

  def to_s
    "Gadget #{production_number} has the username #{username}.
    It is made from the #{self.class} class and it
    has the ID #{object_id}"
  end

  def install_app(name)
    app = AppStore.find_app(name)
    @apps << app unless @apps.include?(app) || app.nil?
  end

  def delete_app(name)
    app = apps.find{ |installed_app| installed_app.name == name}
    apps.delete(app) unless app.nil?
  end

  def password=(new_password)
    @password = new_password if validate_password(new_password)
  end

  def reset(username, password)
    self.username = username
    self.password = password
    self.apps = []
  end

  private

    attr_writer :apps

    def generate_production_number
      start_digits = rand(10000..99999)
      end_digits = rand(10000..99999)
      alphabet = ("A".."Z").to_a
      middle_digits = "2018"
      5.times{ middle_digits << alphabet.sample }
      "#{start_digits}-#{middle_digits}-#{end_digits}"
    end

    def validate_password(new_password)
      new_password.is_a?(String) && new_password.length > 6 && new_password =~ /\d/
    end
end

gadget = Gadget.new("widget", "password123")
# puts gadget.password
puts gadget

p gadget.apps
gadget.install_app(:Chat)
gadget.install_app(:Twitter)
gadget.install_app(:Chat)
p gadget.apps
gadget.delete_app(:Twitter)
gadget.delete_app(:News)
p gadget.apps
