## Tienda de Accesorios para PC - Base de Datos
Este repositorio contiene el diseño e implementación de la base de datos relacional para una Tienda de Accesorios de PC. Incluye el diagrama entidad-relación y los scripts necesarios para su creación.

## 📊 Diagrama Entidad-Relación
El modelo consta de 6 tablas principales interconectadas para gestionar el flujo de ventas, inventario y proveedores:

clientes: Registra la información de los compradores.

ventas: Almacena el encabezado de las transacciones (fecha, cliente, método de pago y total).

detalle_ventas: Detalla los productos comprados en cada venta, cantidades y subtotales.

productos: Contiene el inventario de accesorios, precios, stock y su relación con categorías y proveedores.

categorias: Clasificación de los productos.

proveedores: Información de contacto de los encargados de abastecer los productos.
