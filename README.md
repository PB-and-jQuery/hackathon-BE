[![Build Status](https://travis-ci.org/TIY-ATL-ROR-2016-Feb/markit.svg?branch=master)](https://travis-ci.org/TIY-ATL-ROR-2016-Feb/markit)

README

#### POST /signups

*This route is present for the signup of new users.*

POST https://young-gorge-64909.herokuapp.com/registrations

Params:
  * first_name: string
  * last_name: string
  * email: string
  * password: string
  * voter_id: integer
  * auth_token: string

Returns 201 Created on Success and 422 Unprocessable Entity in case of failure.

**Request:**

```
{
  "first_name": "Joe",
  "last_name": "Schmoe",
  "email": "joe@email.com",
  "password": "password"
  "voter_id": "123456"
  "auth_token": "48aeec41636614da6c52f85f706b889d"
}
```

**Response:**

```
{
  "user": {
    "first_name": "joe",
    "last_name": "schmoe",
    "email": "joe@email.com",
    "voter_id": "123456"
    "auth_token": "f5cbaa437d4eaed621afd81496501d39"
  }
}
```


A simple voting application! :)

#### POST /logins

*This route is signs in users.*

POST https://young-gorge-64909.herokuapp.com/logins

Params:
  * email: string
  * password: string

Returns 201 Created on Success and 422 Unprocessable Entity in case of failure.

**Request:**

```
{

  "email": "joe@email.com",
  "password": "password"

}
```

**Response:**

```
{
  "user": {

    "email": "joe@email.com",
    "voter_id": "123456"
    "auth_token": "f5cbaa437d4eaed621afd81496501d39"
  }
}
```
#### GET /candidates

*This route retrieves candidate data.*

GET https://young-gorge-64909.herokuapp.com/candidates


**Response:**

```
{
  "candidate": {

    "name": "Lindsey Owens",
    "party": "Independent"
  }
}
```
