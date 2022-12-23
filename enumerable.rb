module Enumerable
  def all?
    case block_given?
    when false
      each { |n| return false if n.nil? }
    when true
      each { |n| return false unless yield n }
    end
    true
  end

  def any?
    case block_given?
    when false
      each { |n| return true unless n.nil? }
    when true
      each { |n| return true if yield n }
    end

    false
  end

  def filter
    case block_given?
    when false
      to_enum
    when true
      filter_arr = []
      each { |n| filter_arr.push(n) if yield n }
      filter_arr
    end
  end
end
