os.loadAPI("json")
str = http.get("https://api.fixer.io/latest?base=USD").readAll()
fixer_usd = json.decode(str)
write("USD-RUB: ".. fixer_usd.rates.RUB .."\n")

str = http.get("https://api.fixer.io/latest?base=EUR").readAll()
fixer_eur = json.decode(str)
write("EUR-RUB: ".. fixer_eur.rates.RUB .."\n \n")

str = http.get("https://api.cryptonator.com/api/ticker/btc-usd").readAll()
cryptonator_btc = json.decode(str)
write("BTC: ".. tonumber(cryptonator_btc.ticker.price) .."$\n")