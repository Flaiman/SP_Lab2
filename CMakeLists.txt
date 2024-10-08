cmake_minimum_required(VERSION 3.10)
project(CalculatorProject CXX)

set(CMAKE_CXX_STANDARD 11)

# Створюємо бібліотеку
add_library(calculator STATIC src/calculator.cpp)

# Вказуємо директорію з заголовковими файлами
target_include_directories(calculator PUBLIC ${PROJECT_SOURCE_DIR}/include)

# Створюємо виконуваний файл
add_executable(calculator_exec src/main.cpp)

# Лінкуємо виконуваний файл з бібліотекою
target_link_libraries(calculator_exec calculator)

# Вказуємо генерацію для Ninja
set(CMAKE_GENERATOR "Ninja")
