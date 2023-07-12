TARGET      = rofi-tt

PREFIX     ?= /usr/local
INSTALL     = install -Dm755
RM         ?= rm -f

DESTINATIONBIN = $(DESTDIR)$(PREFIX)/bin/


all: $(TARGET)

install: $(TARGET)
	
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	$(INSTALL) $(TARGET) $(DESTINATIONBIN)$(TARGET)
	install -d $(DESTDIR)$(PREFIX)/share/rofi/themes
	install -Cm644 assets/* $(DESTDIR)$(PREFIX)/share/rofi/themes

uninstall: $(TARGET)

	rm $(DESTINATIONBIN)$(TARGET)
	rm -rf $(DESTDIR)$(PREFIX)/share/rofi/themes/trashtaste.rasi
	rm -rf $(DESTDIR)$(PREFIX)/share/rofi/themes/bin.jpg
