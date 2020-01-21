module PagesHelper

  # recursively organize the original array to a flatten array
  # Params:
  # +original_array+:: nested array can be empty but and nil
  # +return+:: flatten array of integers
  def recursive_flatten_array(original_array)

    result_array = []

    if original_array.nil?
      return []
    end

    # Go through the array
    for item in original_array do
      # Check if the element is integer or array
      if item.is_a?(Integer)
        result_array.push(item)
      elsif item.kind_of?(Array)
        # if is an array make the recursion
        result_array.concat(recursive_flatten_array(item))
      end
    end

    return result_array
  end
end
