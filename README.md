
# 2.1 Mysql-estructura - Nivel 1

## 📄 Descripción
Este proyecto contiene la implementación de dos ejercicios de bases de datos MySQL utilizando Docker, con scripts SQL para la creación de tablas, inserción de datos de prueba y ejecución de consultas SQL.

### Ejercicio 1: Óptica "Cul d'Ampolla"
Base de datos para la gestión de una óptica con proveedores, gafas, clientes, empleados y ventas.

### Ejercicio 2: Pizzería
Base de datos para una aplicación web de pedidos a domicilio, con gestión de tiendas, empleados, productos, clientes, pedidos y entregas.

## 💻 Tecnologías Utilizadas
- MySQL 8.0  
- Docker  
- Docker Compose  
- Cliente MySQL (CLI o GUI)  

## 📋 Requisitos
- Docker y Docker Compose instalados  
- Puerto **3307** disponible  
- Cliente MySQL (Workbench, terminal)  

## 🛠️ Instalación

### Ejercicio 1 - Óptica
```bash
cd exercici1
docker-compose up -d
```

Conectar a la base de datos:
```bash
mysql -h 127.0.0.1 -P 3307 -u root -proot optics_store
```

o bien:
```bash
docker exec -it mysql_optica mysql -u root -proot optics_store
```

---

### Ejercicio 2 - Pizzería
```bash
cd exercici2
docker-compose up -d
```

Conectar a la base de datos:
```bash
mysql -h 127.0.0.1 -P 3307 -u root -proot pizzeria
```

o bien:
```bash
docker exec -it mysql_pizzeria mysql -u root -proot pizzeria
```

---

## 🔌 Conexión a la Base de Datos (opciones)

### 1. Terminal

Óptica:
```bash
mysql -h 127.0.0.1 -P 3307 -u root -proot optics_store
```

Pizzería:
```bash
mysql -h 127.0.0.1 -P 3307 -u root -proot pizzeria
```

---

### 2. Docker

Óptica:
```bash
docker exec -it mysql_optica mysql -u root -proot optics_store
```

Pizzería:
```bash
docker exec -it mysql_pizzeria mysql -u root -proot pizzeria
```

---

### 3. MySQL Workbench

Conexión manual con los siguientes datos:

```text
Hostname:     127.0.0.1
Puerto:       3307
Usuario:      root
Contraseña:   root
Base de datos: optics_store (o pizzeria)
```

---

## ▶️ Ejecutar Consultas

Óptica:
```bash
mysql -h 127.0.0.1 -P 3307 -u root -proot optics_store < sql/optic_query.sql
```

Pizzería:
```bash
mysql -h 127.0.0.1 -P 3307 -u root -proot pizzeria < sql/pizzeria_queries.sql
```

---

## 🧪 Consultas Implementadas

### Óptica
1. Total de facturas de un cliente en un período  
2. Gafas vendidas por un empleado durante un año  
3. Proveedores que han suministrado gafas vendidas  

### Pizzería
1. Total de bebidas vendidas en una ciudad  
2. Total de pedidos gestionados por un repartidor  

---

## 📁 Estructura del Proyecto

```
2.1-BBDD_NIVELL1/
├── README.md
├── exercici1/
│   ├── docker-compose.yml
│   ├── sql/
│   │   ├── optic_store.sql
│   │   ├── optics_insert.sql
│   │   └── optic_query.sql
│   └── diagrams/
│       └── optic_store.png
├── exercici2/
│   ├── docker-compose.yml
│   ├── sql/
│   │   ├── pizzeria.sql
│   │   ├── pizzeria_insert.sql
│   │   └── pizzeria_queries.sql
│   └── diagrams/
│       └── pizzeria.png
```

---

## 📦 Detener contenedores

```bash
docker-compose down
```

Para eliminar los volúmenes y los datos:
```bash
docker-compose down -v
```

---

## 🤝 Contribuciones
Proyecto educativo realizado como parte del programa IT Academy - Barcelona Activa.

