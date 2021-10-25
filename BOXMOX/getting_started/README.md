# boxmox_getting_started

Welcome to the world of box modelling
=====================================

It will require you to learn a bit of UNIX, but not too much.  It'll also require you to do data analysis with csv files.

The professionals will use R to do this.  I think you'll like R, as it can do loads of stuff.  Take a look at

http://davidcarslaw.github.io/openair/

and imagine making your own awesome plots, like

http://davidcarslaw.github.io/openair/reference/polarPlot.html

In fact, here is a plot I made of Shahrul's ozone data

<img src="https://github.com/ptg21/boxmox-isoprene/blob/master/getting_started/Rplot.png" width="300"> 


BOXMOX is written specifically for Unix machines.  It uses software that is not normally available on Windows.  We'll first set up Windows to be able to run BOXMOX.

## SETUP

### Setup Ubuntu on Windows

- Download Ubuntu 20.04 LTS from the Microsoft Store

Follow the instructions here to install the required Windows Subsytem and restart the machine, as per the instructions on

https://docs.microsoft.com/en-us/windows/wsl/install-on-server


- Download MobaXTerm for Windows

https://mobaxterm.mobatek.net

- Download Notepad++ 

https://notepad-plus-plus.org


### Setup your installation of Ubuntu on Windows

Get familiar with the Ubuntu system on Windows.  This will be a big part of the project.  Superpowers!

After restarting the laptop, start the Ubuntu VM by going to the Start Menu and clicking on Ubuntu 20.04 LTS.  This will start a terminal, and then ask you to

- create a username and password

Now open MobaXTerm. If all is well you should find that there are new "User sessions" - 

<img src="https://github.com/paultgriffiths/UKM-FRGS/blob/main/BOXMOX/getting_started/mobaxterm_1.png" width="300" > 

after clicking it should look like this

<img src="https://github.com/paultgriffiths/UKM-FRGS/blob/main/BOXMOX/getting_started/mobaxterm_2.png" width="300" > 


Now

- update the Ubuntu VM

do ```sudo apt update``` to update the Ubuntu VM

do ```sudo apt upgrade``` to upgrade the software to the latest version

This will take a while. After it finishes, 

- install the required software

*if using Ubuntu 18.04*

``` sudo apt install bison yacc flex wget gfortran make```

*if using Ubuntu 20.04*

``` sudo apt install bison byacc flex wget gfortran make```

When this completes successfully you're ready to install BOXMOX

### Familiarisation with important Ubuntu details

Most of the normal windows operations (copying/moving files etc) can be done from the command line using Ubuntu.

The most important thing for this project at this stage is to be able to edit a text file.

Make sure you can edit and save a file using nano https://askubuntu.com/questions/54221/how-to-edit-files-in-a-terminal-with-nano

#### Setup BOXMOX on Ubuntu

- Download the BOXMOX installer by registering at https://www2.acom.ucar.edu/forms/boxmox-download - they will then send you a download link

*On Ubuntu 18.04*

- copy it to the home directory on your Ubuntu VM 

```cp /mnt/c/Users/<USER>/Downloads/install_BOXMOX.bash ~/```

replacing <USER> with whatever your Windows username is.

*On Ubuntu 20.04*
  
 Copy the link that was sent to you
 
 On the Ubuntu app, type wget --paste in link using right click--
  
  then modify the install_BOXMOX.bash file
  
```nano install_BOXMOX.bash```
  
  go to line 40 and replace   ```/usr/lib``` with ```/usr/lib/x86_64-linux-gnu``` 
  

 - install BOXMOX on your Ubuntu VM
 
- install BOXMOX
  

run 

```chmod +x install_BOXMOX.bash```

```./install_BOXMOX.bash```

<img src="https://github.com/paultgriffiths/UKM-FRGS/blob/main/BOXMOX/getting_started/copying_boxmox_to_home_directory.png" width="300" > 

- after completion, the BOXMOX install script tells you to modify your .bashrc to add the required lines.  Use a text editor e.g. nano to do this.

``` nano .bashrc```

##### Set up BOXMOX for box model work

```cd ~/boxmox/boxmox/bin/```

```./prepare_BOXMOX_mechanism MOZART_4```

```./new_BOXMOX_experiment_from_example pbl_diurnal_cycle```

```cd pbl_diurnal_cycle/```

```./MOZART_4.exe```

copy [this file](https://github.com/paultgriffiths/UKM-FRGS/blob/main/BOXMOX/do_model_run.sh) to your home directory on the Ubuntu VM and make it executable

```chmod +x do_model_run.sh```

make a note of where this Github repo is stored on your Windows machine.

## Running BOXMOX

The model can be run from a Jupyter notebook or an R script, or it can be run from the Ubuntu VM.  

### Set up Python on Windows or Set up R on Windows

You should give this some thought.  I think you're wise to choose one to start with.  In the end, it doesn't really matter.

### Python

Python can be used to for data analysis

- download a copy of Anaconda for Windows https://docs.anaconda.com/anaconda/install/windows/

- set up an analysis environment.  Launch Anaconda Navigator and create a new environment and then make sure the following packages are installed: pandas & jupyter

- start a Jupyter notebook and check if [this notebook[(https://github.com/paultgriffiths/UKM-FRGS/blob/main/BOXMOX/Python_scripts/Run_BOXMOX_and_plot_output.ipynb) work.

### R scripts

R can be used to for data analysis

see R_scripts and this file https://github.com/paultgriffiths/UKM-FRGS/blob/main/BOXMOX/R_scripts/run_boxmox_ubuntu.R

## CREDITS

### NONE OF THIS IS MY WORK AND YOU SHOULD CREDIT THE ORIGINAL AUTHORS NOT ME!


REMEMBER THAT BOXMOX IS THE WORK of Christoph Knote (LMU Munich, Germany) / Jérôme Barré (ECMWF, UK).
Register via 

https://boxmodeling.meteo.physik.uni-muenchen.de/descriptions/boxmox.html

and download via the webform to let them know you're using it.

Also, any publications arising from BOXMOX should be credited using

Main BOXMOX reference:
Knote, C., Tuccella, P., Curci, G., Emmons, L., Orlando, J. J., Madronich, S., Baro, R., Jimenez-Guerrero, P., Luecken, D., Hogrefe, C., Forkel, R., Werhahn, J., Hirtl, M., Perez, J. L., San Jose, R., Giordano, L., Brunner, D., Yahya, K., and Zhang, Y.: Influence of the choice of gas-phase mechanism on predictions of key gaseous pollutants during the AQMEII phase-2 intercomparison, Atmos. Environ., 115, 553– 568, doi:10.1016/j.atmosenv.2014.11.066, 2015.
