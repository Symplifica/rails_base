
# status caso base
Status.create(name: "Abierto", kind: :general, closed: false)

# Status para SAC
Status.create(name: "Abierto", kind: :sac, closed: false)
Status.create(name: "Llamar mas tarde", kind: :sac, closed: false)
Status.create(name: "No Resuelto (Cerrado)", kind: :sac, closed: true)
Status.create(name: "Resuelto (Cerrado) ", kind: :sac, closed: true)

# Status para Ventas
Status.create(name: "Por llamar (primer contacto)", kind: :sales, closed: false)
Status.create(name: "En Progreso", kind: :sales, closed: false)
Status.create(name: "Llamar mas tarde", kind: :sales, closed: false)
Status.create(name: "Completado", kind: :sales, closed: true)
Status.create(name: "Perdido", kind: :sales, closed: true)