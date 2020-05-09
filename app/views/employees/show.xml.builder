xml.instruct!
xml.employee do
  xml.name(employee.name) 
  xml.rank(employee.rank, type: 'integer')
  xml.department(employee.department.name)
end