*** Settings ***
Library   SSHLibrary
Library   Selenium2Library

*** Variables ***
${Witam}  Ucz sie testerze
${REMOTE_HOST}  127.0.0.1
${REMOTE_USERNAME}  tester
${REMOTE_PASSWORD}  tester
${LOGIN_wp}         //*[@id="login"]
${password_wp}      //*[@id="password"]
${login_button}     //*[@id="btnSubmit"]
${user_wp}          testerwsb_t1
${password_wp_valid}      adam1234

*** Test Cases ***
Loggin Testing
  Log To Console  Hello, tester!
My log Testing
  my log
Testing another
  my log two    ${Witam}
Testing new environment with uname
  Polacz sie z komputerem zdalnym
  Zaloguj sie uzywajac poprawnego loginu i hasla
  Wpisz komende i sprawdz czy jest poprawna
  Zamknij polaczenie
Loggin Testing to wp.pl in Firefox Browsing
  Otworz przegladarke
  Wybierz zakladke poczta
  Wprowadz poprawny login
  Wprowadz poprawne haslo
  Wybierz przycisk zaloguj
  Sprawdz poprawnosc zalogowania
  Zamknij przegladarke



*** Keywords***
my log
    Log To Console  Hello, tester
my log two
    [Arguments]   ${Witam}
    Log To Console   ${Witam}
Polacz sie z komputerem zdalnym
    Open Connection  ${REMOTE_HOST}
Zaloguj sie uzywajac poprawnego loginu i hasla
    Login  ${REMOTE_USERNAME}  ${REMOTE_PASSWORD}
Wpisz komende i sprawdz czy jest poprawna
    ${uname}=      Execute command    uname -a
    Should Not Be Empty      ${uname}
    Should Contain      ${uname}    Linux
Zamknij polaczenie
    Close All Connections
Otworz przegladarke
  Open browser      http://www.wp.pl
Wybierz zakladke poczta
  Go to             https://poczta.wp.pl
Wprowadz poprawny login
    Input Text        ${LOGIN_wp}   ${user_wp}
Wprowadz poprawne haslo
    Input Text        ${password_wp}  ${password_wp_valid}
Wybierz przycisk zaloguj
    Click Button      ${login_button}
Sprawdz poprawnosc zalogowania
    Page Should Contain      Odebrane
Zamknij przegladarke
    Close All browsers
