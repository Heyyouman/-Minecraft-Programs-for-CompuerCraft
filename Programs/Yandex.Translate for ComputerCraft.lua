-- ЭТО ГОВНО НЕ РАБОТАЕТ. ОНО КАК БЫ РАБОТАЕТ, НО ЗАДАВАТЬ ПЕРЕМЕННЫЕ НА РУССКОМ ЧЕРЕЗ CompCraft НЕЛЬЗЯ 

os.loadAPI("json")
local APIkey = "  "

str = http.get("https://translate.yandex.net/api/v1.5/tr.json/translate?key=".. APIkey .."&text=Насос&lang=ru-en&format=plain").readAll()
obj = json.decode(str)

TranslatedText_tabled = obj.text


write(unpack(TranslatedText_tabled))
