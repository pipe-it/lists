# defmodule Secrets do
#   def secret_add(secret) do
#     # Please implement the secret_add/1 function
#     add = fn add -> add + secret end
#   end

#   def secret_subtract(secret) do
#     # Please implement the secret_subtract/1 function
#     subtract = fn subtract -> subtract - secret end
#   end

#   def secret_multiply(secret) do
#     # Please implement the secret_multiply/1 function
#     multiply = fn multiply -> multiply * secret end
#   end

#   def secret_divide(secret) do
#     # Please implement the secret_divide/1 function
#     divide = fn divide -> div(divide, secret) end
#   end

#   def secret_and(secret) do
#     # Please implement the secret_and/1 function
#     ander = fn ander -> Bitwise.band(ander, secret) end
#   end

#   def secret_xor(secret) do
#     # Please implement the secret_xor/1 function
#     xorer = fn xorer -> Bitwise.bxor(xorer, secret) end
#   end

#   def secret_combine(secret_function1, secret_function2) do
#     # Please implement the secret_combine/2 function
#     # multiply = secret_multiply(secret_function1)
#     # divide = secret_divide(secret_function2)

#     fn a -> a |> secret_function1.() |> secret_function2.() end
#   end
# end
