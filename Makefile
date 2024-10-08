CXX = g++                
CXXFLAGS = -Iinclude    
LIB_NAME = libcalculator.a   
TARGET = calculator         

# ������� ��� ����� ��� �����
all: $(LIB_NAME) $(TARGET)

# ������� ��� ��������� ��������
$(LIB_NAME): src/calculator.cpp
	$(CXX) -c src/calculator.cpp $(CXXFLAGS) -o calculator.o
	ar rcs $(LIB_NAME) calculator.o

# ������� ��� ��������� ������������ �����
$(TARGET): src/main.cpp $(LIB_NAME)
	$(CXX) src/main.cpp -L. -lcalculator $(CXXFLAGS) -o $(TARGET)

# ������ ��� �������� (clean)
clean:
	rm -f *.o *.a $(TARGET)
