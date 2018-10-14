"""
Returns all assets (in no particular order).
"""
function getassets()
    r = get("$URL/assets")
    s = String(r.body)
    return read(s)
end

"""
Returns a single asset. Lists all markets which have this asset as a base or quote.
"""
function getassets(symbol::String)
    r = get("$URL/assets/$symbol")
    s = String(r.body)
    return JSON2.read(s)
end

"""
Returns all pairs (in no particular order).
"""
function getpairs()
    r = get("$URL/pairs")
    s = String(r.body)
    return read(s)
end

"""
Returns a single pair. Lists all markets for this pair.
"""
function getpairs(symbol::String)
    r = get("$URL/pairs/$symbol")
    s = String(r.body)
    return read(s)
end

"""
Returns a list of all supported exchanges.
"""
function getexchanges()
    r = get("$URL/exchanges")
    s = String(r.body)
    return read(s)
end

"""
Returns a single exchange with associated routes.
"""
function getexchanges(exchange::String)
    r = get("$URL/exchanges/$exchange")
    s = String(r.body)
    return read(s)
end

"""
Returns a list of all supported markets.
"""
function getmarkets()
    r = get("$URL/markets")
    s = String(r.body)
    return read(s)
end

"""
Return supported markets for only a specific exchange.
"""
function getmarkets(exchange::String)
    r = get("$URL/markets/$exchange")
    s = String(r.body)
    return read(s)
end

"""
Returns a single market with associated routes.
"""
function getmarkets(exchange::String, pair::String)
    r = get("$URL/markets/$exchange/$pair")
    s = String(r.body)
    return read(s)
end

"""
Returns the current price for all supported markets.
"""
function getprices()
    r = get("$URL/markets/prices")
    s = String(r.body)
    return read(s)
end

"""
Returns a market's last price.
"""
function getprices(exchange::String, pair::String)
    r = get("$URL/markets/$exchange/$pair/price")
    s = String(r.body)
    return read(s)
end

"""
Returns the market summary for all supported markets.
"""
function getsummary()
    r = get("$URL/markets/summaries")
    s = String(r.body)
    return read(s)
end

"""
Returns a market's last price as well as other stats based on a 24-hour sliding window.
"""
function getsummary(exchange::String, pair::String)
    r = get("$URL/markets/$exchange/$pair/summary")
    s = String(r.body)
    return read(s)
end

"""
Returns a market's most recent trades, incrementing chronologically.
"""
function gettrades(exchange::String, pair::String)
    r = get("$URL/markets/$exchange/$pair/trades")
    s = String(r.body)
    return read(s)
end

"""
Returns a market's order book.
"""
function getorderbook(exchange::String, pair::String)
    r = get("$URL/markets/$exchange/$pair/orderbook")
    s = String(r.body)
    return read(s)
end

"""
Returns a market's OHLC candlestick data.
Returns data as lists of lists of numbers for each time period integer.
"""
function getohlc(exchange::String, pair::String)
    r = get("$URL/markets/$exchange/$pair/ohlc")
    s = String(r.body)
    return read(s)
end
