class WelcomeController < ApplicationController
  def index
    counter = Counter.find_or_create_by(name: "default")
    counter.valaue = (counter.valaue || 0) + 1
    counter.save!
    render plain: "Counter #{counter.valaue}; #{Rails.version}/#{RUBY_VERSION}"
  end
end
