# README

HAMPER
===================

Project Developer: Marlon Dimaano

----------
Overview
-------------
1. Project Brief
2. Problem
3. Getting Started
4. Design Journey
5. Development
6. Future

Project Brief
-------------
This project was a Term-2 major assignment for Coder Factory Academy. The project brief was as follows: "Design, build, deploy and present a Ruby on Rails two-way market place application. Your application must impress one person/group from this list:
1. Barack Obama (politics)
2. Rupert Murdoch (journalism)
3. Bill & Melinda Gates (social causes/global development)
Each person/group was chosen to represent a particular industry as well as certain expectations and standards."

Problem
-------------
I chose to build my application for Bill/Melinda Gates, focusing on the issue of food insecurity.

#### Problem definition
There are many reasons why food insecurity exists within the Western-world (access, availability, nutrition, storage, education, etc.). For the purpose of this project, I decided to focus on "affordability" (i.e. the difficulty in accessing quality food due to associated high costs).
Broadly speaking, demographics who are food insecure can be placed into one of two categories - 1. insecure with extreme hunger, or 2. insecure without hunger. Generally speaking, people within category 2 tend to be lower income earners that often have difficulty accessing quality foods due to affordability issues. Again, for the purpose of this project, I decided to focus on category 2 which resulted in the following problem:
  > Affordability of basic quality goods is a barrier to food security for lower socio-economic, or financially unstable demographics; leading to poorer health and education outcomes.

#### Solution
While a food security problem exists within Australia, so does a food wastage one. My solution is to link the food insecure with the food over-consumers. The current real-world solution that does this involves donating food goods to charities who then disseminate to people. The problem with this model is that category 2 groupings don't tend to access this model due to stigma associated with accessing charity assistance. My solution aims to remove the charity from the equation and link people directly through my application, "Hamper".

#### Hamper
Hamper is a two sided-market place that allows people to create and purchase cheap hampers (or grocery bags) of leftover non-perishables and vegetables. The idea is that Hamper is an alternative model to accessing affordable groceries built for mainstream use. Hamper aims to do two things: 1. address food wastage in the community, and 2. give lower income earners access to an affordable platform with no associated stigma.

Getting Started
-------------

#### Installation

Clone the project:
```ruby
git clone https://github.com/marlbones/CFA-Term-2-Major-Project-Hamper.git
```

change into the project directory, and install the dependencies:
```ruby
bundle install
```
Run the app:
```ruby
rails s
```

and access it through your browser:
```ruby
http://localhost:3000
```

#### Gem Installations

Within the rails project, folder  *Gemfile* the following gems were installed:

| Gem     | Installation | 	Usage   |
| :------- | ----: | :---: |
| materialize | gem 'materialize-sass' |  CSS framework   |
| devise | gem 'devise' |  authentication solution    |
| rolify    | gem 'rolify'   |  authorization system  |
| pundit     | gem 'pundit'    |  authentication system  |
| geocoder    | gem 'geocoder'   |  allows location mapping   |
| googlemaps api    | gem 'gmaps4rails'   |  displays map   |
| ratyrate   | gem 'ratyrate'   |  enable ratings   |
| carrierwave    | gem 'carrierwave'   |  image uploading   |
| simple form   | gem 'simple_form'   |  CSS for forms   |
| will paginate    | gem 'will_paginate'   |  allows multiple pages   |
| rpsec    | gem 'rspec-rails'   |  allows testing   |
| factory girl    | gem 'factory_girl_rails'   |  coupled with testing   |

Design Journey
-------------
The project was designed to be a mobile-first product, with accessibility at the forefront of this decision. In regards to the UI, again accessibility was used to guide practice, thus decisions on simplicity, colour and size of font were made very early on. A lot of inspiration for design was pulled from the "Carousell" platform.

#### User stories
Used Trello to build user stories and manage project tasks/agile developement (see image below). Features were categorised as "sprinkles" or "donuts" (donuts required for MVP)
![user-stories](http://res.cloudinary.com/dabq7kxo6/image/upload/v1493100321/Screen_Shot_2017-04-25_at_4.03.47_pm_gzbyxa.png)

#### Wireframes/User Journery
Used Sketch to combine wireframes and user journey/flow. Final product changed from concept depicted below, but a lot of elements remained true to concept. A lot of additional pages and functions developed through the development phase.
![wireframes](http://res.cloudinary.com/dabq7kxo6/image/upload/v1493101003/Screen_Shot_2017-04-25_at_4.16.07_pm_x6msko.png)
![wireframes](http://res.cloudinary.com/dabq7kxo6/image/upload/v1493100864/Screen_Shot_2017-04-25_at_4.13.44_pm_xrcmyi.png)
![wireframes](http://res.cloudinary.com/dabq7kxo6/image/upload/v1493101014/Screen_Shot_2017-04-25_at_4.16.19_pm_lenfyp.png)

#### ERD
Sketch was also used to develop the ERD. Like the wire-frames the ERD changed throughout the development process, mainly through the implementation of additional models as application scope was expanded.
![erd](http://res.cloudinary.com/dabq7kxo6/image/upload/v1493101126/Screen_Shot_2017-04-25_at_4.18.25_pm_hw0tlh.png)


Development
-------------
Agile development methodologies were used to approach development as was TDD. Admittedly, TDD lacked as the project went on, however I am keen on continuing to practice implementation of this approach. Rspec and FactoryGirl were used for testing.

#### Github
Github and version control was essential to the development of my project. I continually created and merged branches as new features were developed/implemented.
![git](http://res.cloudinary.com/dabq7kxo6/image/upload/v1493102396/Screen_Shot_2017-04-25_at_4.39.08_pm_ntpapt.png)

#### Code Reviews
Code reviews were conducted by other students in class. One student focused on logic/code structure, while another primarily reviewed testing. In addition to in person-code reviews, Codeclimate was used to assess code quality and adjust as required.
![climate](http://res.cloudinary.com/dabq7kxo6/image/upload/v1493100341/Screen_Shot_2017-04-25_at_1.49.23_pm_lw1jgj.png)

Project Future
-------------

#### Features

There are a number of features that were not implemented in the MVP build of Hamper. A future version of the product might include:
> - Increased responsiveness for desktop;
> - Social media sharing
> - Email notifications;
> - Internal pop-ups and notifications;
> - Special "Charity" User that has additional powers;
> - Categories and sorting;
> - User "Pantry". A buying user can request item in seller "pantry" to swap into hamper ;

#### Outstanding issues

A number of issues present within the MVP remain outstanding. These include:
> - Search function only working for product content column and can only find items if spelling is exact;
> - Responsiveness unstable. need to adjust for greater mobile use and desktop use.
