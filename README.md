# SOM_API_Testing

### Description
In this lab work I have used a postcode api that can handle single or multiple postcodes using get and post request. Then I have created methods to fetch the data and tested it using RSPEC framework


### Languages used
* Ruby
* RSpec

### How to download
1. https://github.com/PCiobanita/SOM_API_Testing
2. Follow the link, select DEV brach and clone the project.
3. After project cloned locate the file and open it with code editor.
4. Install HTTParty, json, rspc gems.
5. in terminal locate the folder and run rspec.



### Challenges (you can include images and code block here)
1. Collision detection was a big chalange. I had to find a way to check colision between a line and player-object with coordinates always moving. 
2. Another challange was creating a delay between shape spawning. I have used requestanimationframe function which helps canvas refresh evrey frame. I managed to do it by keeping track of real time and using that value to create delay.

### Learning points
1. SOM: creating different methods to handle specific tasks. Methods for taking data form api and placeing it into jason format, Methods to do a post and get request. Methods to take the data from api so it can be used for testing purposes
2. Learned how to use API's in ruby and handling requests.