# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

museum_hash = {
    "museum_1" => {
        name: "Louvre",
        location: "Paris, FR",
        open_status: false
    },
    "museum_2" => {
        name: "Santa Maria delle Grazie",
        location: "Milan, Italy",
        open_status: false
    },
    "museum_3" => {
        name: "Museum of Modern Art",
        location: "New York City"
    },
    "museum_4" => {
        name: "Sistine Chapel",
        location: "Rome, Italy",
        open_status: false
    },
    "museum_5" => {
        name: "Österreichische Galerie Belvedere",
        location: "Vienna, Austria",
        open_status: false
    },
    "museum_6" => {
        name: "Royal Academy of Arts",
        location: "London, UK"
    },
    "museum_7" => {
        name: "Musée d'Orsay",
        location: "Paris, FR"
    },
    "museum_8" => {
        name: "Van Gogh Museum",
        location: "Amsterdam, Netherlands",
        open_status: false
    },
}

artist_hash = {
    "artist_1" => {
        name: "Pablo Picasso",
        username: "picassop",
        hometown: "Spain",
        password: SecureRandom.hex
    },
    "artist_2" => {
        name: "Vincent van Gogh",
        username: "vangoghv",
        hometown: " Zundert, Netherlands",
        password: SecureRandom.hex
    },
    "artist_3" => {
        name: "Leonardo da Vinci",
        username: "davincil",
        hometown: "Anchiano, Italy",
        password: SecureRandom.hex
    },
    "artist_4" => {
        name: "Michelangelo",
        username: "theMichelangelo",
        hometown: "Rome, Italy",
        password: SecureRandom.hex
    },
    "artist_5" => {
        name: "Henri Matisse",
        username: "matisseh",
        hometown: "Le Cateau-Cambrésis, France",
        password: SecureRandom.hex
    },
    "artist_6" => {
        name: "Jackson Pollock",
        username: "pollockj",
        hometown: "Cody, WY",
        password: SecureRandom.hex
    },
    "artist_7" => {
        name: "Claude Monet",
        username: "showmethemonet",
        hometown: "Rue Laffitte, Paris, France",
        password: SecureRandom.hex
    },
    "artist_8" => {
        name: "Salvador Dali",
        username: "dalis",
        hometown: "Figueres, Spain",
        password: SecureRandom.hex
    },
    "artist_9" => {
        name: "Gustav Klimt",
        username: "klimtd",
        hometown: "Baumgarten, Vienna, Austria",
        password: SecureRandom.hex
    },
    "artist_10" => {
        name: "Grant Wood",
        username: "woodg",
        hometown: "Anamosa, IA",
        password: SecureRandom.hex
    }
}

