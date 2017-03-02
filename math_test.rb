require 'rspec'

#
# def square_number number
#   number ** 2
# end
#
#
#
# # describe "Square number " do
# #   it "square a number" do
# #     expect(square_number(4)).to eq(16)
# #   end
# # end
#
#
# p square_number(6)
# p square_number(5)

def name str
  p str.downcase!
  p str.split
  p str[0].upcase.join()

end

describe "Name equals" do
  it "should equal the correct name including case" do
    name_test = "zAcherY"
    expect(name(name_test)).to eq("Zachery")
  end
end
