# t-sample-ui
#### Note: This is not the final UI, there is scope of improvement here. I was not able to code all the screens as I was short on time and had to submit my proposal before deadline. 
Its part of coding period but, If you would like to see this UI integrated integrated in App or what to see multilingual support in action please feel free to contact me. I will code within 5-6 hours and present it to you.

* [Screens](#screens)
    * [Signup Screen](#signup-screen)
    * [Login Screen](#login-screen)
    * [News Feed Screen](#news-feed-screen)
    * [Search Organization Screen](#search-organization-screen)
    * [Events Screen](#events-screen)
    * [Create Events Screen](#create-events-screen)
    * [Profile Screen](#profile-screen)


## Screens

### Signup Screen
  * Screen conveys data pictorially by use of icons.
  * Color Scheme blends perfectly with the Talawa logo.
  * The Signup Button is big and bold.
  * When user press the Signup Button, he/she will be registered and will be taken to a page to upload profile picture.
  * After profile picture screen , user will be taken to Search/Join Organization screen.
  * The design of page is simple, clean and it matches 2021 UI standards
 <img src="https://user-images.githubusercontent.com/57677520/114818348-479f0500-9dd9-11eb-837f-8cba561a5192.png" width=40% >



### Login Screen
  * Similar to Signup screen.
  * I have taken care that out of all UI elements present on screen, user pays more attention on Login Button and Icons.
  * After sucessfully loging In, the user will be taken to News Feed screen.
  <img src="https://user-images.githubusercontent.com/57677520/114818468-7917d080-9dd9-11eb-8941-98c301f20563.png" width=40% >


### News Feed Screen.
  * The UI is clean and minimilastic
  * I have taken inspiration from Instagram, Twitter.
  * I have not added post/feed description.
      * When user taps on post he/she will be taken to Post-Info page where description and comments will be visible.
      * I have done this because so that the News Feed screen looks clean and is less disctractive.  
  * I have taken care for thr future-scope of this screen.
      * The icons, book-mark Post and Share Post are present.
      * Currently, These features are not present, but in future they may be.
      * I have taken care that the UI looks good even without these icons.
  * I have added pinned post in UI as mentioned in the [Talawa Docs](https://palisadoesfoundation.github.io/talawa-docs/docs/features/news%20feed/pinned-posts).
      * Here, the profile picture and name of person who pinned the post is visible.
      * The pinned post are placed in carousel Slider , so they will be continously moving (Inspiration Taken from Amazon India App). 
      * When user taps on one of the pinned post he/she should be be taken to the Post-Info and the pinned-post should be marked as "SEEN" so the user will not be confused.
  * To give a clean look while scrolling through various post, the pinned posts will collapse with app-bar and they will hide.
  * There is a bar that remains visible while scrolling, it shows the number of pinned posts and a "top" Button 
  * The top button (with an arrow icon) should take user to the top of the screen (Very useful when there are lots of posts).
   <p float="middle">
  <img src="https://user-images.githubusercontent.com/57677520/114818692-d01da580-9dd9-11eb-8f6e-421f108323ea.png" width=40% />
  <img src="https://user-images.githubusercontent.com/57677520/114818741-eaf01a00-9dd9-11eb-8211-b305604b1f1f.png" width=40% /> 
</p>
 
 
 
 
 ### Search Organization Screen
  * I made sure that the data is conveyed pictorialy.
  * I have moved "Join Organization" button and Organization description to Organization-Details screen. 
  * Here there is a filter button which when tapped should open up a Modal Bottom Sheet which has filter options.
  * The 
  * There is also a search bar for searching organizations.
  * If you see there is nothing above the filter button (and the search bar), I kept space in code so that this space can be used for showing App related announcemts or Ads.
      * This idea is inspired from Amazon India app.
       
 <p float="middle">
  <img src="https://user-images.githubusercontent.com/57677520/114819680-7ddd8400-9ddb-11eb-86ee-c8aa5bc6cb28.png" width=40% />
  <img src="https://user-images.githubusercontent.com/57677520/114860410-949acf80-9e09-11eb-8a2b-f680dfee8ac4.png" width=40% /> 
</p>

 


### Events Screen
  * A very important screen of Talawa.
  * The current Interface looks confusing.
  * The screen has lot of data, new user may get overwhelmed.
  * In order to fix this, data should be conveyed pictorially, through a combination of Colors, Text numbers.
  * The very important data on this page is the Date. I have highlighed it so user pays more attention on it. Most people can recognize numbers even if they are not literate. 
  * The space below the Talawa Logo will be used for "My Task" button. Tapping on this button should take users to "My Tasks" Screem user will be able to see tasks assiged to them,
  * Tapping on the event tile should take user to "Event Info Page". Wherein details about Event-members and their tasks should be present.
  * The area where the information of colors is shown hides while scrolling to give a clean look.
  * In [Talawa Docs](https://palisadoesfoundation.github.io/talawa-docs/docs/features/events/event-overview#overall-guidanc) its written that "Thumbs up/down" is a desired feature.
      * The dislike feels abrupt, the user may loose confidence to create another event if number of dislikes are more than number of likes. In worst case we may loose a user.
      * Making dislikes visible only to  coordinator solves the problem, but creates another problem of transparency.
      * I think we should have ratings as a form of feed-back, preferably through stars.
       * Lets say user A is coordinator of an event ,and users B, C and D are members of that event.
       * After completion of event , when users B, C and D open the event screen , a dialogue box should appear asking for reviews.  
      

 <p float="middle">
  <img src="https://user-images.githubusercontent.com/57677520/114818971-4cb08400-9dda-11eb-80d2-0cbc65e05dac.png" width=40% />
  <img src="https://user-images.githubusercontent.com/57677520/114819079-7b2e5f00-9dda-11eb-91d8-aa5820d6259a.png" width=40% /> 
</p>

 

### Create Events Screen
  * The person who creates an Event becomes coordinator of it.
  * In current UI, a single calendar is used to pick start and end date. This looks fancy but may confuse older adults. Also it will be very tough to add multilingual support here.
  * Using 2 different calendars to pick dates solves the problem. Using [table_calendar](https://pub.dev/packages/table_calendar) package solves problem of multilingual support.
  * I have use cupertino buttons here as they are bold and big.
  * I have not added all options here as I was short on time and had to complete the proposal before deadline.

 <p float="middle">
  <img src="https://user-images.githubusercontent.com/57677520/114819264-d3fdf780-9dda-11eb-8f1a-afbd0e8e5386.png" width=40% />
  <img src="https://user-images.githubusercontent.com/57677520/114819297-e11ae680-9dda-11eb-8eac-a68a52bf341a.png" width=40% /> 
</p>




### Profile Screen
  * I have added number of organizations joined and number of task completed.
  * The "Number of Tasks Competed" acts as a reward system and motivates user to complete more tasks which infacts helps the community.
  * This also increases user engagement.
  
 <img src="https://user-images.githubusercontent.com/57677520/114863047-e09b4380-9e0c-11eb-8961-27312ceb9144.png" width=25% />
The above section section of profile will be visible to public. This means that when someone taps on member info, he/she will be able to see this section of a particular user.
<p float="middle">
  <img src="https://user-images.githubusercontent.com/57677520/114862701-771b3500-9e0c-11eb-94af-5f848dea96eb.png" width=40% />
  <img src"https://user-images.githubusercontent.com/57677520/114862880-b0ec3b80-9e0c-11eb-9984-3de5af1338a4.png" width=40% /> 
</p>

