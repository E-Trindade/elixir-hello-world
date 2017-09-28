defmodule HelloWorld do
    def hello do
        :world
    end

    def hello name do
        IO.puts "Hello, " <> name
    end
end
