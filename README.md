# Cryptowatch.jl

Julia wrapper for the Cryptowatch REST API.

## Installation

```julia
(v1.0) pkg> add https://github.com/brilhana/Cryptowatch.jl
```

## Usage
```julia
julia> using Cryptowatch

julia> names(Cryptowatch)
9-element Array{Symbol,1}:
 :Cryptowatch
 :getassets
 :getexchanges
 :getmarkets
 :getohlc
 :getorderbook
 :getpairs
 :getprices
 :getsummary

julia> getorderbook("kraken", "btcusd")
(result = (asks = Any[Any[6223.6, 0.149], Any[6224.4, 0.182], Any[6224.9, 0.3], Any[6225, 4], Any[6225.8, 0.059], Any[6227, 3], Any[6227.3, 1], Any[6228.1, 0.372], Any[6228.4, 30], Any[6230, 4]  …  Any[6340, 5.45], Any[6340.3, 8.769], Any[6344.9, 0.009], Any[6345, 0.581], Any[6348, 0.513], Any[6349, 1.718], Any[6349.8, 2.5], Any[6350, 26.054], Any[6354, 6.063], Any[6359.9, 0.012]], bids = Any[Any[6219.9, 0.5], Any[6219.8, 1], Any[6219.5, 0.169], Any[6218.9, 2], Any[6218.4, 4], Any[6218.2, 2.569], Any[6217.8, 0.372], Any[6217.5, 6], Any[6217.3, 0.208], Any[6217.1, 5]  …  Any[6120.4, 0.505], Any[6120, 1.2], Any[6117.1, 7.4], Any[6117, 0.2], Any[6115, 0.003], Any[6111.1, 8.67], Any[6111, 0.8], Any[6110.3, 0.001], Any[6110, 0.638], Any[6108.5, 5]], seqNum = 171429), allowance = (cost = 368177, remaining = 7982126179))
```

## Documentation

https://cryptowat.ch/docs/api