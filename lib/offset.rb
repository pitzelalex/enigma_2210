# frozen_string_literal: true

require 'date'

# this is the Offset class
class Offset
  attr_reader :date

  def initialize(date: Date.today)
    @date = date
  end

  def convert_date
    d = @date.strftime('%d')
    m = @date.strftime('%m')
    y = @date.strftime('%y')
    m + d + y
  end

  def square_date
    converted = convert_date.to_i
    @_squared ||= converted ** 2
  end

  def a_offset
    square_date.digits[3]
  end

  def b_offset
    square_date.digits[2]
  end

  def c_offset
    square_date.digits[1]
  end

  def d_offset
    square_date.digits[0]
  end
end
