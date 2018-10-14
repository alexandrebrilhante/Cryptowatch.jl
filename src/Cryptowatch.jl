module Cryptowatch

    using Dates

    import HTTP: get
    import JSON2: read

    export getassets,
           getpairs,
           getexchanges,
           getmarkets,
           getprices,
           getsummary,
           getorderbook,
           getohlc

    include("public.jl")

    const URL = "https://api.cryptowat.ch"

end
