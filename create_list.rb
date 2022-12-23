require_relative './enumerable'

class MyList
  include Enumerable

  # initialization
  def initialize(*list)
    @list = list
  end

  # yield each element in the list
  def each
    return to_enum unless block_given?

    (0..(@list.length - 1)).each do |i|
      yield @list[i]
    end
  end
end

# # Create our list
# list = MyList.new(1, 2, 3, 4)
# #<MyList: @list=[1, 2, 3, 4]>

# # Test #all?
# list.all? {|e| e < 5}
# true
# list.all? {|e| e > 5}
# false

# # Test #any?
# list.any? {|e| e == 2}
# true
# list.any? {|e| e == 5}
# false

# # Test #filter
# list.filter {|e| e.even?}
# [2, 4]
