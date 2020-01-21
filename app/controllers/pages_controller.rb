class PagesController < ApplicationController
  include PagesHelper
  # flatten an array of nested arrays of integers and publish it
  # +return+:: flatten array of integers
  def home

    initial_array = [[1,2,[3,4,[5,6]]],7]
    @result_array = recursive_flatten_array(initial_array)
  end
end
