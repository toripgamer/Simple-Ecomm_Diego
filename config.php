<?php
/**
 * Configuración de Base de Datos con Variables de Entorno
 * Compatible con Render + Railway
 */

// Configuración de errores (solo en desarrollo)
ini_set('display_errors', 0);  // Cambiar a 0 en producción
error_reporting(E_ALL);

// Obtener credenciales desde variables de entorno
// Si no existen las variables, usa valores por defecto (para desarrollo local)
define('DB_HOST', getenv("DB_HOST") ?: "localhost");
define('DB_USER', getenv("DB_USER") ?: "root");
define('DB_PASSWORD', getenv("DB_PASSWORD") ?: "");
define('DB_DATABASE', getenv("DB_DATABASE") ?: "simple_ecomm");
define('DB_PORT', getenv("DB_PORT") ?: "3306");

// Crear conexión con puerto personalizado
$conn = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE, DB_PORT);

// Verificar conexión
if (!$conn) {
    die("Error de conexión: " . mysqli_connect_error());
}

// Establecer charset UTF-8
mysqli_set_charset($conn, "utf8mb4");

