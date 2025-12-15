# Rick & Morty Encyclopedia

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## 🚀 Cómo ejecutar el proyecto
### 1️⃣ Requisitos previos

Asegúrate de tener instalado:
Flutter SDK
Dart
Android Studio o Visual Studio Code
Un emulador Android o un dispositivo físico conectado

Puedes verificar que todo esté correctamente instalado con:
flutter doctor

### 2️⃣ Clonar el repositorio

Si el proyecto viene de un repositorio, clónalo:
git clone <URL_DEL_REPOSITORIO>
cd app1

### 3️⃣ Instalar dependencias

Dentro de la carpeta del proyecto, ejecuta:
flutter pub get
Esto descargará todas las dependencias necesarias.

### 4️⃣ Ejecutar la aplicación

Asegúrate de tener un emulador activo o un dispositivo conectado y ejecuta:
flutter run
Flutter compilará el proyecto y abrirá la app en el dispositivo seleccionado.

### 6️⃣ Detener la aplicación

Para detener la ejecución, presiona:
Ctrl + C

## Documentación - Mi proceso de desarrollo.
- Se creó el proyecto y se configuró un dispositivo Pixel 7 para emular la aplicación durante el desarrollo.

- Se comenzó con el diseño y creación del widget CharacterCard, el cual muestra la imagen, el nombre y una breve descripción del personaje.
Una vez definido su diseño, se convirtió en un widget reutilizable para poder usarlo de forma dinámica.

- Se creó la pantalla principal donde se muestran las tarjetas de los personajes, utilizando un Wrap para acomodarlas dinámicamente en forma de grid, adaptándose al tamaño de la pantalla.

- Posteriormente, se implementó un Provider para realizar la llamada a la API y obtener la lista de personajes.

- Con el provider configurado, se adaptó CharactersScreen para mostrar dinámicamente las CharacterCard según la cantidad de personajes devueltos por la API.

- Una vez finalizada la pantalla principal, se diseñó la pantalla DetailsScreen, encargada de mostrar la información detallada de un solo personaje.

- Se instaló y configuró go_router para la navegación entre pantallas, enviando la información del personaje seleccionado a DetailsScreen.

- Finalmente, se implementó una funcionalidad de búsqueda, que permite filtrar la lista de personajes conforme el usuario escribe en el buscador, mostrando únicamente los resultados que coinciden.








