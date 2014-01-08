3DScanner
=========

Description:
------------

  Cheap 3D scanner using laser pointers and webcams.

General objectives:
-------------------

  1. Make the Scanner.
  2. Program the Scanner.
  3. Scan something.

  Status:
    1. We have almost all the parts needed and the drafts are finished.
    2. We could control all functional aspects at an early stage.
    3. We are expecting to finish the previous parts.

Particular Objetctives:
-----------------------
  

External Steps:
---------------
    1. Adafruit Motor Shield:
      You need: 
      *Adafruit Motor Shield
      Instruction are in http://www.ladyada.net/make/mshield/make.html
      For install the Arduino Library see http://www.ladyada.net/make/mshield/use.html
      
    2. MATLAB Support Package for Arduino:
      You need: 
        MATLAB Support Package for Arduino (ArduinoIO Package)
        http://www.mathworks.com/matlabcentral/fileexchange/32374 

Making:
-------

  Hardware construction:
    1.
   
 Otros:
-------
     El sofware programado es practicamente funcinal, pese a ello hay cuatro tealles a revisar para completar un escaneo:
    1. El Shiel se 'tupe' despues de un tiempo funcinando debido a que recibe mmás corriente de la recomendada, hay que ponerle 2 puentes h más (revisar información del fabricante).
    2. La calibración requiere hacerse en un lugar con poca luz, también podria colocarse un papel celofán azul por fuera para filtrar las frecuencias que molestan.
    3. Cuando escanea no espera el tiempo necesario para hacer la medición, luego hay que modificar el codigo para que espere un tiempo en función de la velocidad de los motores.
    4. Hay que corregir algunos aspectos en el documenteo .txt donde se guarda la información (buscar formato .PLY, por ejemplo)
    
CGC
