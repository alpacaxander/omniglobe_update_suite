# omniglobe_update_suite

### Prerequisites (one time setup)

1. Folder Locations

   In Windows file explorer.  
   Go to 'This PC'.  
   Local Disk (C:)  
   This folder should exist: RT_Contents  
   With these folders inside of it:  
   NRL_Clouds_BlueMarble  
   NRL_IR  
   RT_Aerosols  
   RT_NRL_10m_winds  
   RT_NRL_mslp  
   RT_NRL_relvor  
   RT_NRL_sol_rad  
   RT_NRL_Wind_Waves  
   RT_WaterVapor  

   Again in Local Disk (C:) this folder should exist:  
   cylc  
   With this folder inside:  
   webscrape  

   Create these folders if they do not exist.  

2. File Locations  
 - [Click here to download.](https://github.com/alpacaxander/omniglobe_update_suite/archive/master.zip)
 - Right click zip file.
 - Select Extract All.
 - Put Bin folder, Dockerfile, Start Cylc.xml, suite.rc, webscrape_wrapper.ps1 in C:\cylc\webscrape\  
 **NOTE: Windows doesn't need you to extract the zip. As long as the files are in C:\cylc\webscrape\ this step is fulfilled**
3. Docker  
   1. If you do not have an account for docker, [create one](https://docs.docker.com/docker-id/ ).  
   2. Download/ install docker
     - [Click here](https://store.docker.com/editions/community/docker-ce-desktop-windows).  
     - Select "Please login to download"
     - After loging in, scroll down and select "Get Docker CE for Windows (stable)"
     - On most browsers an option will pop up asking if you want to run/open/cancel. Select run.
         If this does not pop up then find the download in the download folder, right click, and select run.
     - There will be a popup that asks if you want to allow docker to make changes to your device, select yes.
   3. Run  
     - After docker is installed, press the Windows icon/ Start Menu or the Search Windows button in the bottom left.
     - Type 'docker'
     - Select "Docker for Windows" (it may take a moment to start up)
   4. Login  
     - Once running it will prompt you for a login.  
       - If there is no promt go to Windows hidden icons. This is in the bottom right on the task bar. Near your time/date there is an icon that looks like a caret(^) clicking this will reveal a few hidden icons.  
       - There will be the docker logo of a whale with squares on its back. If this logo is not there then repeat step 3, Run.  
       - Right click the icon and select sign in.  
     - You can login with your dockerid or the email you created your account with. Use your dockerid (otherwise it will cause issues later).   
       - If you do not know your dockerid you can find it by logging onto [docker.com](https://www.docker.com/) and looking in the top right you should see a dropdown menu with your Docker id on it.  

   5. Shared Drives  

    - On the windows toolbar, hidden icons (refer to step 4 for how to find hidden icons), right click docker and select settings.  
    - Under shared drives, check the box for C drive.  
    - This will prompt you to login to the mechine as an admin.  
    - The username will be prefilled with {DOMAIN}/{USERNAME} (for example 'adomain-1234/alexander')  
    - This requires you to use an account with a password. (for some reason)  
    **If your account has a password then enter your password in the password box, select OK.**  
    **If your account does not have a password you need to create a new account with a password.**  
      - Click the Windows icon.  
      - Select Settings.  
      - Click Accounts.  
      - Select Family & other users.  
      - Click "Add someone else to this PC."  
      - Select "I don't have this person's sign-in information."  
      - Select "Add a user without a Microsoft account."  
      - Enter a username, type the account's password twice, enter a clue and select Next.  
      - Login into the user so Windows can do its initial setup.  
      - Once this user is set up go back and replace the {USERNAME} with the username of the new account (keep {DOMAIN}).
      - Enter password, select OK.  

   6. Build  

    - press the Windows icon/ Start Menu or the Search Windows button in the bottom left.  
    - Type Powershell, click on Windows Powershell.
    - Enter this command into the prompt:  
    - `docker build -t cylc C:\cylc\webscrape\`  

### Run

 - Right click webscrape_wrapper.ps1 and select "run with PowerShell".  
 - The powershell window that opens can be closed.  
 - Open any web browser and go to localhost:5800 to confirm it is working.  
 
### Automatic scheduling

 - Click Windows icon.
 - type 'task scheduler'.
 - select task scheduler
 - select "Action".
 - select "import task".
 - go to C:\cylc\webscrape\
 - select Start Cylc.xml
 - select OK.

### Debugging

On the windows toolbar, hidden icons, right click docker and select Restart.  
Even if this does not solve the issue it is important to do this while debugging.  
It is common for a container to "reserve" or otherwise restrict your container from using certain important resources.  
Other issues can continuously cause this issue, so restart often while debugging.  

Resetting docker to factory defaults may help as well.

Especially if you shared drives with a new accout, make sure that account has permisions to all the folders and files mentioned.  
 - Right click on C:\RT_Contents\.  
 - Click "Give access to".  
 - Select the username you created.  
 - Select "Yes, share the items."  
 - Repeat for C:\cylc\webscrape\
