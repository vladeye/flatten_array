require 'test_helper'

class PagesHelperTest < ActionDispatch::IntegrationTest
  include PagesHelper


  test "should compare the return value with empty array, nil value, and nested array" do

    # Test if the method handles nil
    assert_equal [], recursive_flatten_array(nil)
    # Test if the method handles empty
    assert_equal [], recursive_flatten_array([])
    # Test if the method handles nested
    initial_array = [[1,2,[3]],4]
    assert_equal [1,2,3,4], recursive_flatten_array(initial_array)
    # Test if the method handles more nested
    initial_array = [[1,2,[3,4,[5,6]]],[[7]]]
    assert_equal [1,2,3,4,5,6,7], recursive_flatten_array(initial_array)
    # Test if the method handles with other than an integer
    initial_array = [[1,'a',[3]],4]
    assert_equal [1, 3, 4], recursive_flatten_array(initial_array)


  end
end