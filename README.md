# Robotic manipulator in 3D space EN
- Forward kinematics
- Inverse kinematics
- Avoiding obstacles
- GUI application

## Forward kinematics
- Forward kinematics refers to process of obtaining position and velocity of end effector, given the known joint angles and angular velocities
## Inverse kinematics
- Inverse kinematics is the use of kinematic equations to determine the motion of a robot to reach a desired position.
## Avoiding obstacles

## GUI application
 

# Priestorovy manipulator SK
- Dopredná kinematika pre manipulátor
- Inverzná kinematika pre manipulátor
- Vyhýbanie sa prekážkam
- Využitie predošlých porgramov na GUI program

## Dopredná kinematika
- Dopredná kinematika robota stanovuje polohu koncového bodu efektora v priestore, na základe parametrov pootočenia alebo vysunutia jednotlivých kĺbov a ramien. Prvým krokom pri výpočte doprednej kinematiky je identifikácia jednotlivých translačných a rotačných pohybov, ktoré sú potrebné pre pohyb z počiatočného stavu do ďalšieho bodu. Dopredná kinematika bola využitá pre robotický manipulátor so štyrmi rotačnými väzbami. Program bol zhotovený pomocou transformačnej matice. Pre koncový bod sa transformačná matica skladá zo 4 rotačných matíc. Matice sú uvedené nižšie. Na získanie bodov pre jednotlivé kĺby sa používajú podobné transformačné matice, ale len s rotáciami, ktoré sa vyskytnú v danom kĺbe a nižšie.


## Inverzná kinematika
- Inverznou metódou sa, na základe znalosti koncovej polohy manipulátora, získajú potrebné natočenia jednotlivých ramien. Inverzná úloha kinematiky pre polohy sa môže formálne
zapísať θ = f-1(x).
Pre výpočet inverznej kinematiky je použitý jacobian, avšak využitá je numerická derivácia v jacobiane. Analitická derivácia by bola náročná, náchylná na chyby.
Funkcia inverznej kinematiky má ako vstup začiatočné natočenia ramien Q.
- Zvoli sa:
1) krok pre deriváciu dq
2) dĺžky ramien L
3) bod, do ktorého chceme, aby sa rameno dostalo Xini
4) maximálny počet iterácií i_max
5) požadovaná presnosť, ktorú má spĺňať funkcia požadovaná_presnosť
6) stanovenie chyby err

 <p align="center">
    <img src="https://community.arm.com/cfs-file/__key/communityserver-blogs-components-weblogfiles/00-00-00-21-42/6378.figure_5F00_3_5F00_nvic.jpg" width="400">
</p>

## Vyhýbanie sa prekážkam
- Na vyhýbanie prekážok sú využité funkcie z predošlých dvoch kapitol a to dopredná kinematika a inverzná kinematika. Ďalej je využitá metóda gradient descent. Je to optimalizačný iteračný algoritmus na hľadanie lokálnych miním danej funkcie. Na nájdenie lokálneho minima funkcie sa používajú proporcionálne kroky negatívnej hodnoty gradientu.

## GUI aplikácia
-Užívateľské rozhranie bolo spravené ako GUI program v MATLABE. Na obrázkoch 2 až 5 sú vysvetlené jednotlivé funkcie programu pre RRRR manipulátor.
Na pravej strane je pole so simulovaným RRRR manipulátorom. Na ľavej strane sú panely na zadávanie jednotlivých hodnôt a na spúšťanie funkcií programu.
V panely s názvom DOPREDNÁ je možné dosadiť hodnoty pre uhly natočenia q1,q2,q3,q4. Stlačením tlačidla DOPREDNÁ získame doprednú kinematiku manipulátora, ktorá sa zobrazí na pravom panely. Jednou z pomôcok tohto programu je vykreslenie pracovného priestoru (priestor, v ktorom sa môže pohybovať rameno). Stlačením tlačidla Pracovná Plocha a následne vybratím jednej z funkcií sa zobrazí pracovný priestor guľovitého tvaru. Na získanie inverznej kinematiky k danému bodu, ktorý zadáme na panely Ciel je potrebné stlačiť tlačidlo INVERZNA. Nakoniec je možné zadať tri body, ako prekážky v pracovnom priestore RRRR manipulátoru. Daná funkcia sa spustí stlačením tlačidla TRAJEKTORIA. Avšak je potrebné zadať aj bod, kam sa má dostať dané rameno.

 <p align="center">
    <img src="https://community.arm.com/cfs-file/__key/communityserver-blogs-components-weblogfiles/00-00-00-21-42/6378.figure_5F00_3_5F00_nvic.jpg" width="400">
</p>

 <p align="center">
    <img src="https://community.arm.com/cfs-file/__key/communityserver-blogs-components-weblogfiles/00-00-00-21-42/6378.figure_5F00_3_5F00_nvic.jpg" width="400">
</p>
