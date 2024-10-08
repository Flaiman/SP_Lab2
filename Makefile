CXX = g++                
CXXFLAGS = -Iinclude    
LIB_NAME = libcalculator.a   
TARGET = calculator         

# Правило для збірки всіх файлів
all: $(LIB_NAME) $(TARGET)

# Правило для створення бібліотеки
$(LIB_NAME): src/calculator.cpp
	$(CXX) -c src/calculator.cpp $(CXXFLAGS) -o calculator.o
	ar rcs $(LIB_NAME) calculator.o

# Правило для створення виконуваного файлу
$(TARGET): src/main.cpp $(LIB_NAME)
	$(CXX) src/main.cpp -L. -lcalculator $(CXXFLAGS) -o $(TARGET)

# Секція для очищення (clean)
clean:
	rm -f *.o *.a $(TARGET)
