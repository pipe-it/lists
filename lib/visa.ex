defmodule Visa do
  use GenServer

  def start_link(auth) do
    GenServer.start_link(__MODULE__, auth)
  end

  def init(auth) do
    {:ok, %{files: [], rejected_files: [], granted_files: []}}
  end

  def handle_cast({:add, name}, state) do
    existing_files = state.files
    files = [name | existing_files]
    new_state = Map.put(state, :files, files)
    {:noreply, new_state}
  end

  def handle_cast({:reject, name}, state) do
    existing_files = state.rejected_files
    rejected_files = [name | existing_files]
    new_state = Map.put(state, :rejected_files, rejected_files)
    {:noreply, new_state}
  end

  def handle_cast({:grant, name}, state) do
    existing_files = state.granted_files
    granted_files = [name | existing_files]
    new_state = Map.put(state, :rejected_files, rejected_files)
    {:noreply, new_state}
  end
end
