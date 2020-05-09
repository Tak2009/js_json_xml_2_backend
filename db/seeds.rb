# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

d1 = Department.create(name: "London", hierarchy: "A")
d2 = Department.create(name: "Finance Dept", hierarchy: "B1")
d3 = Department.create(name: "HR Dept", hierarchy: "B2")
d4 = Department.create(name: "Sales Dept", hierarchy: "B3")
d5 = Department.create(name: "Accounting Div", hierarchy: "B1C1")
d6 = Department.create(name: "Treasury Div", hierarchy: "B1C2")
d7 = Department.create(name: "Tax Div", hierarchy: "B1C3")

e1 = Employee.create(name:"Tom", rank: 1, department_id: 1)
e2 = Employee.create(name:"Ann", rank: 1, department_id: 2)
e3 = Employee.create(name:"Dorothy", rank: 1, department_id: 3)
e4 = Employee.create(name:"David", rank: 1, department_id: 4)
e5 = Employee.create(name:"Dan", rank: 1, department_id: 5)
e6 = Employee.create(name:"Gorge", rank: 1, department_id: 6)
e7 = Employee.create(name:"Thomas", rank: 1, department_id: 7)
e8 = Employee.create(name:"Chan", rank: 2, department_id: 7)
e9 = Employee.create(name:"Takeshi", rank: 2, department_id: 7)
e10 = Employee.create(name:"Oliver", rank: 2, department_id: 7)
e11 = Employee.create(name:"Oliver", rank: 2, department_id: 7)