-- ЭТО ГОВНО НЕ РАБОТАЕТ. ОНО КАК БЫ РАБОТАЕТ, НО ЗАДАВАТЬ ПЕРЕМЕННЫЕ НА РУССКОМ ЧЕРЕЗ CompCraft НЕЛЬЗЯ 

os.loЗЯ НА adAPI("json")
local APIkey = "trnsl.1.1.20171125T112911Z.8e1a92701f1beee6.9817d9f86ff90c27fc12a1192a0c736bd20fcfec"

str = http.get("https://translate.yandex.net/api/v1.5/tr.json/translate?key=".. APIkey .."&text=Насос&lang=ru-en&format=plain").readAll()
obj = json.decode(str)

TranslatedText_tabled = obj.text


write(unpack(TranslatedText_tabled))