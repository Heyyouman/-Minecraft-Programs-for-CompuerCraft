local tArgs = { ... }
local exmoWindow = window.create(term.current(),15,5,20,10)

os.loadAPI("json")

str = http.get("https://api.exmo.com/v1/ticker/").readAll()

obj = json.decode(str)

exmoWindow = term.setBackgroundColor(8)
exmoWindow = term.clear()

if tArgs[1] == "USD" then
	write('\tBTC/USD\n\n')
	write('Buy: '.. obj.BTC_USD.buy_price ..' USD\n')
	write('Sell: '.. obj.BTC_USD.sell_price ..' USD\n')
	write('High: '.. obj.BTC_USD.high ..' USD\n')
	write('Low: '.. obj.BTC_USD.low ..' USD\n')
elseif tArgs[1] == "RUB" then 
	write('\tBTC/RUB\n\n')
	write('Buy: '.. obj.BTC_RUB.buy_price ..' RUB\n')
	write('Sell: '.. obj.BTC_RUB.sell_price ..' RUB\n')
	write('High: '.. obj.BTC_RUB.high ..' RUB\n')
	write('Low: '.. obj.BTC_RUB.low ..' RUB\n')
elseif tArgs[1] == "UAH" then
	write('\tBTC/UAH\n\n')
	write('Buy: '.. obj.BTC_UAH.buy_price ..' UAH\n')
	write('Sell: '.. obj.BTC_UAH.sell_price ..' UAH\n')
	write('High: '.. obj.BTC_UAH.high ..' UAH\n')
	write('Low: '.. obj.BTC_UAH.low ..' UAH\n')
else
	write('Usage: exmo USD/RUB/UAH\n')
end
term.setBackgroundColor(32768)