# omniglobe_update_suite

This is for specific use at NRL.

### Get the files

 - [Click to download.](https://github.com/alpacaxander/omniglobe_update_suite/archive/master.zip)
 - Right click zip file.
 - Select Extract All.
 - See below where to save files.

### Prerequisites (one time setup)

1. Folder Locations 

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

2. File Location  

   .py files, suite.rc, and Dockerfile should be in C:\cylc\webscrape\  
   webscrape_wrapper.ps1 can be anywhere.  

3. Docker  
   1. Download, install, run [docker for windows](https://store.docker.com/editions/community/docker-ce-desktop-windows).  
   2. Login  

     - Once running it will prompt you for a login.  
     - If you do not have an account create one and [login](https://docs.docker.com/docker-id/ ).  

   3. Shared Drives  

    - On the windows toolbar, hidden icons, right click docker and select settings.  
    - Under shared drives, check the box for C drive.  
    - This will prompt you to login.  
    - The username will be prefilled with {DOMAIN}/{USERNAME}  
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
      - Once this user is set up go back and replace the {USERNAME} the username of the new account (keep {DOMAIN}).
      - Enter password, select OK.  

   4. Build  

    - Click the Windows icon.  
    - Type Powershell, click on Windows Powershell.
    - Enter this command into the prompt:  
    - `docker build -t cylc C:\cylc\webscrape\`  

### Run

 - Right click webscrape_wrapper.ps1 and select "run with PowerShell".  
 - The powershell window that opens can be closed.  
 - Open any web browser and go to localhost:5800 to confirm it is working.  

### Debugging

On the windows toolbar, hidden icons, right click docker and select Restart.  
Even if this does not solve the issue it is important to do this while debugging.  
It is common for a container to "reserve" or otherwise restrict your container from using certain important resources.  
Other issues can continuously cause this issue, so restart often while debugging.  

Especially if you shared drives with a new accout, make sure that account has permisions to all the folders and files mentioned.  
 - Right click on C:\RT_Contents\.  
 - Click "Give access to".  
 - Select the username you created.  
 - Select "Yes, share the items."  
