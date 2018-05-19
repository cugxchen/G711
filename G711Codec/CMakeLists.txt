cmake_minimum_required(VERSION 3.10)
project(G711Codec)

set(CMAKE_CXX_STANDARD 11)


aux_source_directory(src/StartUp/ FILE)
aux_source_directory(src/Public/ FILE)
aux_source_directory(src/Codec/ FILE)
aux_source_directory(src/Codec/G711 FILE)

ADD_EXECUTABLE(G711Codec ${FILE})