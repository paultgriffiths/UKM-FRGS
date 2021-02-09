# boxmox_getting_started

Welcome to the world of box modelling
=====================================

It will require you to learn a bit of UNIX, but not too much.  It'll also require you to do data analysis with csv files.

The professionals will use R to do this.  I think you'll like R, as it can do loads of stuff.  Take a look at

http://davidcarslaw.github.io/openair/

and imagine making your own awesome plots, like

http://davidcarslaw.github.io/openair/reference/polarPlot.html

In fact, here is a plot I made of Shahrul's ozone data

![alt text]<img src="https://github.com/ptg21/boxmox-isoprene/blob/master/getting_started/Rplot.png" width="300"> 


### SETUP

#### Setup Ubuntu on Windows

- Download Ubuntu 20.04 LTS from the Microsoft Store

Follow the instructions here to install the required Windows Subsytem and restart the machine, as per the instructions on

https://docs.microsoft.com/en-us/windows/wsl/install-on-server

- create a username and password

- update the Ubuntu VM

do ```sudo apt update``` to update the Ubuntu VM

do ```sudo apt upgrade``` to upgrade the software to the latest version

- install the required software

``` sudo apt install bison byacc flex wget gfortran make```


- Download the BOXMOX installer from https://boxmodeling.meteo.physik.uni-muenchen.de/downloads/boxmox.html

- copy it to the home directory on your Ubuntu VM 

```cp /mnt/c/Users/<USER>/Downloads/install_BOXMOX.bash ~/```

replacing <USER> with whatever your Windows username is.
  
 - install BOXMOX on your Ubuntu VM
 
- install BOXMOX

run 

```chmod +x install_BOXMOX.bash```

```./install_BOXMOX.bash```

![Ubuntu VM on Windows]<img src="https://github.com/paultgriffiths/UKM-FRGS/blob/main/BOXMOX/getting_started/copying_boxmox_to_home_directory.png" width="300" > 

- after completion, the BOXMOX install script tells you to modify your .bashrc to add the required lines.  Use a text editor e.g. nano to do this.

``` nano .bashrc```



#### Set up Python on Windows or Set up R on Windows

##### Python

- download a copy of Anaconda for Windows https://docs.anaconda.com/anaconda/install/windows/

- set up an analysis environment



NONE OF THIS IS MY WORK AND YOU SHOULD CREDIT THE ORIGINAL AUTHORS NOT ME!
==========================================================================

REMEMBER THAT BOXMOX IS THE WORK of Christoph Knote (LMU Munich, Germany) / Jérôme Barré (ECMWF, UK).
Register via 

https://boxmodeling.meteo.physik.uni-muenchen.de/descriptions/boxmox.html

and download via the webform to let them know you're using it.

Also, any publications arising from BOXMOX should be credited using

Main BOXMOX reference:
Knote, C., Tuccella, P., Curci, G., Emmons, L., Orlando, J. J., Madronich, S., Baro, R., Jimenez-Guerrero, P., Luecken, D., Hogrefe, C., Forkel, R., Werhahn, J., Hirtl, M., Perez, J. L., San Jose, R., Giordano, L., Brunner, D., Yahya, K., and Zhang, Y.: Influence of the choice of gas-phase mechanism on predictions of key gaseous pollutants during the AQMEII phase-2 intercomparison, Atmos. Environ., 115, 553– 568, doi:10.1016/j.atmosenv.2014.11.066, 2015.
