defmodule Miner.Supervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, [], name: __MODULE__)
  end

  def init(_args) do
    children = [
      Miner.BlockCalculator.Supervisor,
      Miner.Peer.Supervisor
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end
end
