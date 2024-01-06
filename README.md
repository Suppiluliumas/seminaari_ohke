# Ohjelmistokehityksen Teknologioita -kurssi: The-Internet-Heroku Robot Framework Tests

Tämä projekti sisältää [Robot Framework](https://robotframework.org/) -testitiedostoja [the-internet-heroku](https://the-internet.herokuapp.com/) -sovelluksen eri toiminnallisuuksien testaamiseen. Tämä projekti on Ohjelmistokehityksen Teknologioita -kurssin seminaarityö.

## Projektin Idea

Tämä testisarja on luotu testaamaan the-internet-heroku-sovelluksen eri osia käyttäen Robot Frameworkia. Jokainen testitiedosto keskittyy yhteen toiminnallisuuteen, ja niiden tarkoituksena on varmistaa sovelluksen oikea toiminta eri skenaarioissa.

## Testitiedostot

1. **robottests/Add_remove_elements.robot**: Testit lisäävät ja poistavat elementtejä.
2. **robottests/Basic_auth.robot**: Testit basic_auth-sivun toiminnallisuudelle.
3. **robottests/Check_boxes.robot**: Testit valintaruutujen käyttäytymiselle.
4. **robottests/Context_menu.robot**: Testit kontekstivalikon toiminnallisuudelle.
5. **robottests/Form.login.robot**: Testit kirjautumislomakkeelle.
6. **robottests/Drag_drop.robot**: Testit elementtien raahaamiselle ja pudottamiselle.
7. **robottests/Dropdown.robot**: Testit alasvetovalikon toiminnallisuudelle.
8. **robottests/Entry_ad.robot**: Testit ilmoituksen sulkemiselle.

## Projektin Käyttö

Voit suorittaa kaikki testit ajamalla komennon:

```bash
robot robot_tests/
