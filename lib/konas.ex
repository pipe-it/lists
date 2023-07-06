defmodule Konas do
  def yelling_echo_loop do
    receive do
      {caller, value} ->
        send(caller, String.upcase(value))
        yelling_echo_loop()
    end
  end

  def hai() do
    pid = spawn_link(&yelling_echo_loop/0)

    send(pid, {self(), "o"})
    assert_receive ___

    send(pid, {self(), "hai"})
    assert_receive ___
  end
end
