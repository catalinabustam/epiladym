# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'CREATING ROLES'
Role.create([
              { :name => 'admin' },
              { :name => 'user' },
              { :name => 'VIP' }
], :without_protection => true)

puts 'CREATING RADIOLOGISTS'
user1=User.create(name: "Jorge A. Delgado", email: "jorge.delgado@iatm.com.co", password: "jdelgado", password_confirmation: "jdelgado")
user1.add_role :admin

user2=User.create(name: "Juan F. Llano",email: "juan.llano@iatm.com.co", password: "jllano", password_confirmation: "jllano")
user2.add_role :admin

puts 'CREATING PATIENTS'
p1=Patient.create(age: 18, code:"S01", name: "Robinson Guerra Osorio", patid:"CC1036399544",sex: "M", infoclinica15: "Masculino de 20 anos con foco parietal-temporal izquierdo" ,infoclinica3: "Hombre de 18 anos con foco parietotemporal izquierdo",cod3t:"32")
p2=Patient.create(age: 47, code:"S02", name: "Diego Alonso Montoya Restrepo",patid:"CC70564172", sex:"M", infoclinica15: "Hombre de 47 anos con sospecha de foco temporal derecho", infoclinica3:"Masculino de 48 anos con posible foco temporal derecho",cod3t:"40")
p3=Patient.create(age: 44, code:"S03", name: "Luz Ofelia Ruiz Zapata",patid:"CC43673712", sex: "F", infoclinica15: "Mujer de 44 anos con posible foco frontal izquierdo",infoclinica3:"Paciente femenina de 40 anos con foco electrico frontal izquierdo",cod3t:"34")
p4=Patient.create(age: 34, code:"S04", name: "Deisy Liliana Mosquera Giraldo",patid:"CC35604585", sex:"F", infoclinica15: "Paciente femenina de 30 anos con epilepsia frontal derecha", infoclinica3:"Mujer de 34 anos con crisis frontales del lado derecho",cod3t:"35")
p5=Patient.create(age: 24, code:"S05", name: "Yuliana Andrea Padierna Jaramillo",patid:"CC1128471081", sex:"F", infoclinica15: "Mujer de 24 anos con crisis de origen frontotemporal derecho",infoclinica3:"Femenina de 23 anos con epilepsia frontotemporal derecha",cod3t:"55")
p6=Patient.create(age: 34, code:"S06", name: "Alejandra Maria Ramirez Blandon",patid:"CC43220818", sex:"F", infoclinica15: "Mujer de 35 anos con sospecha de foco temporoccipital izquierdo", infoclinica3:"Mujer de 33 anos con posible foco temporal y occipital izquierdo",cod3t:"45")
p7=Patient.create(age: 40, code:"S07", name: "Jair Arledy Garcia Patino", patid: "CC98569203", sex:"M", infoclinica15: "Masculino de 35 anos con sospecha de foco temporal derecho", infoclinica3:"Hombre de 37 anos con epilepsia de posible foco temporal derecho",cod3t:"60")
p8=Patient.create(age: 45, code:"S08", name: "Juan Carlos Munoz Cano",patid:"CC98497090", sex:"M", infoclinica15: "Masculino de 44 anos con epilepsia centro parietal derecha", infoclinica3:"Masculino de 46 anos con sospecha de foco centro parietal derecho",cod3t:"51")
p9=Patient.create(age: 13, code:"S09", name: "Jose David Jaramillo Velasquez",patid:"TI1000410293", sex:"M", infoclinica15: "Nino de 13 anos con sospecha de foco frontal derecho", infoclinica3:"Masculino de 15 anos con posible epilepsia frontal derecha",cod3t:"33")
p10=Patient.create(age: 16, code:"S10", name: "Esteban Caro Caro",patid:"TI96070216202", sex:"M", infoclinica15: "Masculino de 16 anos con foco frontal vs temporal izquierdo", infoclinica3:"Hombre de 17 anos con posible foco frontal o temporal izquierdo",cod3t:"38")
p11=Patient.create(age: 50, code:"S11", name: "Luz Marina Fernandez Jaramillo",patid:"CC39166905", sex:"F", infoclinica15: "Mujer de 50 anos con posible foco temporal neo cortical izquierdo", infoclinica3:"Mujer de 49 anos con epilepsia temporal neo cortical izquierda",cod3t:"58")
p12=Patient.create(age: 42, code:"S12", name: "Edison Alonso Agudelo Echavarria",patid:"CC98530070", sex:"M", infoclinica15: "Masculino de 40 anos con posible foco temporal vs frontal izquierdo", infoclinica3:"Hombre 42 anos con sospecha de foco temporal o frontal izquierdo",cod3t:"42")
p13=Patient.create(age: 50, code:"S13", name: "Hector Ivan Botero Jaramillo",patid:"CC70630676", sex:"M", infoclinica15: "Hombre de 50 anos con epilepsia multifocal no concordante", infoclinica3:"Masculino de 49 anos con multiples focos frontal y temporales",cod3t:"54")
p14=Patient.create(age: 19,code:"S14", name: "Daniela Sanudo Gomez",patid:"TI93061203735", sex:"F", infoclinica15:"Mujer de 19 anos con posible epilepsia insular derecha", infoclinica3:"Mujer de 22 anos con epilepsia de posible foco en insula derecha",cod3t:"41")
p15=Patient.create(age: 34, code:"S15", name: "Edison Arbey Florez Londono",patid:"CC71333318" , sex:"M", infoclinica15: "Hombre de 34 anos con epilepsia de posible foco temporal izquierdo",infoclinica3:"Masculino de 30 anos con epilepsia, foco temporal izquierdo",cod3t:"47")
p16=Patient.create(age:44 ,code:"S16" ,name:"Monica Maria Llano Arango"        ,patid:"CC4372127" ,sex:"F" ,infoclinica15: "Mujer 44 anos, epilepsia refractaria secundariamente generalizada.",infoclinica3: "Mujer 44 anos, epilepsia refractaria secundariamente generalizada.",cod3t:"46")
p17=Patient.create(age:33 ,code:"S17" ,name:"Diana Marcela Metaute Aguirre"     ,patid:"CC32142881" ,sex:"F" ,infoclinica15:"Femenina de 33 anos, epilepsia focal, temporal, neocortical derecha" ,infoclinica3: "Femenina de 33 anos, epilepsia focal, temporal, neocortical derecha",cod3t:"56")
p18=Patient.create(age:26 ,code:"S18" ,name:"Leidy Johana Lopez Zuluaga"        ,patid:"CC39457771" ,sex:"F" ,infoclinica15: "Mujer de 25 anos con sospecha de foco temporal" ,infoclinica3:"Paciente femenina de 24 anos con sospecha de foco temporal",cod3t:"59")
p19=Patient.create(age:31 ,code:"S19" ,name:"Juan Felipe Jaramillo Uribe"       ,patid:"CC812524" ,sex:"M" ,infoclinica15: "Hombre de 28 anos, epilepsia posible foco temporal izquierdo",infoclinica3:"Hombre de 29 anos con epilepsia temporal izquierda",cod3t:"48")
p20=Patient.create(age:17 ,code:"S20" ,name:"Ana Maria Salazar Alvarez"         ,patid:"TI95062613514" ,sex:"F" ,infoclinica15:"Mujer de 17 anos, epilepsia frontal dorso lateral" ,infoclinica3:"Femenina de 19 anos con epilepsia de foco frontal dorsolateral",cod3t:"53")
p21=Patient.create(age:38 ,code:"S21" ,name:"Maria Eugenia Tejada Zabaleta"     ,patid:"CC305758592" ,sex:"F" ,infoclinica15: "35 anos, mujer con epilepsia lobulo temporal derecho",infoclinica3:"Mujer de 33 anos con epilepsia temporal derecha",cod3t:"52")
p22=Patient.create(age:34 ,code:"S22" ,name:"Esteban Gaviria Gallego"           ,patid:"CC1128466630" ,sex:"M" ,infoclinica15:"24 anos, hombre con epilepsia frontotemporal izquierda" ,infoclinica3:"Masculino de 28 anos con foco frontotemporal izquierdo",cod3t:"37")
p23=Patient.create(age:35 ,code:"S23" ,name:"Anselmo Vianney Tamayo Corrales"   ,patid:"CC70855022" ,sex: "M",infoclinica15:"Hombre de 35 anos epilepsia frontobasal- frontotemporal izquierda" ,infoclinica3:"33 anos, hombre con posible foco frontotemporal izquierdo",cod3t:"31")
p24=Patient.create(age:24 ,code:"S24" ,name:"Maria Natali Bedoya Avendano"      ,patid:"CC1035418670" ,sex:"F" ,infoclinica15:"Mujer de 24 anos, epilepsia frontobasal izquierda" ,infoclinica3:"Femenina de 27 anos con epilepsia frontobasal izquierda",cod3t:"49")
p25=Patient.create(age:28 ,code:"S25" ,name:"Alejandro Cadavid Monsalve"        ,patid:"CC8359136" ,sex:"M" ,infoclinica15:"Hombre de 27 anos, epilepsia de lobulo frontal" ,infoclinica3:"Masculino de 29 anos con posible foco frontal",cod3t:"50")
p26=Patient.create(age:11 ,code:"S26" ,name:"Julian David Hernandez Gil"        ,patid:"TI1192757957" ,sex:"M" ,infoclinica15: "Paciente masculino con epilepsia de origen frontal",infoclinica3:"Paciente masculino con epilepsia frontal por clinica",cod3t:"43")
p27=Patient.create(age:24 ,code:"S27" ,name:"Evelin Juliet Boder Zaluaga"       ,patid:"CC1017166811" ,sex:"F" ,infoclinica15:"23 anos. Epilepsia focal probablemente temporal neocortical" ,infoclinica3:"Mujer de 22 anos con posible foco temporal neocortical",cod3t:"44")
p28=Patient.create(age:13 ,code:"S28" ,name:"Sebastian Perez Zapata"            ,patid:"TI99012404120" ,sex:"M" ,infoclinica15:"13 anos, epilepsia lobulo temporal izquierdo" ,infoclinica3:"14 anos masculino con posible foco temporal izquierdo",cod3t:"36")
p29=Patient.create(age:32 ,code:"S29" ,name:"Diego Alejandro Posada Grisales"   ,patid:"CC3378558" ,sex:"M" ,infoclinica15:"31 anos, hombre epilepsia origen frontopolar-lateral derecha" ,infoclinica3:"Masculino de 30 anos con posible foco frontopolar derecho",cod3t:"39")
p29=Patient.create(age:55 ,code:"S30" ,name:"Maria clemencia  Vallejo Restrepo" ,patid:"CC32295354" ,sex:"F" ,infoclinica15: "28 anos, mujer con epilepsia frontopolar bilateral",infoclinica3:"Mujer de 32 anos con posible foco bifrontal",cod3t:"57")

#revisar edades reales