# Capybara
* Praticando a automação de testes na Web.

## Configuração: Pré-requisitos
* ChromeDriver
* GeckoDriver
* Ruby >= 2.5.0
* E algumas Gems (Estão listadas abaixo)

### Como instalar ChromeDriver e GeckoDriver?

## Instalação
Download (Firefox) [Geckodriver](https://github.com/mozilla/geckodriver/releases) - Fique atento à versão do seu navegador.

## Vamos tomar como exemlo, primeiro, o navegador Chrome:

Download (Chrome) [ChromeDriver](https://chromedriver.chromium.org/downloads) - Fique atento à versão do seu navegador.


Após o download:
```sh
cd /Downloads
unzip chromedriver_linux64.zip

```

Certifique-se de descompactar o arquivo em seu diretório atual, você pode ls para copiar e colar o arquivo correto para descompactar. Em seguida, você precisa mover o arquivo para o local correto, para que possa encontrá-lo quando precisar.

```sh
sudo mv chromedriver /usr/bin/chromedriver
sudo mv chromedriver /usr/bin/chromedriver
sudo chown root:root /usr/bin/chromedriver
sudo chmod +x /usr/bin/chromedriver
```
Verifique se está funcionando:

```sh
chromedriver --url-base=/wd/hub
```
Você receberá a seguinte mensagem:
```sh
Starting ChromeDriver 105.0.5195.52 (412c95e518836d8a7d97250d62b29c2ae6a26a85-refs/branch-heads/5195@{#853}) on port 9515
Only local connections are allowed.
Please see https://chromedriver.chromium.org/security-considerations for suggestions on keeping ChromeDriver safe.
ChromeDriver was started successfully.

```

Repeita o mesmo prodecimento para o Firefox, o link está acima.


## GEMS

Precisaremos das seguintes gems:

| Gem | Documentação |
| ------ | ------ |
| Capybara | [Ferramenta de teste de integração para web](https://rubygems.org/gems/capybara) |
| Rspec | [BDD para Ruby](https://rubygems.org/gems/rspec) |
| Selenium-Webdriver| [Implementa protocolo W3C WebDriver para automatizar navegadores](https://rubygems.org/gems/selenium-webdriver) |
| FFI | [Biblioteca Ruby](https://rubygems.org/gems/ffi) |

## Rodando o teste
Rodando o teste de maneira geral:

```sh
rspec 

```


Rodando o teste de maneira específica:

```sh
rspec --tag @checkboxe
rspec --tag @dropdown
rspec --tag @radio
```