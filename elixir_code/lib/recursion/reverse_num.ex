defmodule ElixirCode.Recursion.ReverseNum do
  def rev(num) do
    rev_tail_rec(num)
  end

  def rev_tail_rec(num, acc \\ 0)
  def rev_tail_rec(0, acc), do: acc

  def rev_tail_rec(num, acc) do
    rev_tail_rec(div(num,10), acc * 10 + rem(num,10))
  end
end
