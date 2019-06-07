# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Wiping current data'

Piano.destroy_all

puts 'Creating piano addresses...'

piano_addresses = [
  "St Pancras International",
  "6 Devonshire Square, Spitalfields, London EC2M 4YE",
  "Canary Wharf Station",
  "St Bartholomew's Hospital",
  "Broadgate Circle",
  "Broadgate, Finsbury Avenue",
  "Cleary Garden",
  "Fenchurch Street Station",
  "Finsbury Circus Gardens",
  "Girdlers Gardens",
  "Leadenhall Market",
  "Liverpool Street Station",
  "5BJ, 1 Knightrider St, London EC4V 5BT",
  "Museum of London",
  "New Street Square",
  "10 Lower Thames St, London EC3R 6EN",
  "Paternoster Square",
  "Royal Exchange, London EC3V 3LR",
  "St Dunstan in the East",
  "St Paul's Churchyard, London EC4M 8AD",
  "1 Bow Churchyard, London EC4M 9DQ",
  "The Gherkin",
  "The Monument",
  "Berkeley Square Gardens",
  "Carnaby Street",
  "Cavendish Square Gardens",
  "Chinatown, Newport Place",
  "Hanover Square, Mayfair, London",
  "Marble Arch",
  "Soho Square Garden",
  "Victoria Embankment Gardens",
  "Victoria Embankment, Westminster, London SW1A 2HE",
  "Gillett Square, The Vortex",
  "Parliament Hill, Hampstead Heath",
  "St Mary's Church Gardens, The Angel, London N1 2TX",
  "St Pancras Station",
  "Bankside Mix",
  "Borough Market",
  "The Queen's Walk, Lambeth, London SE1 8XX",
  "Herne Hill",
  "More London Place",
  "Potters Fields Park",
  "Southwark Cathedral",
  "Tate Modern",
  "Jubilee Park, Canary Wharf ",
  "LSO St Lukes",
  "St Katharine Docks",
  "Thomas More Square",
  "Tower Bridge, north side",
  "Wren Landing, Canary Wharf",
  "Holland Park, Ilchester Pl, Kensington",
  "270 Portobello Rd, London W10 5TY"
]

piano_addresses.each do |address|
  Piano.create( address: address )
end

Piano.update( Piano.find_by( address: "St Katharine Docks" ).id, latitude: 51.508240, longitude: -0.073246 )
Piano.update( Piano.find_by( address: "Holland Park, Ilchester Pl, Kensington" ).id, latitude: 51.503159, longitude: -0.203497 )
Piano.update( Piano.find_by( address: "Wren Landing, Canary Wharf" ).id, latitude: 51.505870, longitude: -0.022802 )
Piano.update( Piano.find_by( address: "Broadgate, Finsbury Avenue" ).id, latitude: 51.519081, longitude:  -0.085350 )

puts 'Finished'


