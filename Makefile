AutomatedMakefile = am
CC = g++

LAB_13_PATH = /$(DRIVE_LETTER)/13-Heap_Skew
GTKMM_PATH = /$(DRIVE_LETTER)/MinGW/gtkmm

INC_DIRS = -I$(LAB_13_PATH)/CSC2110/ -I$(LAB_13_PATH)/GUI/ -I$(GTKMM_PATH)/include/gtkmm-2.4 -I$(GTKMM_PATH)/lib/gtkmm-2.4/include -I$(GTKMM_PATH)/include/atkmm-1.6 -I$(GTKMM_PATH)/include/giomm-2.4 -I$(GTKMM_PATH)/lib/giomm-2.4/include -I$(GTKMM_PATH)/include/pangomm-1.4 -I$(GTKMM_PATH)/lib/pangomm-1.4/include -I$(GTKMM_PATH)/include/gtk-2.0 -I$(GTKMM_PATH)/include/gdkmm-2.4 -I$(GTKMM_PATH)/lib/gdkmm-2.4/include -I$(GTKMM_PATH)/include/atk-1.0 -I$(GTKMM_PATH)/include/glibmm-2.4 -I$(GTKMM_PATH)/lib/glibmm-2.4/include -I$(GTKMM_PATH)/include/glib-2.0 -I$(GTKMM_PATH)/lib/glib-2.0/include -I$(GTKMM_PATH)/include/sigc++-2.0 -I$(GTKMM_PATH)/lib/sigc++-2.0/include -I$(GTKMM_PATH)/include/cairomm-1.0 -I$(GTKMM_PATH)/lib/cairomm-1.0/include -I$(GTKMM_PATH)/include/pango-1.0 -I$(GTKMM_PATH)/include/cairo -I$(GTKMM_PATH)/include -I$(GTKMM_PATH)/include/freetype2 -I$(GTKMM_PATH)/include/libpng14 -I$(GTKMM_PATH)/lib/gtk-2.0/include -I$(GTKMM_PATH)/include/gdk-pixbuf-2.0
LIB_DIRS = -L$(LAB_13_PATH)/CSC2110/ -L$(LAB_13_PATH)/GUI/ -L$(GTKMM_PATH)/lib
LIBS = -lCSC2110 -lgui -lgtkmm-2.4 -latkmm-1.6 -lgdkmm-2.4 -lgiomm-2.4 -lpangomm-1.4 -lgtk-win32-2.0 -lglibmm-2.4 -lcairomm-1.0 -lsigc-2.0 -lgdk-win32-2.0 -latk-1.0 -lgio-2.0 -lpangowin32-1.0 -lpangocairo-1.0 -lgdk_pixbuf-2.0 -lpng14 -lpango-1.0 -lcairo -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lglib-2.0 -lintl

COMPILE = $(CC) $(INC_DIRS) -c
LINK = $(CC) $(LIB_DIRS) -o



