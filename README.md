This release with motioneye was forked from omxplayercamviewsvc-raspbian-lite, which was forked from RPI-Distro/pi-gen.




Usage:

Install/Setup/Configure with:

1) Download latest img from sf here:

	https://sourceforge.net/projects/omxplayercamviewsvcmeye-rpi/files/latest/download

    and write to sd card.
    

2) After install and reboot, 
	Motioneye is running or port 80. 

	You can login to the motioneye webinterface with IPADDRESS/ 
	````"admin"````
	  and no passord.


3) Optionally, if you have a hdmi connected and want to use omxplayercamview.service.


	login using :
	````
  	pi
  	raspberry
	````
	Edit, change line #18 to your camera's 	     ip/port 

   	````$sudo edit /etc/systemd/system/omxplayercamview.service````

      *if you dont know/like vi, replace "edit" with "nano",TIPS: in nano, use "ctrl-o" to save file and 
        use "ctrl-x" when done to exit file.

    
    *adjust 15 second timeout
    *adjust 3 second up as needed @ Restart=on-failure value near end of file


4) Enable service

   ````$sudo systemctl enable omxplayercamview.service````


5) Start service

   ````$sudo systemctl start omxplayercamview.service````


6) Reboot

   ````$sudo reboot````


*Features:

    omxplayser uses Accelerated direct HW rendering for hdmi viewing

    Raspbian based so should work on all the pi's.
   
    Motioneye














