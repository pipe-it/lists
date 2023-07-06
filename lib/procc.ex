# def sender(pid, n) do
#   sum = Sumofintegers.sum(n)
#   send(pid, sum)
# end

# def sender_run(r, n) do
#   spawn(Spawn, :sender, [r, n])
# end

# def receiver() do
#   receive do
#     message ->
#       IO.puts("Received #{message}")
#       receiver()
#   end
# end

# def receiver_run() do
#   spawn(Spawn, :receiver, [])
# end

# def hello() do
#   IO.puts("#{inspect(self())} - |>hello<|")
#   Process.sleep(10000)
#   hello()
# end

# def run() do
#   spawn(Spawn, :hello, [])
# end
