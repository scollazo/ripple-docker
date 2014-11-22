# Docker container for the ripple audience response system

 ___Ripple is a free Audience/Personal Response System to add enhanced interactivity to classroom environment.___ ( [source]( https://interactivemedia.uoregon.edu/tools/ripple ) )
 
 * Source: https://github.com/uoregon-libraries/ripple (sadly, it's no longer maintained)
 
 * Run with
   	
		mkdir -p ~/ripple-mongodb
		docker run -v $(readlink -f ~/ripple-mongodb):/var/lib/mongodb -p 8888:8888 -d -t scollazo/ripple-docker
 
  The first time the container is used, it will populate the db

  After a few seconds, ripple will be avaliable at [http://YOUR_IP:8888](http://YOUR_IP:8888)
 
 * Default credentials:
 
		 user: Administrator
       	 password: ripple
  * Youtube demo
  
  <a href="http://www.youtube.com/watch?feature=player_embedded&v=VWnL_btQ2cc
" target="_blank"><img src="http://img.youtube.com/vi/VWnL_btQ2cc/0.jpg" 
alt="Ripple demo" width="240" height="180" border="10" /></a>
  
         
