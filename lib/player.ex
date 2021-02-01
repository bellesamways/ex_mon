defmodule ExMon.Player do
  @required_keys [:life, :moves, :name]
  # isso é uma variável de módulo, ou uma constante, não precisa usar = ou :
  @max_life 100

  @enforce_keys @required_keys
  defstruct @required_keys

  def build(name, move_rnd, move_avg, move_heal) do
    %ExMon.Player{
      life: @max_life,
      moves: %{
        move_avg: move_avg,
        move_heal: move_heal,
        move_rnd: move_rnd
      },
      name: name
    }
  end
end
