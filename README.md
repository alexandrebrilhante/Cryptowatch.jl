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
 :assets
 :exchanges
 :markets
 :ohlc
 :orderbook
 :pairs
 :prices
 :summary

julia> assets()
441×5 DataFrame
│ Row │ id    │ symbol │ name               │ fiat  │ route                                 │
│     │ Int64 │ String │ String             │ Bool  │ String                                │
├─────┼───────┼────────┼────────────────────┼───────┼───────────────────────────────────────┤
│ 1   │ 404   │ 1st    │ FirstBlood         │ false │ https://api.cryptowat.ch/assets/1st   │
│ 2   │ 201   │ ICX    │ ICON               │ false │ https://api.cryptowat.ch/assets/ICX   │
│ 3   │ 517   │ abyss  │ The Abyss          │ false │ https://api.cryptowat.ch/assets/abyss │
│ 4   │ 502   │ acat   │ Alphacat           │ false │ https://api.cryptowat.ch/assets/acat  │
│ 5   │ 484   │ act    │ Achain             │ false │ https://api.cryptowat.ch/assets/act   │
│ 6   │ 166   │ ada    │ Cardano            │ false │ https://api.cryptowat.ch/assets/ada   │
│ 7   │ 695   │ adh    │ AdHive             │ false │ https://api.cryptowat.ch/assets/adh   │
│ 8   │ 316   │ adt    │ adToken            │ false │ https://api.cryptowat.ch/assets/adt   │
│ 9   │ 286   │ adx    │ AdEx               │ false │ https://api.cryptowat.ch/assets/adx   │
│ 10  │ 409   │ ae     │ Aeternity          │ false │ https://api.cryptowat.ch/assets/ae    │
│ 11  │ 311   │ aeon   │ Aeon               │ false │ https://api.cryptowat.ch/assets/aeon  │
│ 12  │ 291   │ agi    │ SingularityNET     │ false │ https://api.cryptowat.ch/assets/agi   │
│ 13  │ 521   │ aion   │ Aion               │ false │ https://api.cryptowat.ch/assets/aion  │
│ 14  │ 434   │ amb    │ Ambrosus           │ false │ https://api.cryptowat.ch/assets/amb   │
│ 15  │ 112   │ amp    │ Synereo            │ false │ https://api.cryptowat.ch/assets/amp   │
│ 16  │ 270   │ ant    │ Aragon             │ false │ https://api.cryptowat.ch/assets/ant   │
│ 17  │ 522   │ appc   │ AppCoins           │ false │ https://api.cryptowat.ch/assets/appc  │
⋮
│ 424 │ 110   │ xrp    │ Ripple             │ false │ https://api.cryptowat.ch/assets/xrp   │
│ 425 │ 29    │ xtz    │ Tezos              │ false │ https://api.cryptowat.ch/assets/xtz   │
│ 426 │ 26    │ xvc    │ Vcash              │ false │ https://api.cryptowat.ch/assets/xvc   │
│ 427 │ 170   │ xvg    │ Verge              │ false │ https://api.cryptowat.ch/assets/xvg   │
│ 428 │ 310   │ xwc    │ WhiteCoin          │ false │ https://api.cryptowat.ch/assets/xwc   │
│ 429 │ 243   │ xzc    │ ZCoin              │ false │ https://api.cryptowat.ch/assets/xzc   │
│ 430 │ 925   │ yeed   │ YGGDRASH           │ false │ https://api.cryptowat.ch/assets/yeed  │
│ 431 │ 439   │ yoyow  │ YOYOW              │ false │ https://api.cryptowat.ch/assets/yoyow │
│ 432 │ 57    │ zar    │ South African rand │ true  │ https://api.cryptowat.ch/assets/zar   │
│ 433 │ 294   │ zcl    │ ZClassic           │ false │ https://api.cryptowat.ch/assets/zcl   │
│ 434 │ 681   │ zcn    │ 0chain             │ false │ https://api.cryptowat.ch/assets/zcn   │
│ 435 │ 23    │ zec    │ Zcash              │ false │ https://api.cryptowat.ch/assets/zec   │
│ 436 │ 36    │ zen    │ ZenCash            │ false │ https://api.cryptowat.ch/assets/zen   │
│ 437 │ 301   │ zil    │ Zilliqa            │ false │ https://api.cryptowat.ch/assets/zil   │
│ 438 │ 512   │ zpt    │ Zeepin             │ false │ https://api.cryptowat.ch/assets/zpt   │
│ 439 │ 545   │ zrc    │ ZrCoin             │ false │ https://api.cryptowat.ch/assets/zrc   │
│ 440 │ 54    │ zrx    │ 0x                 │ false │ https://api.cryptowat.ch/assets/zrx   │
│ 441 │ 443   │ zsc    │ Zeusshield         │ false │ https://api.cryptowat.ch/assets/zsc   │
```

## Documentation

https://cryptowat.ch/docs/api