pieces_hash = {
    "piece_1" => {
        name: "Mona Lisa",
        year_created: "1503",
        image: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg/1200px-Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg",
        image_description: "Painting",
        artist_id: 3,
        museum_id: 1
    },
    "piece_2" => {
        name: "The Last Supper",
        year_created: "1495",
        image: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/%22The_Last_Supper%22_by_Leonardo_da_Vinci_-_Joy_of_Museums.jpg/1920px-%22The_Last_Supper%22_by_Leonardo_da_Vinci_-_Joy_of_Museums.jpg",
        image_description: "'The Last Supper' by Leonardo da Vinci - Joy of Museums.jpg",
        artist_id: 3,
        museum_id: 2
    },
    "piece_3" => {
        name: "Starry Night",
        year_created: "1889",
        image: "https://www.vangoghgallery.com/img/starry_night_full.jpg",
        image_description: "Painting",
        artist_id: 2,
        museum_id: 3
    },
    "piece_4" => {
        name: "The Persistence of Memory",
        year_created: "1931",
        image: "https://www.moma.org/media/W1siZiIsIjM4NjQ3MCJdLFsicCIsImNvbnZlcnQiLCItcXVhbGl0eSA5MCAtcmVzaXplIDIwMDB4MjAwMFx1MDAzZSJdXQ.jpg?sha=fdc1ab6baa7f5400",
        image_description: "Painting",
        artist_id: 8,
        museum_id: 3
    },
    "piece_5" => {
        name: "The Creation of Adam",
        year_created: "1512",
        image: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Michelangelo_-_Creation_of_Adam_%28cropped%29.jpg/1920px-Michelangelo_-_Creation_of_Adam_%28cropped%29.jpg",
        image_description: "Fresco",
        artist_id: 4,
        museum_id: 4
    },
    "piece_6" => {
        name: "The Kiss",
        year_created: "1908",
        image: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/The_Kiss_-_Gustav_Klimt_-_Google_Cultural_Institute.jpg/1024px-The_Kiss_-_Gustav_Klimt_-_Google_Cultural_Institute.jpg",
        image_description: "Painting",
        artist_id: 9,
        museum_id: 5
    },
    "piece_7" => {
        name: "American Gothic",
        year_created: "1930",
        image: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Grant_Wood_-_American_Gothic_-_Google_Art_Project.jpg/800px-Grant_Wood_-_American_Gothic_-_Google_Art_Project.jpg",
        image_description: "Painting",
        artist_id: 10,
        museum_id: 6
    },
    "piece_8" => {
        name: "Les Demoiselles d'Avignon",
        year_created: "1907",
        image: "https://upload.wikimedia.org/wikipedia/en/thumb/4/4c/Les_Demoiselles_d%27Avignon.jpg/1024px-Les_Demoiselles_d%27Avignon.jpg",
        image_description: "Painting",
        artist_id: 1,
        museum_id: 3
    },
    "piece_9" => {
        name: "Self Portrait",
        year_created: "1889",
        image: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Vincent_van_Gogh_-_Self-Portrait_-_Google_Art_Project.jpg/800px-Vincent_van_Gogh_-_Self-Portrait_-_Google_Art_Project.jpg",
        image_description: "On Oil Canvas",
        artist_id: 2,
        museum_id: 7
    },
    "piece_10" => {
        name: "Sunflowers",
        year_created: "1889",
        image: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Vincent_Willem_van_Gogh_127.jpg/800px-Vincent_Willem_van_Gogh_127.jpg",
        image_description: "Painting",
        artist_id: 2,
        museum_id: 8
    },
    "piece_11" => {
        name: "Stenographic Figure",
        year_created: "1942",
        image: "https://www.moma.org/media/W1siZiIsIjE1NjM1MCJdLFsicCIsImNvbnZlcnQiLCItcXVhbGl0eSA5MCAtcmVzaXplIDIwMDB4MTQ0MFx1MDAzZSJdXQ.jpg?sha=1d85efb771ce024c",
        image_description: "Painting",
        artist_id: 6,
        museum_id: 3
    },
    "piece_12" => {
        name: "Wheat Field with Crows",
        year_created: "1890",
        image: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Vincent_Van_Gogh_-_Wheatfield_with_Crows.jpg/1920px-Vincent_Van_Gogh_-_Wheatfield_with_Crows.jpg",
        image_description: "Painting",
        artist_id: 2,
        museum_id: 8
    },
    "piece_13" => {
        name: "Water Lilies",
        year_created: "1926",
        image: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Claude_Monet_-_The_Water_Lilies_-_The_Clouds_-_Google_Art_Project.jpg/1920px-Claude_Monet_-_The_Water_Lilies_-_The_Clouds_-_Google_Art_Project.jpg",
        image_description: "Painting",
        artist_id: 7,
        museum_id: 3
    },
    "piece_14" => {
        name: "Luxe, Calme et Volupté",
        year_created: "1904",
        image: "https://upload.wikimedia.org/wikipedia/en/thumb/0/07/Matisse-Luxe.jpg/1280px-Matisse-Luxe.jpg",
        image_description: "Painting",
        artist_id: 5,
        museum_id: 7
    }
}


museum_hash.each do |museum, info_hash|
    Museum.create(info_hash)
end

artist_hash.each do |artist, info_hash|
    Artist.create(info_hash)
end

pieces_hash.each do |piece, info_hash|
    Piece.create(info_hash)
end