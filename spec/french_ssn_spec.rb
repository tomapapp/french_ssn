require_relative "../french_ssn"

describe "#french_ssn_info" do
  it "returns 'The number is invalid' when passed an empty string" do
    actual = french_ssn_info("")
    expected = "The number is invalid"
    expect(actual).to eq(expected)
  end
end