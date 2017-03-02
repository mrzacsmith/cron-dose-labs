require 'rspec'

class String
  def integer?
    return true if self =~ /^[1-9]\d*(\.\d+)?$/
    false
  end
end

puts "10".integer?
puts "5.5".integer?
puts "asdfsfjkl".integer?

module Tippy
  class Builder
    def initialize total:, gratuity:
      @total = total
      @gratuity = gratuity
    end
    def generate
      return @total += @total * (@gratuity.to_f / 100) if @gratuity.is_a? Numeric

      case @gratuity.downcase
      when 'high'     then @total += @total * (25.0 / 100)
      when 'standard' then @total += @total * (18.0 / 100)
      when 'low' then @total += @total * (15.0 / 100)
      end
    end
  end
end

puts Tippy::Builder.new(total: 100, gratuity: 'LOW').generate
puts Tippy::Builder.new(total: 100, gratuity: 20).generate

describe "Tip Generator" do
  it "Accurately generate a tip given a string or integer input" do
    test_1 = Tippy::Builder.new(total: 100, gratuity: '23.5').generate
    test_2 = Tippy::Builder.new(total: 100, gratuity: 'high').generate
    test_3 = Tippy::Builder.new(total: 100, gratuity: 'LOW').generate
    test_4 = Tippy::Builder.new(total: 100, gratuity: 'standard').generate
    test_5 = Tippy::Builder.new(total: 100, gratuity: '18').generate
    test_6 = Tippy::Builder.new(total: 100, gratuity: 20).generate
    test_7 = Tippy::Builder.new(total: 100, gratuity: 0).generate

    expect(test_1).to eq(123.5)
    expect(test_2).to eq(125.0)
    expect(test_3).to eq(115.0)
    expect(test_4).to eq(118.0)
    expect(test_5).to eq(118.0)
    expect(test_6).to eq(120.0)
    expect(test_7).to eq(100.0)
  end
end
