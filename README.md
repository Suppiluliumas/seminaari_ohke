# The-Internet-Heroku Robot Framework Tests

Tämä projekti sisältää [Robot Framework](https://robotframework.org/) -testitiedostoja [the-internet-heroku](https://the-internet.herokuapp.com/) -sovelluksen eri toiminnallisuuksien testaamiseen.

## Projektin Idea

Tämä testisarja on luotu testaamaan the-internet-heroku-sovelluksen eri osia käyttäen Robot Frameworkia. Jokainen testitiedosto keskittyy yhteen toiminnallisuuteen, ja niiden tarkoituksena on varmistaa sovelluksen oikea toiminta eri skenaarioissa.

## Testitiedostot

1. **Add_remove_elements.robot**: Testit lisää ja poistaa elementtejä.
2. **Basic_auth.robot**: Testit basic_auth-sivun toiminnallisuudelle.
3. **Check_boxes.robot**: Testit valintaruutujen käyttäytymiselle.
4. **Context_menu.robot**: Testit kontekstivalikon toiminnallisuudelle.
5. **Form.login.robot**: Testit kirjautumislomakkeelle.
6. **Drag_drop.robot**: Testit elementtien raahaamiselle ja pudottamiselle.
7. **Dropdown.robot**: Testit alasvetovalikon toiminnallisuudelle.
8. **Entry_ad.robot**: Testit ilmoituksen sulkemiselle.

## Projektin Käyttö

Voit suorittaa kaikki testit ajamalla komennon:

```bash
robot robot_tests/
