
bash_cmd <- "C:\\Windows\\System32\\bash.exe -c"

win_user='pault' # amend this, could also do the same with model etc

# boxmox exprt name
expt <- 'pbl_diurnal_cycle'

# name of box model mechanism
model <- 'MOZART_4'

# move the data out of the way
# where are the original model output
win.dir <- '/mnt/c/Users/pault/OneDrive/Documents/Github/UKM-FRGS/BOXMOX/'
input.dir <- paste(win.dir,'input.data/', sep='')
output.dir <- paste(win.dir,'input.data/', sep='')

system(paste(bash_cmd,
            '"',
            '/home/ptg21/do_model_run.sh',
            expt,
            model,
            win.dir,
            input.dir,
            output.dir,
            '"',
            sep=' '))
