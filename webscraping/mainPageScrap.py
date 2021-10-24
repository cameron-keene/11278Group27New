import requests
from bs4 import BeautifulSoup
import pandas as pd 
import numpy as np

URL = "https://myfwc.com/wildlifehabitats/profiles/saltwater/snapper/yellowtail-snapper/"
page = requests.get(URL)

soup = BeautifulSoup(page.content, "html.parser")
results = soup.find("div", class_ = "species-detail-content")

species_name = []
species_scientific = []
species_status = []
species_appearence = []
species_habitat = []
species_behavior = []
species_additionalInfo = []

saltFishes = ["/jacks/african-pompano/"
,"/jacks/almaco-jack/"
,"/american-shad/"
,"/tuna/atlantic-bonito/"
,"/jacks/atlantic-bumper/"
,"/drums/atlantic-croaker/"
,"/sharks/atlantic-sharpnose-shark/"
,"/atlantic-spadefish/"
,"/atlantic-thread-herring/"
,"/ballyhoo/"
,"/jacks/banded-rudderfish/"
,"/sea-bass/bank-sea-bass/"
,"/bay-anchovy/"
,"/jacks/bigeye-scad/"
,"/drums/black-drum/"
,"/grouper/black-grouper/"
,"/sea-bass/black-sea-bass/"
,"/snapper/blackfin-snapper/"
,"/tuna/blackfin-tuna/"
,"/sharks/blacknose-shark/"
,"/sharks/blacktip-shark/"
,"/billfish/blue-marlin/"
,"/jacks/blue-runner/"
,"/sharks/blue-shark/"
,"/tuna/bluefin-tuna/"
,"/bonefish/"
,"/sharks/bonnethead-shark/"
,"/sharks/bull-shark/"
,"/sharks/caribbean-reef-shark/"
,"/mackerel/cero-mackerel/"
,"/cobia/"
,"/jacks/crevalle-jack/"
,"/snapper/cubera-snapper/"
,"/snapper/dog-snapper/"
,"/dolphinfish/"
,"/sharks/dusky-shark"
,"/mullet/fantail-mullet/"
,"/snook/fat-snook/"
,"/sharks/finetooth-shark/"
,"/jacks/florida-pompano/"
,"/catfish/gafftopsail-catfish/"
,"/grouper/gag-grouper/"
,"/grouper/goliath-grouper/"
,"/porgy/grass-porgy/"
,"/snapper/gray-snapper/"
,"/gray-triggerfish/"
,"/barracuda/"
,"/jacks/greater-amberjack/"
,"/flounder/gulf-flounder/"
,"/drums/gulf-kingfish/"
,"/gulf-menhaden/"
,"/gulf-sturgeon/"
,"/catfish/hardhead-catfish/"
,"/hogfish/"
,"/jacks/horse-eye-jack/"
,"/porgy/jolthead-porgy/"
,"/mackerel/king-mackerel/"
,"/porgy/knobbed-porgy/"
,"/tarpon/ladyfish/"
,"/snapper/lane-snapper/"
,"/jacks/leatherjacket/"
,"/sharks/lemon-shark/"
,"/jacks/lesser-amberjack/"
,"/tuna/little-tunny/"
,"/porgy/littlehead-porgy/"
,"/jacks/lookdown/"
,"/snapper/mahogany-snapper/"
,"/mangrove-rivulus/"
,"/snapper/mutton-snapper/"
,"/grouper/nassau-grouper/"
,"/sharks/nurse-shark/"
,"/jacks/palometa/"
,"/jacks/permit/"
,"/grunt/pigfish/"
,"/porgy/pinfish/"
,"/snapper/queen-snapper/"
,"/drums/red-drum/"
,"/grouper/red-grouper/"
,"/porgy/red-porgy/"
,"/snapper/red-snapper/"
,"/sea-bass/rock-sea-bass/"
,"/jacks/round-scad/"
,"/billfish/sailfish/"
,"/saltmarsh-topminnow/"
,"/drums/sand-seatrout/"
,"/sharks/sandbar-shark/"
,"/scaled-sardine/"
,"/grouper/scamp/"
,"/snapper/schoolmaster/"
,"/porgy/sheepshead/"
,"/sharks/shortfin-mako-shark/"
,"/snapper/silk-snapper/"
,"/drums/silver-perch/"
,"/drums/silver-seatrout/"
,"/tuna/skipjack-tuna/"
,"/smalltooth-sawfish/"
,"/sharks/smooth-dogfish/"
,"/snook/snook/"
,"/flounder/southern-flounder/"
,"/drums/southern-kingfish/"
,"/mackerel/spanish-mackerel/"
,"/spanish-sardine/"
,"/sharks/spiny-dogfish/"
,"/drums/spot/"
,"/porgy/spottail-pinfish/"
,"/drums/spotted-seatrout/"
,"/striped-anchovy/"
,"/striped-mojarra/"
,"/mullet/striped-mullet/"
,"/flounder/summer-flounder/"
,"/billfish/swordfish/"
,"/snook/swordspine-snook/"
,"/tarpon/tarpon/"
,"/snook/tarpon-snook/"
,"/sharks/thresher-shark/"
,"/sharks/tiger-shark/"
,"/grunt/tomtate/"
,"/snapper/vermilion-snapper/"
,"/mackerel/wahoo/"
,"/grouper/warsaw-grouper/"
,"/drums/weakfish/"
,"/grunt/white-grunt/"
,"/billfish/white-marlin/"
,"/grouper/yellowfin-grouper/"
,"/yellowfin-menhaden/"
,"/tuna/yellowfin-tuna/"
,"/grouper/yellowmouth-grouper/"
,"/snapper/yellowtail-snapper/"]




