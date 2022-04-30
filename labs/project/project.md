# Pwm modulace zvukového výstupu

### Team members

* Tomáš Svěcený - Kód projektu, testování s hardwarem, extra hardware, dokumentace, video prezentace
* Michal Vida - Dokumentace, testování
* Jan Ruibar - mimo první hodinu projektu zcela nepřítomen, pokusi o online kontakt neúspěšné, nepodílel se na projektu

Link to your GitHub project folder:

   [https://github.com/SaawySorenson/Digital-electronics-1/tree/main/labs/project](https://github.com/SaawySorenson/Digital-electronics-1/tree/main/labs/project)


### Table of contents
* [Project objectives](#objectives)
* [Hardware description](#hardware)
* [VHDL modules description and simulations](#modules)
* [TOP module description and simulations](#top)
* [Video](#video)
* [References](#references)


<a name="objectives"></a>
## Project objectives

Jako cíl projektu jsme se rozhodli pro napodobení "zvukové klávesnice" tzn. generování různých zvukových výstupů dle stisknuté klávesy.

Cíle:<br>
-zkušební verze kódu <br>
-kompilace kódu<br>
-otestování slyšitelné frekvence výstupu<br>
-konečná verze kódu<br>
-prezentace funkce<br>


<a name="hardware"></a>
## Hardware description

Mono audio output<br>
Audio Jack na desce Nexys A7 je připojen k filtru dolní propusti, který je ovládán portem AUD_PWM s pulzně šířkovou modulací a portem AUD_SD, 
který je třeba napájet logickou 1 (high) pro aktivaci funkce filtru.

![pwm](images/pwm.png)



<a name="modules"></a>
## VHDL modules description and simulations

Write your text here.


<a name="top"></a>
## TOP module description and simulations

Write your text here.


<a name="video"></a>
## Video

Write your text here


<a name="references"></a>
## References

1. Write your text here.
