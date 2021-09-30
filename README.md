# Dotfiles

<!---Esses são exemplos. Veja https://shields.io para outras pessoas ou para personalizar este conjunto de escudos. Você pode querer incluir dependências, status do projeto e informações de licença aqui--->

![GitHub repo size](https://img.shields.io/github/repo-size/iuricode/README-template?style=for-the-badge)

<!---
![GitHub language count](https://img.shields.io/github/languages/count/iuricode/README-template?style=for-the-badge)
![GitHub forks](https://img.shields.io/github/forks/iuricode/README-template?style=for-the-badge)
![Bitbucket open issues](https://img.shields.io/bitbucket/issues/iuricode/README-template?style=for-the-badge)
![Bitbucket open pull requests](https://img.shields.io/bitbucket/pr-raw/iuricode/README-template?style=for-the-badge)
--->

<img src="https://i.imgur.com/fhKtNZc.png" alt="Theme">

> I'm starting to learn how to customize things on linux so this is just a place to keep my dotfiles. But feel free to use if you like something...

### ﳨ Riced so far...

- [x] Polybar

### To be riced...
- [ ] Don't know....

## 💻 Dependencies

* [NerdFonts](https://www.nerdfonts.com/)
* These tools to auth on Gmail for the email profile:
```
pip install --upgrade google-api-python-client google-auth-httplib2 google-auth-oauthlib
```
* [OpenWeather API Key](https://openweathermap.org/)

## 🚀 Installing

* Place all files into ~/.config/polybar/
* Check if all scripts have the executable permission
* Provide Auth key to email module
```
~/.config/polybar/gmail/auth.py
```
* Insert your Openweather api key into `~/.config/polybar/scripts/openweathermap-fullfeatured.sh`
* Done.

## ☕ Usefull info

To make it run on Openbox when SO start:

* Edit `~/.config/openbox/autostart` and include this command:

```
bash ~/.config/polybar/launch.sh
```

* To refresh polybar use `polybar-msg cmd restart`

##  That's all for now...

