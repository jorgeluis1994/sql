
// Buscar todos los documentos en la colección "messages"
// Ordenar por "creation_date" en orden descendente
db.messages.find({}).sort({creation_date: -1})

// Filtrar por "data.params.idTransaction" con valor 1890 y "status" true
// Ordenar por "creation_date" en orden descendente
db.messages.find({"data.params.idTransaction": 1890, "status": true}).sort({creation_date: -1}).toArray()

// Filtrar por "data.params.idTransaction" con valor "1890" (como cadena) y "status" true
// Ordenar por "creation_date" en orden descendente
db.messages.find({"data.params.idTransaction": "1890", "status": true}).sort({creation_date: -1}).toArray()


db.messages.countDocuments({})

db.messages.find()
