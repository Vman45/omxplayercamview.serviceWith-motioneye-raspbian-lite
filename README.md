This release with motioneye was forked from omxplayercamviewsvc-raspbian-lite, which was forked from RPI-Distro/pi-gen.


Motioneye is running or port 80. You can login with "admin" and no passord.


Usage:

Install/Setup/Configure with:

1) Download latest img from sf here:

	https://sourceforge.net/projects/omxplayercamviewsvcmeye-rpi/files/latest/download

    and write to sd card.
    

2) After install and reboot, login using :
````
  pi
  raspberry
````


3) Required Edit, change line #18 to your camera's ip/port 

   ````$sudo edit /etc/systemd/system/omxplayercamview.service````

      *if you dont know/like vi, replace "edit" with "nano",TIPS: in nano, use "ctrl-o" to save file and 
        use "ctrl-x" when done to exit file.

    Optional:
     *adjust 15 second timeout
      *adjust 3 second up as needed @ Restart=on-failure value near end of file


4) Enable service

   ````$sudo systemctl enable omxplayercamview.service````


5) Start service

   ````$sudo systemctl start omxplayercamview.service````


6) Reboot

   ````$sudo reboot````


*Features:

    Accelerated direct HW rendering/viewing is low on cpu cycles compared to many options.

    Raspbian based so should work on all the pi's.
    
    Good for standalone or private lan use.

    Motioneye














