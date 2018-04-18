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


	login to console using :
	````
  	pi
  	raspberry
	````
	Edit, change line #18 to your camera's 	     ip/port 
	   (You can try localhost/8081 for a locally connected camera.)

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
   
    Motioneye*
    
    
    
    
    
    *You can find more info and even donate to the motioneye project. This project was not endorsed by motioneye, but due to open source software I enjoy it.  I do think it is a great project and I've wanted it on raspbian preloaded for a while, so I followed the great instructions from  motioneye and used the awesome Distro-RPI/pi-gen build system to make it happen. If you enjoy this, consider a donation to motioneye. 
    
    See https://github.com/ccrisan/motioneye to donate.








