**JSON CONTRACT**

All queries are made using a single GraphQL endpoint:

```post to '/graphql'```

All queries must be in GraphQL format in the body of the request. Note the camelCase.

This application supports the following Graphql queries:

**All farmers/all child grains/all attributes (pair down as needed):**

Query as GraphQL:
```
{
    allFarmers
        {
        name
        id
        email
        phone
        address
        region
        bio
        photoUrl
        grains
            {
            name
            id
            moisture
            fallingNumber
            protein
            testWeight
            farmersNotes
            farmerId
            }
        }
}
```
Raw query:
```
{"query"=>"{
  allFarmers{
    name
    id
    email
    phone
    address
    region
    bio
    photoUrl
    grains
      {
      name
      id
      moisture
      fallingNumber
      protein
      testWeight
      farmersNotes
      farmerId
      }
}}",
"graphql"=>{"query"=>"{
  allFarmers
    {
    name
    id
    email
    phone
    address
    region
    bio
    photoUrl
    grains
      {
      name
      id
      moisture
      fallingNumber
      protein
      testWeight
      farmersNotes
      farmerId
      }
      }}"}}
```
Response:
```
{
    "data": {
        "allFarmers": [
            {
                "name": "Clark Kent",
                "id": "1",
                "email": "c.kent@dailyplanet.com",
                "phone": "555-555-5555",
                "address": "1234 Farm Rd, Smallville KA",
                "region": "South",
                "bio": "A super-son of farmers who practices earth saving techniques. Restorative Farming.",
                "photoUrl": "picture_link_here.jpeg",
                "grains": [
                    {
                        "name": "Amaranth",
                        "id": "1",
                        "moisture": 12.0,
                        "fallingNumber": 236.0,
                        "protein": 13.0,
                        "testWeight": 55.0,
                        "farmersNotes": "N/A",
                        "farmerId": 1
                    },
                    {
                        "name": "Rye",
                        "id": "2",
                        "moisture": 8.0,
                        "fallingNumber": 200.0,
                        "protein": 14.0,
                        "testWeight": 60.0,
                        "farmersNotes": "N/A",
                        "farmerId": 1
                    }
                ]
            },
            {
                "name": "Owen Lars",
                "id": "2",
                "email": "uncleowen@moisturefarms.com",
                "phone": "555-555-5555",
                "address": "5678 Dusty Rd, Tatooine, OK",
                "region": "South",
                "bio": "Starting a farming rebellion with my wife and nephew. Biosynthesis.",
                "photoUrl": "picture_link_here.jpeg",
                "grains": [
                    {
                        "name": "Wheat-Spelt",
                        "id": "3",
                        "moisture": 14.0,
                        "fallingNumber": 175.0,
                        "protein": 10.0,
                        "testWeight": 54.0,
                        "farmersNotes": "N/A",
                        "farmerId": 2
                    }
                ]
            },
            {
                "name": "Will Wheaton",
                "id": "3",
                "email": "notthatone@willwheatonfarms.com",
                "phone": "555-555-5555",
                "address": "3456 Med Bay Ave, Starfield, MI",
                "region": "Central",
                "bio": "Growing grain thats out of this world! Restorative Farming Practices.",
                "photoUrl": "picture_link_here.jpeg",
                "grains": [
                    {
                        "name": "Rye",
                        "id": "4",
                        "moisture": 10.0,
                        "fallingNumber": 250.0,
                        "protein": 16.0,
                        "testWeight": 51.0,
                        "farmersNotes": "N/A",
                        "farmerId": 3
                    },
                    {
                        "name": "Barley",
                        "id": "5",
                        "moisture": 9.0,
                        "fallingNumber": 275.0,
                        "protein": 9.0,
                        "testWeight": 53.0,
                        "farmersNotes": "N/A",
                        "farmerId": 3
                    }
                ]
            },
            {
                "name": "Brian Grain",
                "id": "4",
                "email": "braingrain@farmers.net",
                "phone": "555-555-5555",
                "address": "7812 Famers Rd Fargo, ND",
                "region": "North",
                "bio": "Farmings in-grained in my way of life. Practices orgainc techniques",
                "photoUrl": "picture_link_here.jpeg",
                "grains": [
                    {
                        "name": "Buckwheat",
                        "id": "6",
                        "moisture": 11.0,
                        "fallingNumber": 283.0,
                        "protein": 12.0,
                        "testWeight": 59.0,
                        "farmersNotes": "N/A",
                        "farmerId": 4
                    },
                    {
                        "name": "Wheat-Emmer",
                        "id": "7",
                        "moisture": 7.0,
                        "fallingNumber": 315.0,
                        "protein": 6.0,
                        "testWeight": 57.0,
                        "farmersNotes": "N/A",
                        "farmerId": 4
                    }
                ]
            },
            {
                "name": "Arthur Hoggett",
                "id": "5",
                "email": "a.hoggett@babefarms.com",
                "phone": "555-555-5555",
                "address": "84625 Main St, Spokane, WA",
                "region": "West",
                "bio": "We don't say that'll do, we do that'll. Organic.",
                "photoUrl": "picture_link_here.jpeg",
                "grains": [
                    {
                        "name": "Millet",
                        "id": "8",
                        "moisture": 13.0,
                        "fallingNumber": 400.0,
                        "protein": 5.0,
                        "testWeight": 45.0,
                        "farmersNotes": "N/A",
                        "farmerId": 5
                    }
                ]
            }
        ]
    }
}
```

