"""
Returns all assets (in no particular order).
"""
function assets()
    r = get("$URL/assets")
    s = String(r.body)
    return read(s)
end

"""
Returns a single asset. Lists all markets which have this asset as a base or quote.
"""
function assets(symbol::String)
    r = get("$URL/assets/$symbol")
    s = String(r.body)
    return JSON2.read(s)
end

"""
Returns all pairs (in no particular order).
"""
function pairs()
    r = get("$URL/pairs")
    s = String(r.body)
    return read(s)
end

"""
Returns a single pair. Lists all markets for this pair.
"""
function pairs(symbol::String)
    r = get("$URL/assets/$symbol")
    s = String(r.body)
    return read(s)
end

"""
Returns a list of all supported exchanges.
"""
function exchanges()
    r = get("$URL/exchanges")
    s = String(r.body)
    return read(s)
end

"""
Returns a single exchange with associated routes.
"""
function exchanges(exchange::String)
    r = get("$URL/exchanges/$exchange")
    s = String(r.body)
    return read(s)
end

"""
Returns a list of all supported markets.
"""
function markets()
    r = get("$URL/markets")
    s = String(r.body)
    return read(s)
end

"""
Return supported markets for only a specific exchange.
"""
function markets(exchange::String)
    r = get("$URL/markets/$exchange")
    s = String(r.body)
    return read(s)
end

"""
Returns a single market with associated routes.
"""
function markets(exchange::String, pair::String)
    r = get("$URL/markets/$exchange/$pair")
    s = String(r.body)
    return read(s)
end

"""
Returns the current price for all supported markets.
"""
function prices()
    r = get("$URL/markets/prices")
    s = String(r.body)
    return read(s)
end

"""
Returns a market's last price.
"""
function prices(exchange::String, pair::String)
    r = get("$URL/markets/$exchange/$pair/price")
    s = String(r.body)
    return read(s)
end

"""
Returns the market summary for all supported markets.
"""
function summary()
    r = get("$URL/markets/summaries")
    s = String(r.body)
    return read(s)
end

"""
Returns a market's last price as well as other stats based on a 24-hour sliding window.
"""
function summary(exchange::String, pair::String)
    r = get("$URL/markets/$exchange/$pair/summary")
    s = String(r.body)
    return read(s)
end

"""
Returns a market's most recent trades, incrementing chronologically.
"""
function trades(exchange::String, pair::String)
    r = get("$URL/markets/$exchange/$pair/trades")
    s = String(r.body)
    return read(s)
end

"""
Returns a market's order book.
"""
function orderbook(exchange::String, pair::String)
    r = get("$URL/markets/$exchange/$pair/orderbook")
    s = String(r.body)
    return read(s)
end

"""
Returns a market's OHLC candlestick data.
Returns data as lists of lists of numbers for each time period integer.
"""
function ohlc(exchange::String, pair::String)
    r = get("$URL/markets/$exchange/$pair/ohlc")
    s = String(r.body)
    return read(s)
end
