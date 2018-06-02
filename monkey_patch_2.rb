class Hash

  def identify_duplicate_values
    values = []
    dupes = []

    self.each_value do |value|
      values.include?(value) ? dupes << value : values << value
    end
    dupes.uniq
  end
end

# scores = { a: 100, b: 100, c: 90, d:100, e: 30, f: 90, g: 85 }
# p scores.identify_duplicate_values

class Integer

  def seconds
    self
  end

  def minutes
    self * 60
  end

  def hours
    minutes * 60
  end

  def days
    hours * 24
  end

  def custom_times
    i = 0
    while i < self
      yield(i + 1)
      i += 1
    end
  end
end
#
p Time.now + 45.minutes
p Time.now  + 10.days
5.custom_times { |i| puts i }
