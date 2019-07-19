# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
BeerSpot.destroy_all


User.create(
        email: Faker::Internet.email,
        password: '123456'
    )
User.create(
        email:'onebs@bs.cl',
        password: '123456'
    )
User.create(
        email:'twobs@bs.cl',
        password: '123456'
    )
User.create(
        email:'threebs@bs.cl',
        password: '123456'
    )
User.create(
        email:'fourbs@bs.cl',
        password: '123456'
    )
User.create(
        email:'fivebs@bs.cl',
        password: '123456'
    )




BeerSpot.create!(
        name:'InserCoin',
        qualification: 4,
        address:'Jose Domingo Cañas 2306, ñuñoa, santiago',
        user: User.order('RANDOM()').first
        )

BeerSpot.create!(
        name: 'Ruca Bar',
        qualification: 4,
        address: 'Av. Condell 868, Providencia, Santiago',
        user: User.order('RANDOM()').first
        )  

BeerSpot.create!(
        name:'Pepperland Bar',
        qualification: 4,
        address:'Sta Isabel 261, Providencia, Santiago',
        user: User.order('RANDOM()').first
        ) 

BeerSpot.create!(
        name:'DesafioLatam',
        qualification: 4,
        address:'Rebeca Matte 18, santiago, chile',
        user: User.order('RANDOM()').first
        )  

BeerSpot.create!(
        name:'Bar Autóctono',
        qualification: 4,
        address:'Aguas Claras 1643, La Reina, Santiago',
        user: User.order('RANDOM()').first
        )  

BeerSpot.create!(
        name: 'El Túnel',
        qualification: 4,
        address: 'Santo Domingo 439, Santiago, santiago',
        user: User.order('RANDOM()').first
        )  

BeerSpot.create!(
        name:'California Cantina',
        qualification: 4,
        address:'Las Urbinas 44, Providencia, santiago',
        user: User.order('RANDOM()').first
        )  

BeerSpot.create!(
        name: 'Liguria',
        qualification: 4,
        address:'Av. Providencia 1353, Providencia, Santiago',
        user: User.order('RANDOM()').first
        )  

BeerSpot.create!(
        name: 'Barbudo',
        qualification: 5,
        address: 'Jorge Washington 176, Ñuñoa, Santiago',
        user: User.order('RANDOM()').first
        )  

BeerSpot.create!(
        name:'Teclados',
        qualification: 4,
        address:'Irarrázaval 3469, Ñuñoa, Santiago',
        user: User.order('RANDOM()').first
        )  

AdminUser.create!(
    email: 'admin@bs.cl', 
    password: 'passwordbs', 
    password_confirmation: 'passwordbs'
    
    )