def hello(name)
  str = "Hello"
  name.times do
    str.concat(name)
end
