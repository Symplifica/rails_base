sac_area = Area.where(name: "SAC").first_or_create
sales_area = Area.where(name: "Ventas").first_or_create
ops_area = Area.where(name: "Operaciones").first_or_create
na_area = Area.where(name: "Area no especifica").first_or_create

# status caso base
Status.create(name: "Abierto", area: na_area, closed: false)

# Status para SAC
Status.create(name: "Abierto", area: sac_area, closed: false)
Status.create(name: "Llamar mas tarde", area: sac_area, closed: false)
Status.create(name: "No Resuelto (Cerrado)", area: sac_area, closed: true)
Status.create(name: "Resuelto (Cerrado) ", area: sac_area, closed: true)

# Status para Ventas
Status.create(name: "Por llamar (primer contacto)", area: sales_area, closed: false)
Status.create(name: "En Progreso", area: sales_area, closed: false)
Status.create(name: "Llamar mas tarde", area: sales_area, closed: false)
Status.create(name: "Completado", area: sales_area, closed: true)
Status.create(name: "Perdido", area: sales_area, closed: true)