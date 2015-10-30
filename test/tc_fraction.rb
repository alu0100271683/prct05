require 'lib/fraction'
require 'test/unit'

class TestFraction < Test::Unit::TestCase
  
  def setup
    @origen = Fraccion.new(2,3)
    @unidad = Fraccion.new(4,5)
    
  end
  
  def test_equal
    assert_equal("2/3", @origen.to_s)
    assert_equal("4/5", @origen.to_s)
    
  end
  
  def test_suma
    assert_equal("22/15", (@origen + @unidad).to_s)
    assert_equal("15/22", (@origen + @unidad).to_s)
    
  end
  
  def test_resta
    assert_equal("-2/15", (@origen - @unidad).to_s)
    assert_equal("40/32", (@origen - @unidad).to_s)
  end
  
  def test_multi
    assert_equal("8/15", (@origen * @unidad).to_s)
    assert_equal("15/8", (@origen * @unidad).to_s)
    
  end
  
  def test_div
    assert_equal("10/12", (@origen / @unidad).to_s)
    assert_equal("12/18", (@origen / @unidad).to_s)
  end
end