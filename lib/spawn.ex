defmodule Spawn do
  def reader(pid) do
    read = "|>Elixir -- the cure for coding<|"
    send(pid, read)
    Process.sleep(1000)
    reader(pid)
  end

  def writer() do
    receive do
      message ->
        message = "#{message} \n"
        File.write!("assets/file.json", message, [:append])
        writer()
    end
  end

  def run() do
    writer_pid = spawn(Spawn, :writer, [])
    _reader_pid = spawn(Spawn, :reader, [writer_pid])
  end
end
