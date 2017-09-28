defmodule LinAlg do
    def sum_vector v do
        sum_vector v, 0
    end

    defp sum_vector [], sum do 
       sum 
    end

    defp sum_vector [h | t], sum do 
        sum_vector t, h + sum
    end

    
    def multiply_vectors [], [] do
        []    
    end

    def multiply_vectors [h1 | t1], [h2 | t2] do
        [h1 * h2 | multiply_vectors(t1, t2)]
    end

    def dot_product v1, v2 do
        multiply_vectors(v1, v2) 
        |> sum_vector
    end

end