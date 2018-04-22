This release with motioneye was forked from omxplayercamviewsvc-raspbian-lite, which was forked from RPI-Distro/pi-gen.




Usage:

Install/Setup/Configure with:

1) Download latest img from sf here:

	https://sourceforge.net/projects/omxplayercamviewsvcmeye-rpi/files/latest/download

    and write to sd card.
    

2) After install and reboot, 
	Motioneye is running or port 80. 

	You can login to the motioneye webinterface with your IP Address and 
	User:
	
	````"admin"````
	
	and no passord.
	  
	  
	  
	  a) Go ahead and change your shell password password for the pi account. Safer to do this since you should enable openssh server to manage remotely, if you plan on using omxplayercamview.service..
        ````
	passwd pi
        ````
	
	*enter your new pw twice
             
	b) Enable/start ssh server

  	````sudo systemctl enable ssh````    
  
  	````sudo systemctl start ssh````

	Note:If you dont enable ssh server and you setup your camera as kiosk, you may find it difficult to resetup another camera view unless you disconnect from network/ or reboot, this is due to the nature of a persistent service, with no exit hooks, yet.


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
    
    
 
 
 *This combination is acceptable for me when I want raspbian and motioneye, but its not near as great as motioneyeos when using as a straight single device use. I've also noted motioneye will pickup just about every csi camera I've thrown at it, where in raspbian I've not always gotten every csi camera to work. Also note the fast network camera streaming is  different somehow. I dont know all the differences, but keep in mind this is not a substitute for motioneyeos but a compromise with it and raspbian.
    
    
    *You can find more info and even donate to the motioneye project. This project was not endorsed by motioneye, but due to open source software I enjoy it.  I do think it is a great project and I've wanted it on raspbian preloaded for a while, so I followed the great instructions from  motioneye and used the awesome Distro-RPI/pi-gen build system to make it happen. If you enjoy this, consider a donation to motioneye. 
    
    See https://github.com/ccrisan/motioneye to donate.








