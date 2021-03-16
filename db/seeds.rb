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
  {name: "SAC no especifica", sid_worker: ""},
  {name: "Andres Murcia", sid_worker: "WK5d8aa9c36e4368495e50e646047b6ddb"},
  {name: "Harold Morales", sid_worker: "WKd3a02c5acf8b058be955fef5e48beb24"},
  {name: "Jhonny Suarez", sid_worker: "WK060f79c997d77cb656b3109242987077"},
  {name: "Marcela Torres", sid_worker: "WKb148f78fed54b0c106c8f64887126f03"},
  {name: "Paula Caita", sid_worker: "WKfd3e776cfd43937978a0c9c700980cb0"},
  {name: "Saily Marcela Bernal", sid_worker: "WKbef128cc2c6dfdff2d166a7447cebc4b"},
  {name: "Angie Paola Pineda", sid_worker: "WK2807fae9926c38d5e26fae5b841478e6"},
  {name: "Wendy Ladino ", sid_worker: "WK5f3f6c32e1a6231c73606731d8bf88e9"},
  {name: "Alejandro Santos", sid_worker: "WK424a0afdb6541657bdca51142c579440"},
  {name: "Dora Pinilla", sid_worker: "WKdff79ee6d386d0520f46d029636ff39a"},
  {name: "Monica Quintero", sid_worker: "WK6c1047af8eb899e07529cd2f37fbb23a"},
  {name: "Paula Cifuentes", sid_worker: "WK35859620ff4352b1dcbdc0d843172677"},
  {name: "Sonia Castro", sid_worker: "WKca17d7daf64555558dd55a063e25546b"},
  {name: "July Pineda", sid_worker: "WK3f3e5d1ccdba8c143769b184e30253a1"},
  {name: "Erika Santana", sid_worker: "WK0ae713189c9a668877e193a8be8c17aa"},
  {name: "Josua Chaves", sid_worker: "WK23c78c67e4bd06969ead2c260f4f8c65"},
  {name: "Karen Monroy", sid_worker: "WK6ced9c38e003db7e3a345dcb15f8670b"}
]

sac_agents.each { |agent| Agent.where(name: agent[:name], area: sac_area, sid_worker: agent[:sid_worker]).first_or_create }

#= Agentes de Ventas
sales_agents = [
  {name: "Ventas no especifica", sid_worker: ""},
  {name: "Edixon Hernandez", sid_worker: "WKe671f21adb0f649bb17d81cf51b3d9c6"},
  {name: "Laura Rodriguez", sid_worker: "WK301189cc90ed9f709f10fa7f3850933f"},
  {name: "Adriana Vanegas", sid_worker: "WKd302a4eff34ad710d37f1b057dea598c"},
  {name: "Carolina Navarro", sid_worker: "WKad9271ac8b797990f682b45a704e201d"},
  {name: "Andrea Beltran", sid_worker: "WK175f788054f17a0ea7318a97e53360a7"},
  {name: "Viviana Ramirez", sid_worker: "WK94a31c85599e8a5f71ce570f98886787"},
  {name: "Tatiana Collante", sid_worker: "WK6800bcddef60c5a938a63d8cf25bb426"},
  {name: "Eduard Yamil Quiroga", sid_worker: "WK9cfd8126c5306d17ef7b807cefc6c9b8"},
  {name: "Derlly Vasquez", sid_worker: "WKabdb29c0f70009718e65e125aa88f785"},
  {name: "Laura Nicol Martinez", sid_worker: "WKe0f17c8459579e9b510440ed0a289d30"},
  {name: "Angela Manrique", sid_worker: "WK2071b66c49ec0ec3b5cc24fd8d4dd803"},
  {name: "Diego Fernando R.", sid_worker: "WKed806bb5a67d383c4a168851e0d7eeec"},
  {name: "Martha Torres", sid_worker: "WK56ce00f97ce53d8d095f1cd58846a969"},
  {name: "Back Office Ventas", sid_worker: "WK450e47ec618a58ca4470b18188f931ad"},
  {name: "Viviana Ramirez", sid_worker: "WK94024ce8324c31dc2980d825c84477a8"},
]
sales_agents.each { |agent| Agent.where(name: agent[:name], area: sales_area, sid_worker: agent[:sid_worker]).first_or_create }

ops_agents = [
  {name: "Operaciones no especifica", sid_worker: ""},
  {name: "Cristian Alexander", sid_worker: "WKcd0d9f9f6399316a024d420c4e7701d4"}
]
ops_agents.each { |agent| Agent.where(name: agent[:name], area: ops_area, sid_worker: agent[:sid_worker]).first_or_create }


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
# 1. cuadrar el seed (mover los agentes de SAC a VENTAS los que correspondan) DONE
# 2. añadir los sid_worker DONE
# 3. En el front que llame desde CRM

# TODO Andres
# Filtro por Area en el index
# Filtro por Agente en el index
# Filtro por Estado en el index