x = 0

for saltFish in saltFishes:
    URL = ("https://myfwc.com/wildlifehabitats/profiles/saltwater" + saltFish)
    page = requests.get(URL)
    soup = BeautifulSoup(page.content, "html.parser")
    results = soup.find("div", class_ = "species-detail-content")
    species = soup.find("div", class_ = "species-banner-text")
    name = species.find("h1").text.strip()

    scientific = species.find("h2").text.strip()

    #print(name, end="\n")
    species_name.append(name)
    # print(scientific, end="\n"*2)
    species_scientific.append(scientific)

    status = soup.find("span", class_ = "species-tag native").text.strip()
    # print(status, end="\n"*2)
    species_status.append(status)

    fish_elements = results.find_all("div", class_ = "container")


    appearance_element = " "
    habitat_element = " "
    behavior_element = " "
    additional_element = " "
    for fish_element in fish_elements:
        title_element = fish_element.find("h2").text.strip()
        

        if (title_element == "Appearance"):
            appearance_element = fish_element.find("p").text.strip()
        elif (title_element == "Habitat"):
            habitat_element = fish_element.find("p").text.strip()
        elif (title_element == "Behavior"):
            behavior_element = fish_element.find("p").text.strip()
        elif (title_element == "Additional Information"):
            additional_element = fish_element.find("p").text.strip()
        
    species_appearence.append(appearance_element)
    species_habitat.append(habitat_element)
    species_behavior.append(behavior_element)
    species_additionalInfo.append(additional_element)



    # print( (species_name[x]), end= "\n")
    # print(species_scientific[x], end= "\n")
    # print(species_status[x], end= "\n")
    # print(species_appearence[x], end= "\n")
    # print(species_habitat[x], end= "\n")
    # print(species_behavior[x], end= "\n")
    # print(species_additionalInfo[x], end= "\n") 
    
    x += 1


