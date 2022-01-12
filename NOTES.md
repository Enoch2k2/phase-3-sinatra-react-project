### Overview
User will be able to create national parks in order to store hiking locations. User will be able to update and delete national parks as well as hikes and view them.

### MVP
- Home page
- Create National Park
- List National Park
- Create Hike
- List Hike
- Delete Hike

### Stretch Goals
- Delete National Park
- Update National Park
- Update Hike


### Models

NationalPark
---
has many hikes


Hike
---
belong_to NationalPark


### Routes
GET /national_parks - get all of the national parks
GET /national_parks/:national_park_id/hikes - get all of the national park hikes (Read)
POST /national_parks/:national_park_id/hikes - create a new hike (Create)
PATCH /hikes/:id - updates a hike (Update)
DELETE /hikes/:id - delete a hike (Delete)