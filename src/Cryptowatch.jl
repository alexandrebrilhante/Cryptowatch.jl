module Cryptowatch

    using Dates

    import HTTP: get
    import JSON2: read

    export assets,
           exchanges,
           markets,
           prices,
           orderbook,
           ohlc

    include("public.jl")

    const URL = "https://api.cryptowat.ch"

end
