sac_area = Area.where(name: "SAC").first_or_create
sales_area = Area.where(name: "Ventas").first_or_create
ops_area = Area.where(name: "Operaciones").first_or_create
na_area = Area.where(name: "Area no especifica").first_or_create

#= status caso base
Status.where(name: "Abierto", area: na_area, closed: false).first_or_create
Category.where(name: "Categoria no especifica", area: na_area).first_or_create

#= Status para SAC
Status.where(name: "Abierto", area: sac_area, closed: false).first_or_create
Status.where(name: "Llamar mas tarde", area: sac_area, closed: false).first_or_create
Status.where(name: "No Resuelto (Cerrado)", area: sac_area, closed: true).first_or_create
Status.where(name: "Resuelto (Cerrado) ", area: sac_area, closed: true).first_or_create

#= Status para Ventas
Status.where(name: "Por llamar (primer contacto)", area: sales_area, closed: false).first_or_create
Status.where(name: "En Progreso", area: sales_area, closed: false).first_or_create
Status.where(name: "Llamar mas tarde", area: sales_area, closed: false).first_or_create
Status.where(name: "Completado", area: sales_area, closed: true).first_or_create
Status.where(name: "Perdido", area: sales_area, closed: true).first_or_create

#= Categorias de SAC

sac_categories = [
  "Actualización de datos personales", "Administración del empleado", "ARL",
  "Beneficiarios", "Caja de Compensación", "Cambio de contrato / Tipo de contrato",
  'Cesantias', "Cliente Potencial / Comercial", "Daviplata", "Desvinculaciones",
  "EPS", "Equivocado", "Escalamiento OP", "Facturacion", "Fondo de Pensiones",
  "Informacion general seguridad Social", "Liquidacion", "Manejo App/ Web", "Novedades",
  "Pagos Manuaels", " Pago Nomina", "Pagos Seguridad Social", "Prima", "Productos",
  "Recaudos / Bancos / PayU", "salario", "Traslados EPS"]

sac_categories.each { |category| Category.where(name: category, area: sac_area).first_or_create }


#= Categorias de Ventas

sales_categories = [
  "Tranferencia a SAC","Transferencia Asesor ventas","Ciudad Fuera de cobertura",
  "Busca Trabajo","Cliente Prospecto",
  "Busca informacion como independiente",
  "Busca informacin para empresas",
  "Equivocado","Llamada se corta","Administrativo", "Buzon", "Seguimiento ventas"]

sales_categories.each { |category| Category.where(name: category, area: sales_area).first_or_create }


#= Agentes de SAC

sac_agents = [
  {name: "Andres Murcia", sid_worker: ""},
  {name: "Eduard Yamil Quiroga", sid_worker: ""},
  {name: "Erika Santana", sid_worker: ""},
  {name: "Harold Morales", sid_worker: ""},
  {name: "Jhonny Suarez", sid_worker: ""},
  {name: "Josua Chaves", sid_worker: ""},
  {name: "July Pineda", sid_worker: ""},
  {name: "Karen Monroy", sid_worker: ""},
  {name: "Laura Nicol Martinez", sid_worker: ""},
  {name: "Marcela Torres", sid_worker: ""},
  {name: "Martha Torres", sid_worker: ""},
  {name: "Monica Quintero", sid_worker: ""},
  {name: "Adriana Vanegas", sid_worker: ""},
  {name: "Alejandro Santos", sid_worker: ""},
  {name: "Angela Manrique", sid_worker: ""},
  {name: "Angie Paola Pineda", sid_worker: ""},
  {name: "Back Office Ventas", sid_worker: ""},
  {name: "Carolina Navarro", sid_worker: ""},
  {name: "Cristian Alexander", sid_worker: ""},
  {name: "Derlly Vasquez", sid_worker: ""},
  {name: "Diego Fernando R.", sid_worker: ""},
  {name: "Dora Pinilla", sid_worker: ""},
  {name: "Edixon Hernandez", sid_worker: ""},
  {name: "Paula Caita", sid_worker: ""},
  {name: "Paula Cifuentes", sid_worker: ""},
  {name: "Saily Marcela Bernal", sid_worker: ""},
  {name: "Sonia Castro", sid_worker: ""},
  {name: "Tatiana Collante", sid_worker: ""},
  {name: "Viviana Ramirez", sid_worker: ""},
  {name: "Wendy Ladino ", sid_worker: ""},
  {name: "Andrea Beltran", sid_worker: ""},
  {name: "SAC no especifica", sid_worker: ""}
]

sac_agents.each { |agent| Agent.where(name: agent[:name], area: sac_area, sid_worker: agent[:sid_worker]).first_or_create }

#= Agentes de Ventas
sales_agents = [
  {name: "Ventas no especifica", sid_worker: ""}
]
sales_agents.each { |agent| Agent.where(name: agent[:name], area: sales_area, sid_worker: agent[:sid_worker]).first_or_create }


#= VIVIANA - IMPORTACION MASIVA

# IMPORTACION MASIVA
def check_agent(name: '*')
  agents = Agent.search(name)
  agents.any? ? agents.results.last : Agent.where(name: "Ventas no especifica").last
end

require 'open-uri'
require 'csv'

csv_text = URI.open("https://documentos-symplifica.s3.amazonaws.com/archivos-planta/campa%C3%B1as/marcacion.csv").read

status = Status.where(name: "Por llamar (primer contacto)", area: sales_area, closed: false).first_or_create
sales_area = Area.where(name: "Ventas").first_or_create
lead_category =  sales_area.categories.where(name: "Cliente Prospecto").last

csv = CSV.parse(csv_text, headers: false, col_sep: ';')
csv.each do |obj|
  Ticket.create!(phone_number: obj[1], name: obj[2], email: "", details: obj.compact.join(" - "), status: status, category: lead_category, agent: check_agent(name: obj[0]))
end

# TODO Edi
# 1. cuadrar el seed (mover los agentes de SAC a VENTAS los que correspondan)
# 2. añadir los sid_worker
# 3. En el front que llame desde CRM

# TODO Andres
# Filtro por Area en el index
# Filtro por Agente en el index
# Filtro por Estado en el index