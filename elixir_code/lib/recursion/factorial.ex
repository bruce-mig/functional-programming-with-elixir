defmodule ElixirCode.Recursion.Factorial do
  def of(1), do: 1

  def of(num) do
    of_tail_rec(num)
  end

  def of_tail_rec(num, prod \\ 1)
  def of_tail_rec(1, prod), do: prod

  def of_tail_rec(num, prod) do
    of_tail_rec(num - 1, prod * num)
  end
end
