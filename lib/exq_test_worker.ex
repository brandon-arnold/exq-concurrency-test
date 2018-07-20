defmodule ExqTestWorker do
  def perform(name) do
    IO.puts("Starting...#{name}")
    :timer.sleep(1000)
    IO.puts("Still in #{name}")
    :timer.sleep(1000)
    IO.puts("Still in #{name}")
    :timer.sleep(1000)
    IO.puts("Still in #{name}")
    :timer.sleep(1000)
    IO.puts("Finished #{name}.")
  end
end
