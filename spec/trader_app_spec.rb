require_relative '../lib/trader_app'

describe "cryptomonnaies_price " do
  it "should value not nil" do
    expect(price).not_to be_nil
  end
end
describe "cryptomonnaies_name" do
  it "should value not nil" do
    expect(crypto_name).not_to be_nil
  end
end