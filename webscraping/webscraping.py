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
species_image = []

freshFishes = ["american-eel/"]




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

    img = soup.find("div", class_ = "species-banner-content")
    img = img.get('data-background-src').split("?",1)
    img = img[0]
    img = "https://myfwc.com" + img
    print(img, end = "\n")
    species_image.append(img)


    print(name, end="\n")
    species_name.append(name)
    print(scientific, end="\n"*2)
    species_scientific.append(scientific)

    status = soup.find("span", class_ = "species-tag").text.strip()
    print(status, end="\n"*2)
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



# print(species_name)
# print(species_scientific)
# print(species_status)
# print(species_appearence)
# print(species_habitat)
# print(species_behavior)
# print(species_additionalInfo)

# building dataframe in pandas
fishes = pd.DataFrame({
    'fish_name' : species_name,
    'fish_scientific' : species_scientific,
    'fish_status' : species_status,
    'fish_appearence' : species_appearence,
    "fish_habitat" : species_habitat,
    "fish_behavior" : species_behavior,
    "fish_additional" : species_additionalInfo,
    "fish_img" : species_image,
})

print(len(species_name))
print(len(species_scientific))
print(len(species_status))
print(len(species_appearence))
print(len(species_habitat))
print(len(species_behavior))
print(len(species_additionalInfo))
print(len(species_image))

fishes.to_csv('fish_data_test.csv')