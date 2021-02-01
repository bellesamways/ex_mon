defmodule ExMon.Game.Status do
  def print_round_message(%{status: :started} = info) do
    IO.puts("\n==== the game is started! ====\n")
    IO.inspect(info)
    IO.puts("----------------------")
  end

  def print_round_message(%{status: :continue, turn: player} = info) do
    IO.puts("\n==== it's #{player} turn. ====\n")
    IO.inspect(info)
    IO.puts("----------------------")
  end

  def print_round_message(%{status: :game_over} = info) do
    IO.puts("\n==== the game is over. ====\n")
    IO.inspect(info)
    IO.puts("----------------------")
  end

  def print_wrong_move_message(move) do
    IO.puts("\n==== invalid move: #{move}. ====\n")
  end

  def print_move_message(:computer, :attack, damage) do
    IO.puts("\n==== the player attack the computer dealing #{damage} damage. ====\n")
  end

  def print_move_message(:player, :attack, damage) do
    IO.puts("\n==== the computer attack the player dealing #{damage} damage. ====\n")
  end

  def print_move_message(player, :heal, life) do
    IO.puts("\n==== the #{player} healed itself to #{life} life points. ====\n")
  end
end
