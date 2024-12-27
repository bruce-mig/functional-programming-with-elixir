defmodule ElixirCode.Recursion.SumDigits do
  def upto(0), do: 0

  def upto(num) do
      upto_tail_rec(num)
  end

  def upto_tail_rec(num, acc \\ 0) # Function definition
  def upto_tail_rec(0, acc), do: acc # Base condition

  def upto_tail_rec(num, acc) do
    upto_tail_rec(num - 1, acc + num)
  end
end
