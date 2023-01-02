=begin
You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

- write a method that takes an integer argument, referring to the total number of switches, n
- each light is numbered and off at default
  - first pass: turn all lights on (toggle multiples of 1 lights)
  - 2nd pass: toggle multiples of 2 lights 
  - 3rd pass: toggle multiples of 3 lights 
  - and so on.
- return an array of lights that are on after n passes
=end

# write an array that takes an integer argument, n
# create a hash of integers from 1 to n as a key and 'off' as a value
# iterate through the array
  # toggle the switch n times -- how?
  # for each toggle, n multiples are selected to be toggled
# return the array
require 'pry'

def toggle!(switch)
  if switch == "on"
    switch.replace "off"
  elsif switch == "off"
    switch.replace "on"
  end
end

def initialize_lights(n)
  lights = Hash.new
  1.upto(n) { |number| lights[number] = "off" }
  lights
end

def on_lights(hash)
  hash.select { |key, value| key if value == "on" }.keys
end

def light_switch(n)
  lights = initialize_lights(n)
  
  1.upto(n) do |number|
    lights.each do |key, value|
      toggle!(value) if key % number == 0
    end
  end
  
  on_lights(lights)
end

p light_switch(1000)


learn from mistakes...
def lights(n)
  # light_array = (1..n).to_a
  # switch_array = ["off"] * n
  # light_switches = light_array.zip(switch_array).to_h
  # the above way creates a binding between all value references to the same object_id... use the hash index assignment syntax to create a new hash
end

=begin #redone on 12/3/2021
1000 Lights
you have n switches; numbered from 1 to n; all switches are OFF
- first pass: toggle all to ON
- second pass: toggle 2, 4, 6 (2 multiples)
- third pass: toggle 3, 6, 9 (3 multiples)
- fourth pass: toggle 4, 8, 12??? (4 multiples)
- repeat n times

input: integer, output: an array of integers
- hash as a data structure? YES
  - can we retrieve an array of keys that have the same value?
    - select the k-v pairs that have a value of interest
    - retrieve the keys from the selected hash --> returns an array of keys
    
algo:
main - lights(n) returns an array of integers
- create a hash
  - key is the switch number
  - value is OFF aka false (default)

- prior to the loop, first pass will turn all switches ON aka true 
  - starting pass_n is 1
- looping mechanism
  - add 1 to the pass_n
  - toggle the switches that match pass_n multiples -- the associated value will become the opposite of the previous value
    - more detail needed
  - break out of the loop if pass_n is same as n or bigger

- select the k-v pairs where the value is true
- return the array of keys of the selected hash

helper - toggle(switch_board, pass_n) returns an updated hash
- if the key is multiple of pass_n, modify the value to the other boolean value
=end

def toggle(switch_board, pass_n)
  switch_board.map { |k, v| k % pass_n == 0 ? [k, !v] : [k, v] }.to_h
end

def lights(n)
  switches = (1..n).to_a
  status = [false] * n
  switch_board = switches.zip(status).to_h
  
  pass_n = 1
  loop do
    switch_board = toggle(switch_board, pass_n)
    break if pass_n >= n
    pass_n += 1
  end
  
  switch_board.select { |_, v| v == true }.keys
end

p lights(5) #== [1, 4]
p lights(10) #== [1, 4, 9]
