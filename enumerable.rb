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

end
