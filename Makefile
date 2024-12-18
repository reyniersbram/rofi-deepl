DESTDIR = /usr/local/bin

install:
	@echo "Installing..."
	@install rofi-deepl $(DESTDIR)
	@cp rofi-deepl.conf /etc/rofi-deepl.conf
	@cp deepl_logo.png /usr/share/pixmaps/rofi-deepl.png

uninstall:
	@echo "Uninstalling..."
	@rm -f $(DESTDIR)/rofi-deepl
	@rm -f /etc/rofi-deepl.conf
	@rm -f /usr/share/pixmaps/rofi-deepl.png
