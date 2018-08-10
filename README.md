# omniglobe_update_suite

This app is a one time setup to keep specific folders up to date with NRL images.

## Prerequisites (one time setup)

### Docker  
1. If you do not have an account for docker, [create one](https://docs.docker.com/docker-id/ ).  
2. Download/ install docker
   1. [Click here](https://store.docker.com/editions/community/docker-ce-desktop-windows).  
   2. Select "Please login to download"
   3. After loging in, scroll down and select "Get Docker CE for Windows (stable)" (the download may take some time)
   4. On most browsers an option will pop up asking if you want to run/open/cancel. Select run.
      If this does not pop up then find the download in your download folder, right click, and select run.
   5. There will be a popup that asks if you want to allow docker to make changes to your device, select yes.
3. Run  
   1. After docker is installed, press the Windows icon/ Start Menu or the Search Windows button in the bottom left.
   2. Type 'docker'
   3. Select "Docker for Windows" (it may take a moment to start up)
4. Login  
   1. Once running it will prompt you for a login.  
      - **If there is no prompt** go to Windows hidden icons. This is in the bottom right on the task bar. Near your time/date there is an icon that looks like a caret(^) clicking this will reveal a few hidden icons.  
      - There will be the docker logo of a whale with squares on its back. If this logo is not there then repeat step 3, Run.  
      - Right click the icon and select sign in (this may look different than the origional prompt).  
   2. You can login with your dockerid or the email you created your account with. Use your dockerid (otherwise it will cause issues later).   
      - If you do not know your dockerid you can find it by logging onto [docker.com](https://www.docker.com/) and looking in the top right you should see a dropdown menu with your Docker id as the label.  

5. Shared Drives  

   **If the user account on Windows has a password**  
   1. On the windows toolbar, hidden icons (refer to step 4 for how to find hidden icons), right click docker and select settings.  
   2. Click shared drives
   3. Check the box for C drive.  
   4. This will prompt you to login to the mechine as an admin.  
   5. The username will be prefilled with {DOMAIN}/{USERNAME} (for example 'adomain-1234/alexander')  
   6. Enter your password into the password box then hit OK.  

   **If your account does not have a password you need to create a new account with a password.**  
   1. Click the Windows icon.  
   2. Select Settings.  
   3. Click Accounts.  
   4. Select Family & other people.  
   5. Click "Add someone else to this PC."  
   6. Select "I don't have this person's sign-in information."  
   7. Select "Add a user without a Microsoft account."  
   8. Enter a username, type the account's password twice, enter a clue and select Next.  
   9. Login into the user you just created so Windows can do its initial setup.  
   10. Log back into the account you began the setup with.  
   11. On the windows toolbar, hidden icons (refer to step 4 for how to find hidden icons), right click docker and select settings.  
   12. Select shared drives
   13. Check the box for C drive.  
   14. This will prompt you to login to the mechine as an admin.  
   15. The username will be prefilled with {DOMAIN}/{USERNAME} (for example 'adomain-1234/alexander')  
   16. Replace {USERNAME} with the username of the account you just created.  
   17. Enter your password into the password box then hit OK.  

6. Build  
   1. press the Windows icon/ Start Menu or the Search Windows button in the bottom left.  
   2. Type Powershell, click on Windows Powershell.
   3. Enter this command into the prompt:  
      `docker build -t cylc C:\cylc\webscrape\`  

### Run
 1. [Click here to download.](https://github.com/alpacaxander/omniglobe_update_suite/archive/master.zip)
 **NOTE: Windows doesn't need you to extract the zip file. As long as steps 4+ are fulfilled**
 2. Right click zip file.
 3. Select Extract All.
 4. Move the files and bin to C:\cylc\webscrape\ (create these folders if necessary)
 4. Right click webscrape_wrapper.ps1 and select "run with PowerShell" (if this is not an option select open).  
 5. Open any web browser and go to localhost:5800 to confirm it is working.  
 
### Automatic scheduling

 1. Click Windows icon.
 2. type 'task scheduler'.
 3. select task scheduler
 4. select "Action" at the top left.
 5. select "import task".
 6. Navigate to C:\cylc\webscrape\
 7. select Start Cylc.xml
 8. select OK.

## Debugging

Make sure the folders are currect from step one.

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
