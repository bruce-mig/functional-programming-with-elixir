defmodule ElixirCode.Structs.SevenWonders do
  defstruct name: "", country: ""
  alias ElixirCode.Structs.SevenWonders

  @type t :: %SevenWonders{
    name: String.t(),
    country: String.t()
  }

  # ------------------------------------- All -------------------------------------

  @spec all :: [t()]
  def all() do
    [
      %SevenWonders{name: "Taj Mahal", country: "India"},
      %SevenWonders{name: "Chichen Itza", country: "Mexico"},
      %SevenWonders{name: "Petra", country: "Jordan"},
      %SevenWonders{name: "Machu Picchu", country: "Peru"},
      %SevenWonders{name: "Christ the Redeemer", country: "Brazil"},
      %SevenWonders{name: "Colloseum", country: "Italy"},
      %SevenWonders{name: "The Great Wall of China", country: "China"}
    ]
  end

  # -----------------------------------------------------------------------------

  @spec print_names([t()]) :: :ok
  def print_names(wonders) do
    wonders
    |> Enum.each(fn %{name: name} -> IO.puts(name) end)
  end

  @spec filter_by_country([t()], String.t()) :: [t()]
  def filter_by_country(wonders, country) do
    wonders
    |> Enum.filter(fn %{country: country_name} -> country_name == country end)
  end



end
