# omniglobe_update_suite

### Prerequisites

These folders:  
RT_NRL_Wind_Waves\  
RT_NRL_mslp\  
RT_NRL_10m_winds\  
RT_NRL_relvor\  
RT_NRL_sol_rad\  
RT_WaterVapor\  
RT_Aerosols\  
NRL_Clouds_BlueMarble\  
NRL_IR\  

Should be inside this folder:  
C:\RT_Contents\  

Create them if they do not exist.  

.py files, suite.rc, and Dockerfile should be in C:\cylc\webscrape\  

webscrape_wrapper.ps1 can be anywhere.  

Download, install, run, login to docker for windows.  
https://store.docker.com/editions/community/docker-ce-desktop-windows  
In docker settings, share drives, check the box for C drive.  
This requires you to use an account with a password. (for some reason)   
If your account does not have a password you can create a new account and use its credentials.      
If you do this make sure that account has permisions to all the folders and files mentioned.  

### Instructions

Open Powershell and type this command:  
docker build -t cylc C:\cylc\webscrape\  

Right click the webscrape_wrapper.ps1 and select "run with PowerShell".  
The powershell window that opens can be closed.  

Open any web browser and go to localhost:5800 to confirm it is working.  
