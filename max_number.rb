require 'rspec'
# require 'benchmark'

# Crondose Dec 24

# arr = Array.new(1000) { rand 1345 }
# p arr.max
# p arr.min

# prac_array = [4,6,2,7,8,5]
# p prac_array.sort.last

b_array = Array.new(1000) { rand 1000 }


def new_max array_of_elements
  max_value = 0
  array_of_elements.each do |i|
    if i > max_value
      max_value = i
    end
  end
  max_value
end


# Benchmark.bm(10) do |x|
#   x.report('Each: ') { new_max b_array}
#   x.report('Sorted: ') { b_array.sort.last }
# end


describe "The maximum number" do
  it "maximum number in an array efficently" do
    test_array = [3,10,4,1,9,6]
    expect(new_max(test_array)).to eq(10)
  end
end
