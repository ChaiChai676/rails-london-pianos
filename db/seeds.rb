# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Wiping current data'

Piano.destroy_all

puts 'Creating Piano addresses...'

piano_addresses = [
  [ "St Pancras International" ],
  [ "6 Devonshire Square, Spitalfields, London EC2M 4YE" ],
  [ "Canary Wharf Station"],
  [ "Barts Hospital Courtyard" ],
  [ "Broadgate Circle" ],
  [ "Broadgate, Finsbury Avenue" ],
  [ "Cleary Garden" ],
  [ "Fenchurch Street Station" ],
  [ "Finsbury Circus Gardens" ],
  [ "Girdlers Gardens" ],
  [ "Leadenhall Market" ],
  [ "Liverpool Street Station" ],
  [ "Millennium Bridge, Peter's Hill" ],
  [ "Museum of London" ],
  [ "New Street Square" ],
  [ "Old Billingsgate, Lower Thames Street, London" ],
  [ "Paternoster Square" ],
  [ "Royal Exchange, London EC3V 3LR" ],
  [ "St Dunstan in the East" ],
  [ "St Mary-le-Bow Churchyard" ],
  [ "St Paul's Cathedral Churchyard" ],
  [ "The Gherkin" ],
  [ "The Monument" ],
  [ "Berkeley Square Gardens" ],
  [ "Carnaby Street" ],
  [ "Cavendish Square Gardens" ],
  [ "Chinatown, Newport Place" ],
  [ "Hanover Square, Mayfair, London" ],
  [ "Marble Arch" ],
  [ "Soho Square Garden" ],
  [ "Victoria Embankment Gardens" ],
  [ "Whitehall Gardens, Victoria Embankment, Westminster, London SW1A 2HE" ],
  [ "Gillett Square, The Vortex" ],
  [ "Parliament Hill, Hampstead Heath" ],
  [ "St Mary's Church Gardens, The Angel, London N1 2TX" ],
  [ "St Pancras Station" ],
  [ "Bankside Mix" ],
  [ "Borough Market" ],
  [ "EDF Energy London Eye" ],
  [ "Herne Hill" ],
  [ "More London Place" ],
  [ "Potters Fields Park" ],
  [ "Southwark Cathedral" ],
  [ "Tate Modern" ],
  [ "Jubilee Park, Canary Wharf " ],
  [ "LSO St Lukes" ],
  [ "Reuters Plaza, Canary Wharf" ],
  [ "St Katharine Docks Piazza" ],
  [ "Thomas More Square" ],
  [ "Tower Bridge, north side" ],
  [ "Wren Landing, Canary Wharf" ],
  [ "Holland Park, Ilchester Pl, Kensington, London W8 6LU" ],
  [ "270 Portobello Rd, London W10 5TY" ]
]

piano_addresses.each do |address|
  Piano.create( address: address )
end

puts 'Finished'


