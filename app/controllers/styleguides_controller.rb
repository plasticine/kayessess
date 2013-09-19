class StyleguidesController < ApplicationController
  before_filter :parse_styles, :only => [:show]

  def show
  end

  private

  def parse_styles
    require 'kss'
    @styleguide = Kss::Parser.new(File.join(Rails.root, '/app/assets/stylesheets'))
  end
end
