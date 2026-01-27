-- ============================================================
-- SCRIPT DE DATOS DE PRUEBA PARA SIMPLE-ECOMME
-- Basado en las imágenes disponibles en el repositorio
-- ============================================================

-- Eliminar datos existentes si los hay (opcional)
-- DELETE FROM tbl_order_item;
-- DELETE FROM tbl_order;
-- DELETE FROM tbl_product;
-- DELETE FROM tbl_category;
-- DELETE FROM tbl_user;

-- ============================================================
-- 1. INSERTAR CATEGORÍAS
-- ============================================================

INSERT INTO tbl_category (cat_id, cat_name, cat_description) VALUES
(1, 'Electrónica', 'Productos electrónicos, tablets, computadoras y accesorios tecnológicos'),
(2, 'Dispositivos Móviles', 'Smartphones, tablets y accesorios para dispositivos móviles'),
(3, 'Computadoras', 'Laptops, computadoras de escritorio y accesorios'),
(4, 'Software', 'Licencias de software y aplicaciones'),
(5, 'Equipos para el Hogar', 'Electrodomésticos y equipos para el hogar');

-- ============================================================
-- 2. INSERTAR USUARIOS
-- ============================================================

-- Usuario Administrador
-- Username: admin
-- Password: admin123
-- Hash MD5 de "admin123": 0192023a7bbd73250516f069df18b500
INSERT INTO tbl_user (user_id, user_name, password, user_email, created_at, updated_at, user_is_admin) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'admin@tienda.com', NOW(), NOW(), 1);

-- Usuario Normal 1
-- Username: testuser
-- Password: test123
-- Hash MD5 de "test123": cc03e747a6afbbcbf8be7668acfebee5
INSERT INTO tbl_user (user_id, user_name, password, user_email, created_at, updated_at, user_is_admin) VALUES
(2, 'testuser', 'cc03e747a6afbbcbf8be7668acfebee5', 'usuario@test.com', NOW(), NOW(), 0);

-- Usuario Normal 2
-- Username: cliente1
-- Password: cliente123
-- Hash MD5 de "cliente123": c5f3d0c5b870e25f8a3cc49f3e5e3e5b
INSERT INTO tbl_user (user_id, user_name, password, user_email, created_at, updated_at, user_is_admin) VALUES
(3, 'cliente1', 'c5f3d0c5b870e25f8a3cc49f3e5e3e5b', 'cliente1@email.com', NOW(), NOW(), 0);

-- ============================================================
-- 3. INSERTAR PRODUCTOS
-- Basados en las imágenes que tienes en el repositorio
-- ============================================================

-- Producto 1: Tablet OSX
INSERT INTO tbl_product (pd_id, cat_id, pd_name, pd_description, pd_price, pd_qty, pd_image) VALUES
(1, 1, 'Tablet OSX', 
'Tablet de última generación con sistema operativo OSX. Pantalla retina de 10 pulgadas, procesador de alto rendimiento, ideal para trabajo y entretenimiento. Incluye almacenamiento de 128GB y conectividad WiFi.', 
599.99, 15, 'gallery_osx.png');

-- Producto 2: Laptop para Presentaciones
INSERT INTO tbl_product (pd_id, cat_id, pd_name, pd_description, pd_price, pd_qty, pd_image) VALUES
(2, 3, 'Laptop Profesional', 
'Laptop diseñada para presentaciones profesionales. Pantalla Full HD de 15.6 pulgadas, procesador Intel Core i7, 16GB RAM, 512GB SSD. Perfecta para profesionales y estudiantes.', 
1299.99, 8, 'gallery_performance.png');

-- Producto 3: Software de Galería
INSERT INTO tbl_product (pd_id, cat_id, pd_name, pd_description, pd_price, pd_qty, pd_image) VALUES
(3, 4, 'Software de Galería Profesional', 
'Software completo para gestión de galerías de imágenes. Incluye herramientas de edición, organización y presentación. Licencia permanente con actualizaciones gratuitas.', 
149.99, 50, 'gallery_software.png');

-- Producto 4: iPad para Shopping
INSERT INTO tbl_product (pd_id, cat_id, pd_name, pd_description, pd_price, pd_qty, pd_image) VALUES
(4, 2, 'iPad Air 2024', 
'iPad Air última generación, perfecta para navegación y compras online. Pantalla liquid retina de 10.9 pulgadas, chip M1, 64GB de almacenamiento. Incluye Apple Pencil compatible.', 
699.99, 12, 'home-shopipad.png');

