# Pivoting-Lab-Fixed
He arreglado la estructura de Docker que ha diseñado Jose, mi profesor:<br> https://jogonar-rgb.github.io/Ciberseguridad_25_26/Seguridad_ofensiva/Pivoting/


en tu máquina haz esto (antes de lanzar el docker):<br>
nano /etc/docker/daemon.json<br>
{ <br>
  "dns": ["8.8.8.8", "1.1.1.1"]<br>
}<br>
