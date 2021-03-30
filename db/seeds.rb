#Artist.new(
  #name: "Autotelic",
  #description: "Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing.",
  #year_founded: DateTime.now - 9.year,
#).save

#Album.new(
  #name: "Autotelic",
  #description: "Self-titled album",
  #classification: "LP",
  #artist: Artist.find_by(name: "Autotelic")
#).save

Track.new(
  name: "Misteryoso",
  published: true,
  published_at: DateTime.now,
  album: Album.find_by(name: "Autotelic")
).save
