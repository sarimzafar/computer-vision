include_directories(include ../core/include)
ADD_DEFINITIONS("-DBOOST_LOG_DYN_LINK")
add_library(TargetIdentification src/target_identifier.cpp src/object_detector.cpp src/canny_contour_creator.cpp src/k_means_filter.cpp src/filter.cpp src/qr_identifier.cpp)
target_link_libraries(TargetIdentification ${OpenCV_LIBS} ${Boost_LIBRARIES} ${ZBAR_LIBRARIES} zbar Core)
message("ZBAR: " + ${ZBAR_LIBRARIES})
add_subdirectory("test")
