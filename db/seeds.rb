sac_area = Area.where(name: "SAC").first_or_create
sales_area = Area.where(name: "Ventas").first_or_create
ops_area = Area.where(name: "Operaciones").first_or_create
na_area = Area.where(name: "Area no especifica").first_or_create

# status caso base
Status.where(name: "Abierto", area: na_area, closed: false).first_or_create

# Status para SAC
Status.where(name: "Abierto", area: sac_area, closed: false).first_or_create
Status.where(name: "Llamar mas tarde", area: sac_area, closed: false).first_or_create
Status.where(name: "No Resuelto (Cerrado)", area: sac_area, closed: true).first_or_create
Status.where(name: "Resuelto (Cerrado) ", area: sac_area, closed: true).first_or_create

# Status para Ventas
Status.where(name: "Por llamar (primer contacto)", area: sales_area, closed: false).first_or_create
Status.where(name: "En Progreso", area: sales_area, closed: false).first_or_create
Status.where(name: "Llamar mas tarde", area: sales_area, closed: false).first_or_create
Status.where(name: "Completado", area: sales_area, closed: true).first_or_create
Status.where(name: "Perdido", area: sales_area, closed: true).first_or_create