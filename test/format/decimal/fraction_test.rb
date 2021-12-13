# frozen_string_literal: true

require File.expand_path(File.join(File.dirname(__FILE__) + "/../../test_helper"))

class TestCldrDecimalFractionFormatWithInteger < Test::Unit::TestCase
  test "formats a fraction" do
    assert_equal ".45", Cldr::Format::Decimal::Fraction.new("###.##").apply("45")
  end
  
  test "pads zero digits on the right side" do
    assert_equal ".4500", Cldr::Format::Decimal::Fraction.new("###.0000#").apply("45")
  end
  
  test ":precision option overrides format precision" do
    assert_equal ".78901", Cldr::Format::Decimal::Fraction.new("###.##").apply("78901", precision: 5)
  end
end


