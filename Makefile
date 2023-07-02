TARGET      = rofi-tt
SRC        := src/notification.vala src/dbus.vala src/tiramisu.vala

PREFIX     ?= /usr/local
INSTALL     = install -Dm755
RM         ?= rm -f
PKG_CONFIG ?= pkg-config

VALAC      ?= valac
CFLAGS     += -Wall -Wno-unused-value
IFLAGS      = --pkg gio-2.0
LFLAGS      = `$(PKG_CONFIG) --libs glib-2.0 gio-2.0`


all: $(TARGET)

install: $(TARGET)



	mkdir -p $(DESTDIR)$(PREFIX)/bin
	$(INSTALL) $(TARGET) $(DESTDIR)$(PREFIX)/bin/$(TARGET)

	mkdir -p $(DESTDIR)$(PREFIX)/share/rofi/themes/
	install -Dm644 trashtaste.rasi $(DESTDIR)$(PREFIX)/share/rofi/themes/
	install -Dm644 bin.jpg $(DESTDIR)$(PREFIX)/share/rofi/themes/
uninstall: $(TARGET)
	rm -rf $(DESTDIR)$(PREFIX)/bin/$(TARGET)

clean:
	$(RM) ./rofi-tt
