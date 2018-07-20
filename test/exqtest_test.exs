defmodule ExqTestTest do
  use ExUnit.Case

  test "Should queue up the worker" do
    {:ok, _ack} = Exq.enqueue(Exq, "default", ExqTestWorker, ["1"])
    {:ok, _ack} = Exq.enqueue(Exq, "default", ExqTestWorker, ["2"])
    {:ok, _ack} = Exq.enqueue(Exq, "default", ExqTestWorker, ["3"])
    {:ok, _ack} = Exq.enqueue(Exq, "default", ExqTestWorker, ["4"])
    :timer.sleep(1000)
    :timer.sleep(1000)
    :timer.sleep(1000)
    :timer.sleep(1000)
    :timer.sleep(1000)
    :timer.sleep(1000)
  end
end
