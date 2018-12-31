module Cryptowatch

    using DataFrames
    using Dates

    import HTTP: get
    import JSON2: read

    export assets,
           pairs,
           exchanges,
           markets,
           prices,
           summary,
           orderbook,
           ohlc

    include("public.jl")

    const URL = "https://api.cryptowat.ch"

end
