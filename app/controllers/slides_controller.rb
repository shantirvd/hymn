class SlidesController < ApplicationController
  @slides = Slide.all
  render partial: 'slide', collection: @slides
end
