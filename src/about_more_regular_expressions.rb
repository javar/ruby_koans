# -*- coding: utf-8 -*-
require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutMoreRegularExpressions < Neo::Koan
  def test_any_string_of_exactly_10_digits
    assert_equal __("1234567890"), ^(\d{10})$    
  end
  
  def test_a_string_with_prefix_9_and_an_addicional_11_digits
    assert_equal __("912345678901"), ^9(\d{11})$
  end
  
  def test_any_string_of_exactly_3_or_4_digits
    assert_equal __("123"), (^\d{4}$|^\d{3}$)
  end
  
  def test_any_string_from_3_to_5_digits
    assert_equal __("12345"), (^\d{3,5}$)
  end
  
  def test_any_toll_free_number
    assert_equal __("18005551212"), ^(\+?1)?(8(00|44|55|66|77|88)[2-9]\d{6})$
  end

end