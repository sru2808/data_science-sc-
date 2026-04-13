from pymongo import MongoClient

# Connect MongoDB
client = MongoClient("mongodb://localhost:27017/")

# Database
db = client["mydb"]

# Collection
col = db["student"]

# Insert Data
col.insert_many([
    {"name": "Riya", "city": "Mumbai"},
    {"name": "Amit", "age": 22},
    {"name": "Neha", "skill": "Python"}
])

# Show Data
for x in col.find():
    print(x)
