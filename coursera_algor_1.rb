require 'rspec'

def multi_algo a, b
  a * b
end

def add a, b
  a + b
end

# Following Algorithm course on Coursera

describe "when " do
  it "" do
    x = 10
    y = 10
    expect(multi_algo(x, y)).to eq(100)
    expect(add(x,y)).to eq(20)
  end
end
