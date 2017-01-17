boost: LIBS += -lboost_serialization
expat: LIBS += -lexpat
expat: PKGCONFIG -= expat
#cairo: PKGCONFIG -= cairo
cairo {
        PKGCONFIG += cairo
        LIBS -=  $$system(pkg-config --variable=libdir cairo)/libcairo.a
}

shiboken {
        PKGCONFIG -= shiboken
        INCLUDEPATH += /usr/include/shiboken
        LIBS += -lshiboken-python2.7
}

pyside {
  PKGCONFIG += pyside
  
  INCLUDEPATH += $$system(env PKG_CONFIG_PATH=$$PYSIDE_PKG_CONFIG_PATH pkg-config --variable=includedir pyside)/QtCore
  INCLUDEPATH += $$system(env PKG_CONFIG_PATH=$$PYSIDE_PKG_CONFIG_PATH pkg-config --variable=includedir pyside)/QtGui

  INCLUDEPATH += $$system(pkg-config --variable=includedir QtGui)
}