**All grains/all attributes (pair down as needed):**

Query:
```
{
    allGrains{
            name
            id
            moisture
            fallingNumber
            protein
            testWeight
            farmersNotes
            farmerId
            }
        }
```
Response:
```
{
    "data": {
        "allGrains": [
            {
                "name": "Amaranth",
                "id": "1",
                "moisture": 12.0,
                "fallingNumber": 236.0,
                "protein": 13.0,
                "testWeight": 55.0,
                "farmersNotes": "N/A",
                "farmerId": 1
            },
            {
                "name": "Rye",
                "id": "2",
                "moisture": 8.0,
                "fallingNumber": 200.0,
                "protein": 14.0,
                "testWeight": 60.0,
                "farmersNotes": "N/A",
                "farmerId": 1
            },
            {
                "name": "Wheat-Spelt",
                "id": "3",
                "moisture": 14.0,
                "fallingNumber": 175.0,
                "protein": 10.0,
                "testWeight": 54.0,
                "farmersNotes": "N/A",
                "farmerId": 2
            },
            {
                "name": "Rye",
                "id": "4",
                "moisture": 10.0,
                "fallingNumber": 250.0,
                "protein": 16.0,
                "testWeight": 51.0,
                "farmersNotes": "N/A",
                "farmerId": 3
            },
            {
                "name": "Barley",
                "id": "5",
                "moisture": 9.0,
                "fallingNumber": 275.0,
                "protein": 9.0,
                "testWeight": 53.0,
                "farmersNotes": "N/A",
                "farmerId": 3
            },
            {
                "name": "Buckwheat",
                "id": "6",
                "moisture": 11.0,
                "fallingNumber": 283.0,
                "protein": 12.0,
                "testWeight": 59.0,
                "farmersNotes": "N/A",
                "farmerId": 4
            },
            {
                "name": "Wheat-Emmer",
                "id": "7",
                "moisture": 7.0,
                "fallingNumber": 315.0,
                "protein": 6.0,
                "testWeight": 57.0,
                "farmersNotes": "N/A",
                "farmerId": 4
            },
            {
                "name": "Millet",
                "id": "8",
                "moisture": 13.0,
                "fallingNumber": 400.0,
                "protein": 5.0,
                "testWeight": 45.0,
                "farmersNotes": "N/A",
                "farmerId": 5
            }
        ]
    }
}
```

**Grain Search: (returns farmers who have a grain that matches the search parameter)**

```
{
    grainSearch(name: "Wheat")
        {
        farmer
            {name}}
}
```
Response:
```
{
    "data": {
        "grainSearch": [
            {
                "farmer": {
                    "name": "Owen Lars"
                }
            },
            {
                "farmer": {
                    "name": "Brian Grain"
                }
            },
            {
                "farmer": {
                    "name": "Brian Grain"
                }
            }
        ]
    }
}
```
**Farmer Search (name): (returns farmers who have a name that matches the search parameter)**

```
{
    farmerSearch(name: "Hogget")
        {name}
}
```
Response:
```
{
    "data": {
        "farmerSearch": [
            {
                "name": "Arthur Hoggett"
            }
        ]
    }
}
```
**Farmer Search (bio): (returns farmers who have a bio entry that partially matches the search parameter)**
Query:
```
{
    bioSearch(bio: "Wife")
        {name}
}
```
Response:
```
{
    "data": {
        "bioSearch": [
            {
                "name": "Owen Lars"
            }
        ]
    }
}
```
**Farmer Search (region): (returns farmers who have a region that partially matches the search parameter)**
Query:
```
{
    regionSearch(region: "South")
        {name}
}
```
Response:
```
{
    "data": {
        "regionSearch": [
            {
                "name": "Clark Kent"
            },
            {
                "name": "Owen Lars"
            }
        ]
    }
}
```
**Create a Farmer**
```
mutation {
    createFarmer (input: {
            name: "Marco",
            email: "marco@gmail.com",
            phone: "303-555-1750",
            address: "1753 CO HWY 72",
            region: "West",
            bio: "I was born in Venice",
            photoUrl: "photo_path.jpg"  
          }) {
            name
            bio
            }
        }
```
**Edit a Farmer**
```
{
    farmerUpdate

}
```
**Create a Grain**
```
mutation {
    createGrain( input:{
            name: "Super Wheat",
            moisture: 12.5,
            testWeight: 42.0,
            fallingNumber: 175.3,
            protein: 8.3,
            farmersNotes: "Super crop of great wheat",
            farmerId: 1}
        ){
            name
            farmersNotes
            }
        }
```
**Edit a Grain**
```
{
    grainUpdate

}
```
**Delete a Grain**
```
mutation {
   deleteGrain( input:{ id: "16" })
   {
       response   
           }
       }
```