-- Producto 5: iPhone
INSERT INTO tbl_product (pd_id, cat_id, pd_name, pd_description, pd_price, pd_qty, pd_image) VALUES
(5, 2, 'iPhone 15 Pro', 
'iPhone 15 Pro con pantalla Super Retina XDR de 6.1 pulgadas, chip A17 Pro, sistema de cámaras Pro, 256GB de almacenamiento. Disponible en titanio natural.', 
1199.99, 20, 'home-shopphone.png');

-- Producto 6: iPod Clásico
INSERT INTO tbl_product (pd_id, cat_id, pd_name, pd_description, pd_price, pd_qty, pd_image) VALUES
(6, 1, 'iPod Classic Edition', 
'Reproductor de música clásico renovado. 160GB de almacenamiento para hasta 40,000 canciones. Pantalla a color, batería de larga duración. Edición limitada para coleccionistas.', 
349.99, 5, 'home-shopipod.png');

-- Producto 7: MacBook Pro
INSERT INTO tbl_product (pd_id, cat_id, pd_name, pd_description, pd_price, pd_qty, pd_image) VALUES
(7, 3, 'MacBook Pro 16" M3', 
'MacBook Pro 16 pulgadas con chip M3 Pro. 18GB de memoria unificada, 512GB SSD, pantalla Liquid Retina XDR. Ideal para profesionales creativos y desarrolladores.', 
2499.99, 6, 'home-shopmac.png');

-- Producto 8: Dispositivo de Rendimiento
INSERT INTO tbl_product (pd_id, cat_id, pd_name, pd_description, pd_price, pd_qty, pd_image) VALUES
(8, 1, 'Monitor Gaming 4K', 
'Monitor de alto rendimiento 4K UHD de 27 pulgadas. Tasa de refresco de 144Hz, tiempo de respuesta 1ms, HDR400. Perfecto para gaming y diseño gráfico profesional.', 
599.99, 10, 'gallery_performance.png');

-- Producto 9: Software Premium
INSERT INTO tbl_product (pd_id, cat_id, pd_name, pd_description, pd_price, pd_qty, pd_image) VALUES
(9, 4, 'Suite Creative Cloud', 
'Licencia anual de Adobe Creative Cloud completa. Incluye Photoshop, Illustrator, Premiere Pro, After Effects y más. Ideal para profesionales creativos.', 
599.99, 100, 'gallery_software.png');

-- Producto 10: Equipo para Hogar
INSERT INTO tbl_product (pd_id, cat_id, pd_name, pd_description, pd_price, pd_qty, pd_image) VALUES
(10, 5, 'HomePod Mini', 
'Altavoz inteligente HomePod Mini. Sonido de 360 grados, Siri integrado, control de casa inteligente. Compatible con Apple Music y más servicios de streaming.', 
99.99, 30, 'home-shopipod.png');

-- ============================================================
-- 4. INSERTAR ÓRDENES DE EJEMPLO
-- ============================================================

-- Orden 1 - Usuario testuser (Completada)
INSERT INTO tbl_order (od_id, user_id, od_date, od_status, od_name, od_address, od_city, od_postal_code, od_cost) VALUES
(1, 2, '2026-01-15', 'Completed', 'Test User', 'Av. Principal 123', 'Latacunga', '050150', '1499.98');

-- Items de la Orden 1
INSERT INTO tbl_order_item (od_id, pd_id, od_qty) VALUES
(1, 2, 1),  -- Laptop Profesional x1
(1, 4, 1);  -- iPad Air x1

-- Orden 2 - Usuario cliente1 (Nueva)
INSERT INTO tbl_order (od_id, user_id, od_date, od_status, od_name, od_address, od_city, od_postal_code, od_cost) VALUES
(2, 3, '2026-01-25', 'New', 'Cliente Uno', 'Calle Secundaria 456', 'Quito', '170150', '1899.98');

-- Items de la Orden 2
INSERT INTO tbl_order_item (od_id, pd_id, od_qty) VALUES
(2, 5, 1),  -- iPhone 15 Pro x1
(2, 1, 1);  -- Tablet OSX x1

-- Orden 3 - Usuario testuser (En envío)
INSERT INTO tbl_order (od_id, user_id, od_date, od_status, od_name, od_address, od_city, od_postal_code, od_cost) VALUES
(3, 2, '2026-01-23', 'Shipped', 'Test User', 'Av. Principal 123', 'Latacunga', '050150', '2599.98');

-- Items de la Orden 3
INSERT INTO tbl_order_item (od_id, pd_id, od_qty) VALUES
(3, 7, 1),  -- MacBook Pro x1
(3, 10, 1); -- HomePod Mini x1