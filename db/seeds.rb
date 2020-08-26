Customer.destroy_all
Barber.destroy_all
City.destroy_all
Service.destroy_all
Appointment.destroy_all

#List of Cities
City.create(name: 'Atlanta')
City.create(name: 'Brookhaven')
City.create(name: 'Douglasville')
City.create(name: 'Duluth')
City.create(name: 'East Point')
City.create(name: 'Forest Park')
City.create(name: 'Lawrenceville')
City.create(name: 'Lilburn')
City.create(name: 'Lithonia')
City.create(name: 'Marietta')
City.create(name: 'McDonough')
City.create(name: 'Powder Springs')
City.create(name: 'Redan')
City.create(name: 'Roswell')
City.create(name: 'Sandy Springs')
City.create(name: 'Smyrna')
City.create(name: 'Snellville')
City.create(name: 'South Fulton')
City.create(name: 'Stonecrest')
City.create(name: 'Tucker')

#List of Services
Service.create(name: 'Kids Cuts', price: 12.00)
Service.create(name: 'Standard Cuts', price: 20.00)
Service.create(name: 'Straight Razor Shave', price: 15.00) 
Service.create(name: 'Edge Up/Shape Up', price: 15.00) 
Service.create(name: 'Eyebrow Arch', price: 8.00) 
Service.create(name: 'Hair Coloring', price: 35.00) 
Service.create(name: 'Relaxer/Perm Styles', price: 85.00) 
Service.create(name: 'Designer Hair Styles', price: 65.00)
Service.create(name: 'Hair Tattoos', price: 50.00)  

Customer.create(name: 'Joe', email: 'joe@joe.com', street_address: '123 test dr', city_id: 1)
Barber.create(name: 'Boe', email: 'Boe@boe.com', city_id: 1)

Appointment.create(customer_id: 1, barber_id: 1, service_id: 1)