freshFishes = ["american-eel/"
,"american-shad/"
,"arapaima/"
,"atlantic-sturgeon/"
,"black-acara/"
,"black-crappie/"
,"blackmouth-shiner/"
,"blue-catfish/"
,"blue-tilapia/"
,"bluegill/"
,"bluenose-shiner/"
,"bowfin/"
,"brown-bullhead/"
,"brown-hoplo/"
,"bullseye-snakehead/"
,"butterfly-peacock/"
,"chain-pickerel/"
,"channel-catfish/"
,"clown-knifefish/"
,"common-carp/"
,"crystal-darter/"
,"flathead-catfish/"
,"florida-gar/"
,"grass-carp/"
,"harlequin-darter/"
,"jaguar-guapote/"
,"key-silverside/"
,"lake-eustis-pupfish/"
,"largemouth-bass/"
,"mayan-cichlid/"
,"midas-cichlid/"
,"okaloosa-darter/"
,"oscar/"
,"piranha/"
,"redbreast-sunfish/"
,"redear-sunfish/"
,"sailfin-catfish/"
,"shoal-bass/"
,"shortnose-sturgeon/"
,"southern-tesselated-darter/"
,"spotted-bass/"
,"spotted-sunfish/"
,"spotted-tilapia/"
,"striped-bass/"
,"sucker/"
,"sunshine-bass/"
,"suwannee-bass/"
,"swamp-eel/"
,"walking-catfish/"
,"warmouth/"
,"white-bass/"
,"white-catfish/"
,"yellow-bullhead/"]




x = 0

for freshFish in freshFishes:
    URL = ("https://myfwc.com/wildlifehabitats/profiles/freshwater/" + freshFish)
    page = requests.get(URL)
    soup = BeautifulSoup(page.content, "html.parser")
    results = soup.find("div", class_ = "species-detail-content")
    species = soup.find("div", class_ = "species-banner-text")
    name = species.find("h1").text.strip()

    try: scientific = species.find("h2").text.strip()
    except AttributeError: 
        scientific = " "

    # print(name, end="\n")
    species_name.append(name)
    # print(scientific, end="\n"*2)
    species_scientific.append(scientific)

    status = soup.find("span", class_ = "species-tag").text.strip()
    # print(status, end="\n"*2)
    species_status.append(status)

    fish_elements = results.find_all("div", class_ = "container")


    appearance_element = " "
    habitat_element = " "
    behavior_element = " "
    additional_element = " "
    for fish_element in fish_elements:
        title_element = fish_element.find("h2").text.strip()
        

        if (title_element == "Appearance"):
            appearance_element = fish_element.find("p").text.strip()
        elif (title_element == "Habitat"):
            habitat_element = fish_element.find("p").text.strip()
        elif (title_element == "Behavior"):
            behavior_element = fish_element.find("p").text.strip()
        elif (title_element == "Additional Information"):
            try: additional_element = fish_element.find("p").text.strip()
            except AttributeError:
                additional_element = ""
        
    species_appearence.append(appearance_element)
    species_habitat.append(habitat_element)
    species_behavior.append(behavior_element)
    species_additionalInfo.append(additional_element)



    # print( (species_name[x]), end= "\n")
    # print(species_scientific[x], end= "\n")
    # print(species_status[x], end= "\n")
    # print(species_appearence[x], end= "\n")
    # print(species_habitat[x], end= "\n")
    # print(species_behavior[x], end= "\n")
    # print(species_additionalInfo[x], end= "\n") 
    
    x += 1

# building dataframe in pandas
fishes = pd.DataFrame({
    'fish_name' : species_name,
    'fish_scientific' : species_scientific,
    'fish_status' : species_status,
    'fish_appearence' : species_appearence,
    "fish_habitat" : species_habitat,
    "fish_behavior" : species_behavior,
    "fish_additional" : species_additionalInfo,
})

print(len(species_name))
print(len(species_scientific))
print(len(species_status))
print(len(species_appearence))
print(len(species_habitat))
print(len(species_behavior))
print(len(species_additionalInfo))

fishes.to_csv('fish_data_main.csv')